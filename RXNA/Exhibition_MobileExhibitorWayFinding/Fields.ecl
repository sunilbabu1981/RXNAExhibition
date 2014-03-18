IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','sherpaID','CompanyName','ExhibitorID','action','count');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'sherpaID' => 3,'CompanyName' => 4,'ExhibitorID' => 5,'action' => 6,'count' => 7,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_sherpaID(SALT28.StrType s0) := s0;
EXPORT InValid_sherpaID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_sherpaID(UNSIGNED1 wh) := '';
EXPORT Make_CompanyName(SALT28.StrType s0) := s0;
EXPORT InValid_CompanyName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CompanyName(UNSIGNED1 wh) := '';
EXPORT Make_ExhibitorID(SALT28.StrType s0) := s0;
EXPORT InValid_ExhibitorID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ExhibitorID(UNSIGNED1 wh) := '';
EXPORT Make_action(SALT28.StrType s0) := s0;
EXPORT InValid_action(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_action(UNSIGNED1 wh) := '';
EXPORT Make_count(SALT28.StrType s0) := s0;
EXPORT InValid_count(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_count(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MobileExhibitorWayFinding;
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
    BOOLEAN Diff_Event;
    BOOLEAN Diff_Edition;
    BOOLEAN Diff_sherpaID;
    BOOLEAN Diff_CompanyName;
    BOOLEAN Diff_ExhibitorID;
    BOOLEAN Diff_action;
    BOOLEAN Diff_count;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_sherpaID := le.sherpaID <> ri.sherpaID;
    SELF.Diff_CompanyName := le.CompanyName <> ri.CompanyName;
    SELF.Diff_ExhibitorID := le.ExhibitorID <> ri.ExhibitorID;
    SELF.Diff_action := le.action <> ri.action;
    SELF.Diff_count := le.count <> ri.count;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_sherpaID,1,0)+ IF( SELF.Diff_CompanyName,1,0)+ IF( SELF.Diff_ExhibitorID,1,0)+ IF( SELF.Diff_action,1,0)+ IF( SELF.Diff_count,1,0);
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
    Count_Diff_Event := COUNT(GROUP,%Closest%.Diff_Event);
    Count_Diff_Edition := COUNT(GROUP,%Closest%.Diff_Edition);
    Count_Diff_sherpaID := COUNT(GROUP,%Closest%.Diff_sherpaID);
    Count_Diff_CompanyName := COUNT(GROUP,%Closest%.Diff_CompanyName);
    Count_Diff_ExhibitorID := COUNT(GROUP,%Closest%.Diff_ExhibitorID);
    Count_Diff_action := COUNT(GROUP,%Closest%.Diff_action);
    Count_Diff_count := COUNT(GROUP,%Closest%.Diff_count);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
