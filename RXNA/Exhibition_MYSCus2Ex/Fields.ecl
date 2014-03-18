IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'ExhibitorID','CUSTOMERID','EVENT','EDITION');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'ExhibitorID' => 1,'CUSTOMERID' => 2,'EVENT' => 3,'EDITION' => 4,0);
//Individual field level validation
EXPORT Make_ExhibitorID(SALT28.StrType s0) := s0;
EXPORT InValid_ExhibitorID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ExhibitorID(UNSIGNED1 wh) := '';
EXPORT Make_CUSTOMERID(SALT28.StrType s0) := s0;
EXPORT InValid_CUSTOMERID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CUSTOMERID(UNSIGNED1 wh) := '';
EXPORT Make_EVENT(SALT28.StrType s0) := s0;
EXPORT InValid_EVENT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EVENT(UNSIGNED1 wh) := '';
EXPORT Make_EDITION(SALT28.StrType s0) := s0;
EXPORT InValid_EDITION(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EDITION(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSCus2Ex;
//Find those highly occuring pivot values to remove them from consideration
#uniquename(tr)
  %tr% := table(in_left+in_right,{ val := pivot_exp; });
#uniquename(r1)
  %r1% := record
    %tr%.val;    unsigned Cnt := COUNT(GROUP);
  end;
#uniquename(t1)
  %t1% := table(%tr%,%r1%,val,local); // Pre-aggregate before distribute
#uniquename(r2)
  %r2% := record
    %t1%.val;    unsigned Cnt := SUM(GROUP,%t1%.Cnt);
  end;
#uniquename(t2)
  %t2% := table(%t1%,%r2%,val); // Now do global aggregate
Bad_Pivots := %t2%(Cnt>100);
#uniquename(dl)
  %dl% := RECORD
    BOOLEAN Diff_ExhibitorID;
    BOOLEAN Diff_CUSTOMERID;
    BOOLEAN Diff_EVENT;
    BOOLEAN Diff_EDITION;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_ExhibitorID := le.ExhibitorID <> ri.ExhibitorID;
    SELF.Diff_CUSTOMERID := le.CUSTOMERID <> ri.CUSTOMERID;
    SELF.Diff_EVENT := le.EVENT <> ri.EVENT;
    SELF.Diff_EDITION := le.EDITION <> ri.EDITION;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_ExhibitorID,1,0)+ IF( SELF.Diff_CUSTOMERID,1,0)+ IF( SELF.Diff_EVENT,1,0)+ IF( SELF.Diff_EDITION,1,0);
  END;
// Now need to remove bad pivots from comparison
#uniquename(L)
  %L% := JOIN(in_left,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(R)
  %R% := JOIN(in_right,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(DiffL)
  %DiffL% := JOIN(%L%,%R%,evaluate(left,pivot_exp)=evaluate(right,pivot_exp),%fd%(left,right),hash);
#uniquename(Closest)
  %Closest% := DEDUP(SORT(%DiffL%,Val,Num_Diffs,local),Val,local); // Join will have distributed by pivot_exp
#uniquename(AggRec)
  %AggRec% := RECORD
    Count_Diff_ExhibitorID := COUNT(GROUP,%Closest%.Diff_ExhibitorID);
    Count_Diff_CUSTOMERID := COUNT(GROUP,%Closest%.Diff_CUSTOMERID);
    Count_Diff_EVENT := COUNT(GROUP,%Closest%.Diff_EVENT);
    Count_Diff_EDITION := COUNT(GROUP,%Closest%.Diff_EDITION);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
