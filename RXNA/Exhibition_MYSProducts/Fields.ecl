IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','PROD_ID','PARENT_PRODUCT','PRODUCT','EXHIBITORID','EXHIBITOR','BOOTH');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'PROD_ID' => 3,'PARENT_PRODUCT' => 4,'PRODUCT' => 5,'EXHIBITORID' => 6,'EXHIBITOR' => 7,'BOOTH' => 8,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_PROD_ID(SALT28.StrType s0) := s0;
EXPORT InValid_PROD_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PROD_ID(UNSIGNED1 wh) := '';
EXPORT Make_PARENT_PRODUCT(SALT28.StrType s0) := s0;
EXPORT InValid_PARENT_PRODUCT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PARENT_PRODUCT(UNSIGNED1 wh) := '';
EXPORT Make_PRODUCT(SALT28.StrType s0) := s0;
EXPORT InValid_PRODUCT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PRODUCT(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITORID(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITORID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITORID(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSProductS;
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
    BOOLEAN Diff_PROD_ID;
    BOOLEAN Diff_PARENT_PRODUCT;
    BOOLEAN Diff_PRODUCT;
    BOOLEAN Diff_EXHIBITORID;
    BOOLEAN Diff_EXHIBITOR;
    BOOLEAN Diff_BOOTH;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_PROD_ID := le.PROD_ID <> ri.PROD_ID;
    SELF.Diff_PARENT_PRODUCT := le.PARENT_PRODUCT <> ri.PARENT_PRODUCT;
    SELF.Diff_PRODUCT := le.PRODUCT <> ri.PRODUCT;
    SELF.Diff_EXHIBITORID := le.EXHIBITORID <> ri.EXHIBITORID;
    SELF.Diff_EXHIBITOR := le.EXHIBITOR <> ri.EXHIBITOR;
    SELF.Diff_BOOTH := le.BOOTH <> ri.BOOTH;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_PROD_ID,1,0)+ IF( SELF.Diff_PARENT_PRODUCT,1,0)+ IF( SELF.Diff_PRODUCT,1,0)+ IF( SELF.Diff_EXHIBITORID,1,0)+ IF( SELF.Diff_EXHIBITOR,1,0)+ IF( SELF.Diff_BOOTH,1,0);
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
    Count_Diff_PROD_ID := COUNT(GROUP,%Closest%.Diff_PROD_ID);
    Count_Diff_PARENT_PRODUCT := COUNT(GROUP,%Closest%.Diff_PARENT_PRODUCT);
    Count_Diff_PRODUCT := COUNT(GROUP,%Closest%.Diff_PRODUCT);
    Count_Diff_EXHIBITORID := COUNT(GROUP,%Closest%.Diff_EXHIBITORID);
    Count_Diff_EXHIBITOR := COUNT(GROUP,%Closest%.Diff_EXHIBITOR);
    Count_Diff_BOOTH := COUNT(GROUP,%Closest%.Diff_BOOTH);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
