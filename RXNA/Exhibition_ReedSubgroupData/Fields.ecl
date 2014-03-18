IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'SHOW_KEY','GROUP_ID','SUBGROUP_ID','DESCRIPTION','USER_ID','LAST_UPDATE_DT','PM_TYPE','DISCOUNT_PCT');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'SHOW_KEY' => 1,'GROUP_ID' => 2,'SUBGROUP_ID' => 3,'DESCRIPTION' => 4,'USER_ID' => 5,'LAST_UPDATE_DT' => 6,'PM_TYPE' => 7,'DISCOUNT_PCT' => 8,0);
//Individual field level validation
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_GROUP_ID(SALT28.StrType s0) := s0;
EXPORT InValid_GROUP_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_GROUP_ID(UNSIGNED1 wh) := '';
EXPORT Make_SUBGROUP_ID(SALT28.StrType s0) := s0;
EXPORT InValid_SUBGROUP_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SUBGROUP_ID(UNSIGNED1 wh) := '';
EXPORT Make_DESCRIPTION(SALT28.StrType s0) := s0;
EXPORT InValid_DESCRIPTION(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DESCRIPTION(UNSIGNED1 wh) := '';
EXPORT Make_USER_ID(SALT28.StrType s0) := s0;
EXPORT InValid_USER_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_USER_ID(UNSIGNED1 wh) := '';
EXPORT Make_LAST_UPDATE_DT(SALT28.StrType s0) := s0;
EXPORT InValid_LAST_UPDATE_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LAST_UPDATE_DT(UNSIGNED1 wh) := '';
EXPORT Make_PM_TYPE(SALT28.StrType s0) := s0;
EXPORT InValid_PM_TYPE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PM_TYPE(UNSIGNED1 wh) := '';
EXPORT Make_DISCOUNT_PCT(SALT28.StrType s0) := s0;
EXPORT InValid_DISCOUNT_PCT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DISCOUNT_PCT(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ReedSubgroupData;
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
    BOOLEAN Diff_SHOW_KEY;
    BOOLEAN Diff_GROUP_ID;
    BOOLEAN Diff_SUBGROUP_ID;
    BOOLEAN Diff_DESCRIPTION;
    BOOLEAN Diff_USER_ID;
    BOOLEAN Diff_LAST_UPDATE_DT;
    BOOLEAN Diff_PM_TYPE;
    BOOLEAN Diff_DISCOUNT_PCT;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Diff_GROUP_ID := le.GROUP_ID <> ri.GROUP_ID;
    SELF.Diff_SUBGROUP_ID := le.SUBGROUP_ID <> ri.SUBGROUP_ID;
    SELF.Diff_DESCRIPTION := le.DESCRIPTION <> ri.DESCRIPTION;
    SELF.Diff_USER_ID := le.USER_ID <> ri.USER_ID;
    SELF.Diff_LAST_UPDATE_DT := le.LAST_UPDATE_DT <> ri.LAST_UPDATE_DT;
    SELF.Diff_PM_TYPE := le.PM_TYPE <> ri.PM_TYPE;
    SELF.Diff_DISCOUNT_PCT := le.DISCOUNT_PCT <> ri.DISCOUNT_PCT;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_SHOW_KEY,1,0)+ IF( SELF.Diff_GROUP_ID,1,0)+ IF( SELF.Diff_SUBGROUP_ID,1,0)+ IF( SELF.Diff_DESCRIPTION,1,0)+ IF( SELF.Diff_USER_ID,1,0)+ IF( SELF.Diff_LAST_UPDATE_DT,1,0)+ IF( SELF.Diff_PM_TYPE,1,0)+ IF( SELF.Diff_DISCOUNT_PCT,1,0);
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
    Count_Diff_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_SHOW_KEY);
    Count_Diff_GROUP_ID := COUNT(GROUP,%Closest%.Diff_GROUP_ID);
    Count_Diff_SUBGROUP_ID := COUNT(GROUP,%Closest%.Diff_SUBGROUP_ID);
    Count_Diff_DESCRIPTION := COUNT(GROUP,%Closest%.Diff_DESCRIPTION);
    Count_Diff_USER_ID := COUNT(GROUP,%Closest%.Diff_USER_ID);
    Count_Diff_LAST_UPDATE_DT := COUNT(GROUP,%Closest%.Diff_LAST_UPDATE_DT);
    Count_Diff_PM_TYPE := COUNT(GROUP,%Closest%.Diff_PM_TYPE);
    Count_Diff_DISCOUNT_PCT := COUNT(GROUP,%Closest%.Diff_DISCOUNT_PCT);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
