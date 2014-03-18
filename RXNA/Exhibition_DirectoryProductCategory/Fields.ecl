IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'iProductCategoryId','vchProductCategoryDesc','vchHeadingDesc');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'iProductCategoryId' => 1,'vchProductCategoryDesc' => 2,'vchHeadingDesc' => 3,0);
//Individual field level validation
EXPORT Make_iProductCategoryId(SALT28.StrType s0) := s0;
EXPORT InValid_iProductCategoryId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iProductCategoryId(UNSIGNED1 wh) := '';
EXPORT Make_vchProductCategoryDesc(SALT28.StrType s0) := s0;
EXPORT InValid_vchProductCategoryDesc(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchProductCategoryDesc(UNSIGNED1 wh) := '';
EXPORT Make_vchHeadingDesc(SALT28.StrType s0) := s0;
EXPORT InValid_vchHeadingDesc(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchHeadingDesc(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_DirectoryProductCategory;
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
    BOOLEAN Diff_iProductCategoryId;
    BOOLEAN Diff_vchProductCategoryDesc;
    BOOLEAN Diff_vchHeadingDesc;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_iProductCategoryId := le.iProductCategoryId <> ri.iProductCategoryId;
    SELF.Diff_vchProductCategoryDesc := le.vchProductCategoryDesc <> ri.vchProductCategoryDesc;
    SELF.Diff_vchHeadingDesc := le.vchHeadingDesc <> ri.vchHeadingDesc;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_iProductCategoryId,1,0)+ IF( SELF.Diff_vchProductCategoryDesc,1,0)+ IF( SELF.Diff_vchHeadingDesc,1,0);
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
    Count_Diff_iProductCategoryId := COUNT(GROUP,%Closest%.Diff_iProductCategoryId);
    Count_Diff_vchProductCategoryDesc := COUNT(GROUP,%Closest%.Diff_vchProductCategoryDesc);
    Count_Diff_vchHeadingDesc := COUNT(GROUP,%Closest%.Diff_vchHeadingDesc);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
