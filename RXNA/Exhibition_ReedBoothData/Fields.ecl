IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'ORG_NAME','FDC_CUSTOMER_NBR','BOOTH_ID','SHOW_KEY','KEYVAL','BOOTH_ID_1','WIDTH','DEPTH','MAINTENANCE','QTY_SIGNS','SIGN_LINE1','SIGN_LINE2','TARGET_DT','NO_SIGN_IND','SIGN_PRINTED_IND','USER_ID','LAST_UPDATE_DT','BOOTH_TYPE_ID','PARENT_BOOTH_KEY','FACILITY_KEY','LOCATION_KEY','EXHIBITOR_ID','COMPETITOR_KEY','AREA','OWNER_TYPE','PROGRAM_ACCT_IND','USE_PRIMARY_CARD_IND','SOURCE_KEY','SORTABLE_BOOTH','RECOMMEND_CNT','CREATE_DT');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'ORG_NAME' => 1,'FDC_CUSTOMER_NBR' => 2,'BOOTH_ID' => 3,'SHOW_KEY' => 4,'KEYVAL' => 5,'BOOTH_ID_1' => 6,'WIDTH' => 7,'DEPTH' => 8,'MAINTENANCE' => 9,'QTY_SIGNS' => 10,'SIGN_LINE1' => 11,'SIGN_LINE2' => 12,'TARGET_DT' => 13,'NO_SIGN_IND' => 14,'SIGN_PRINTED_IND' => 15,'USER_ID' => 16,'LAST_UPDATE_DT' => 17,'BOOTH_TYPE_ID' => 18,'PARENT_BOOTH_KEY' => 19,'FACILITY_KEY' => 20,'LOCATION_KEY' => 21,'EXHIBITOR_ID' => 22,'COMPETITOR_KEY' => 23,'AREA' => 24,'OWNER_TYPE' => 25,'PROGRAM_ACCT_IND' => 26,'USE_PRIMARY_CARD_IND' => 27,'SOURCE_KEY' => 28,'SORTABLE_BOOTH' => 29,'RECOMMEND_CNT' => 30,'CREATE_DT' => 31,0);
//Individual field level validation
EXPORT Make_ORG_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_ORG_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ORG_NAME(UNSIGNED1 wh) := '';
EXPORT Make_FDC_CUSTOMER_NBR(SALT28.StrType s0) := s0;
EXPORT InValid_FDC_CUSTOMER_NBR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FDC_CUSTOMER_NBR(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH_ID(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH_ID(UNSIGNED1 wh) := '';
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_KEYVAL(SALT28.StrType s0) := s0;
EXPORT InValid_KEYVAL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_KEYVAL(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH_ID_1(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH_ID_1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH_ID_1(UNSIGNED1 wh) := '';
EXPORT Make_WIDTH(SALT28.StrType s0) := s0;
EXPORT InValid_WIDTH(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_WIDTH(UNSIGNED1 wh) := '';
EXPORT Make_DEPTH(SALT28.StrType s0) := s0;
EXPORT InValid_DEPTH(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DEPTH(UNSIGNED1 wh) := '';
EXPORT Make_MAINTENANCE(SALT28.StrType s0) := s0;
EXPORT InValid_MAINTENANCE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_MAINTENANCE(UNSIGNED1 wh) := '';
EXPORT Make_QTY_SIGNS(SALT28.StrType s0) := s0;
EXPORT InValid_QTY_SIGNS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_QTY_SIGNS(UNSIGNED1 wh) := '';
EXPORT Make_SIGN_LINE1(SALT28.StrType s0) := s0;
EXPORT InValid_SIGN_LINE1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SIGN_LINE1(UNSIGNED1 wh) := '';
EXPORT Make_SIGN_LINE2(SALT28.StrType s0) := s0;
EXPORT InValid_SIGN_LINE2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SIGN_LINE2(UNSIGNED1 wh) := '';
EXPORT Make_TARGET_DT(SALT28.StrType s0) := s0;
EXPORT InValid_TARGET_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TARGET_DT(UNSIGNED1 wh) := '';
EXPORT Make_NO_SIGN_IND(SALT28.StrType s0) := s0;
EXPORT InValid_NO_SIGN_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_NO_SIGN_IND(UNSIGNED1 wh) := '';
EXPORT Make_SIGN_PRINTED_IND(SALT28.StrType s0) := s0;
EXPORT InValid_SIGN_PRINTED_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SIGN_PRINTED_IND(UNSIGNED1 wh) := '';
EXPORT Make_USER_ID(SALT28.StrType s0) := s0;
EXPORT InValid_USER_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_USER_ID(UNSIGNED1 wh) := '';
EXPORT Make_LAST_UPDATE_DT(SALT28.StrType s0) := s0;
EXPORT InValid_LAST_UPDATE_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LAST_UPDATE_DT(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH_TYPE_ID(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH_TYPE_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH_TYPE_ID(UNSIGNED1 wh) := '';
EXPORT Make_PARENT_BOOTH_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_PARENT_BOOTH_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PARENT_BOOTH_KEY(UNSIGNED1 wh) := '';
EXPORT Make_FACILITY_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_FACILITY_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FACILITY_KEY(UNSIGNED1 wh) := '';
EXPORT Make_LOCATION_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_LOCATION_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LOCATION_KEY(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR_ID(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR_ID(UNSIGNED1 wh) := '';
EXPORT Make_COMPETITOR_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_COMPETITOR_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COMPETITOR_KEY(UNSIGNED1 wh) := '';
EXPORT Make_AREA(SALT28.StrType s0) := s0;
EXPORT InValid_AREA(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_AREA(UNSIGNED1 wh) := '';
EXPORT Make_OWNER_TYPE(SALT28.StrType s0) := s0;
EXPORT InValid_OWNER_TYPE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OWNER_TYPE(UNSIGNED1 wh) := '';
EXPORT Make_PROGRAM_ACCT_IND(SALT28.StrType s0) := s0;
EXPORT InValid_PROGRAM_ACCT_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PROGRAM_ACCT_IND(UNSIGNED1 wh) := '';
EXPORT Make_USE_PRIMARY_CARD_IND(SALT28.StrType s0) := s0;
EXPORT InValid_USE_PRIMARY_CARD_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_USE_PRIMARY_CARD_IND(UNSIGNED1 wh) := '';
EXPORT Make_SOURCE_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SOURCE_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SOURCE_KEY(UNSIGNED1 wh) := '';
EXPORT Make_SORTABLE_BOOTH(SALT28.StrType s0) := s0;
EXPORT InValid_SORTABLE_BOOTH(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SORTABLE_BOOTH(UNSIGNED1 wh) := '';
EXPORT Make_RECOMMEND_CNT(SALT28.StrType s0) := s0;
EXPORT InValid_RECOMMEND_CNT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_RECOMMEND_CNT(UNSIGNED1 wh) := '';
EXPORT Make_CREATE_DT(SALT28.StrType s0) := s0;
EXPORT InValid_CREATE_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CREATE_DT(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ReedBoothData;
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
    BOOLEAN Diff_ORG_NAME;
    BOOLEAN Diff_FDC_CUSTOMER_NBR;
    BOOLEAN Diff_BOOTH_ID;
    BOOLEAN Diff_SHOW_KEY;
    BOOLEAN Diff_KEYVAL;
    BOOLEAN Diff_BOOTH_ID_1;
    BOOLEAN Diff_WIDTH;
    BOOLEAN Diff_DEPTH;
    BOOLEAN Diff_MAINTENANCE;
    BOOLEAN Diff_QTY_SIGNS;
    BOOLEAN Diff_SIGN_LINE1;
    BOOLEAN Diff_SIGN_LINE2;
    BOOLEAN Diff_TARGET_DT;
    BOOLEAN Diff_NO_SIGN_IND;
    BOOLEAN Diff_SIGN_PRINTED_IND;
    BOOLEAN Diff_USER_ID;
    BOOLEAN Diff_LAST_UPDATE_DT;
    BOOLEAN Diff_BOOTH_TYPE_ID;
    BOOLEAN Diff_PARENT_BOOTH_KEY;
    BOOLEAN Diff_FACILITY_KEY;
    BOOLEAN Diff_LOCATION_KEY;
    BOOLEAN Diff_EXHIBITOR_ID;
    BOOLEAN Diff_COMPETITOR_KEY;
    BOOLEAN Diff_AREA;
    BOOLEAN Diff_OWNER_TYPE;
    BOOLEAN Diff_PROGRAM_ACCT_IND;
    BOOLEAN Diff_USE_PRIMARY_CARD_IND;
    BOOLEAN Diff_SOURCE_KEY;
    BOOLEAN Diff_SORTABLE_BOOTH;
    BOOLEAN Diff_RECOMMEND_CNT;
    BOOLEAN Diff_CREATE_DT;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_ORG_NAME := le.ORG_NAME <> ri.ORG_NAME;
    SELF.Diff_FDC_CUSTOMER_NBR := le.FDC_CUSTOMER_NBR <> ri.FDC_CUSTOMER_NBR;
    SELF.Diff_BOOTH_ID := le.BOOTH_ID <> ri.BOOTH_ID;
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Diff_KEYVAL := le.KEYVAL <> ri.KEYVAL;
    SELF.Diff_BOOTH_ID_1 := le.BOOTH_ID_1 <> ri.BOOTH_ID_1;
    SELF.Diff_WIDTH := le.WIDTH <> ri.WIDTH;
    SELF.Diff_DEPTH := le.DEPTH <> ri.DEPTH;
    SELF.Diff_MAINTENANCE := le.MAINTENANCE <> ri.MAINTENANCE;
    SELF.Diff_QTY_SIGNS := le.QTY_SIGNS <> ri.QTY_SIGNS;
    SELF.Diff_SIGN_LINE1 := le.SIGN_LINE1 <> ri.SIGN_LINE1;
    SELF.Diff_SIGN_LINE2 := le.SIGN_LINE2 <> ri.SIGN_LINE2;
    SELF.Diff_TARGET_DT := le.TARGET_DT <> ri.TARGET_DT;
    SELF.Diff_NO_SIGN_IND := le.NO_SIGN_IND <> ri.NO_SIGN_IND;
    SELF.Diff_SIGN_PRINTED_IND := le.SIGN_PRINTED_IND <> ri.SIGN_PRINTED_IND;
    SELF.Diff_USER_ID := le.USER_ID <> ri.USER_ID;
    SELF.Diff_LAST_UPDATE_DT := le.LAST_UPDATE_DT <> ri.LAST_UPDATE_DT;
    SELF.Diff_BOOTH_TYPE_ID := le.BOOTH_TYPE_ID <> ri.BOOTH_TYPE_ID;
    SELF.Diff_PARENT_BOOTH_KEY := le.PARENT_BOOTH_KEY <> ri.PARENT_BOOTH_KEY;
    SELF.Diff_FACILITY_KEY := le.FACILITY_KEY <> ri.FACILITY_KEY;
    SELF.Diff_LOCATION_KEY := le.LOCATION_KEY <> ri.LOCATION_KEY;
    SELF.Diff_EXHIBITOR_ID := le.EXHIBITOR_ID <> ri.EXHIBITOR_ID;
    SELF.Diff_COMPETITOR_KEY := le.COMPETITOR_KEY <> ri.COMPETITOR_KEY;
    SELF.Diff_AREA := le.AREA <> ri.AREA;
    SELF.Diff_OWNER_TYPE := le.OWNER_TYPE <> ri.OWNER_TYPE;
    SELF.Diff_PROGRAM_ACCT_IND := le.PROGRAM_ACCT_IND <> ri.PROGRAM_ACCT_IND;
    SELF.Diff_USE_PRIMARY_CARD_IND := le.USE_PRIMARY_CARD_IND <> ri.USE_PRIMARY_CARD_IND;
    SELF.Diff_SOURCE_KEY := le.SOURCE_KEY <> ri.SOURCE_KEY;
    SELF.Diff_SORTABLE_BOOTH := le.SORTABLE_BOOTH <> ri.SORTABLE_BOOTH;
    SELF.Diff_RECOMMEND_CNT := le.RECOMMEND_CNT <> ri.RECOMMEND_CNT;
    SELF.Diff_CREATE_DT := le.CREATE_DT <> ri.CREATE_DT;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_ORG_NAME,1,0)+ IF( SELF.Diff_FDC_CUSTOMER_NBR,1,0)+ IF( SELF.Diff_BOOTH_ID,1,0)+ IF( SELF.Diff_SHOW_KEY,1,0)+ IF( SELF.Diff_KEYVAL,1,0)+ IF( SELF.Diff_BOOTH_ID_1,1,0)+ IF( SELF.Diff_WIDTH,1,0)+ IF( SELF.Diff_DEPTH,1,0)+ IF( SELF.Diff_MAINTENANCE,1,0)+ IF( SELF.Diff_QTY_SIGNS,1,0)+ IF( SELF.Diff_SIGN_LINE1,1,0)+ IF( SELF.Diff_SIGN_LINE2,1,0)+ IF( SELF.Diff_TARGET_DT,1,0)+ IF( SELF.Diff_NO_SIGN_IND,1,0)+ IF( SELF.Diff_SIGN_PRINTED_IND,1,0)+ IF( SELF.Diff_USER_ID,1,0)+ IF( SELF.Diff_LAST_UPDATE_DT,1,0)+ IF( SELF.Diff_BOOTH_TYPE_ID,1,0)+ IF( SELF.Diff_PARENT_BOOTH_KEY,1,0)+ IF( SELF.Diff_FACILITY_KEY,1,0)+ IF( SELF.Diff_LOCATION_KEY,1,0)+ IF( SELF.Diff_EXHIBITOR_ID,1,0)+ IF( SELF.Diff_COMPETITOR_KEY,1,0)+ IF( SELF.Diff_AREA,1,0)+ IF( SELF.Diff_OWNER_TYPE,1,0)+ IF( SELF.Diff_PROGRAM_ACCT_IND,1,0)+ IF( SELF.Diff_USE_PRIMARY_CARD_IND,1,0)+ IF( SELF.Diff_SOURCE_KEY,1,0)+ IF( SELF.Diff_SORTABLE_BOOTH,1,0)+ IF( SELF.Diff_RECOMMEND_CNT,1,0)+ IF( SELF.Diff_CREATE_DT,1,0);
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
    Count_Diff_ORG_NAME := COUNT(GROUP,%Closest%.Diff_ORG_NAME);
    Count_Diff_FDC_CUSTOMER_NBR := COUNT(GROUP,%Closest%.Diff_FDC_CUSTOMER_NBR);
    Count_Diff_BOOTH_ID := COUNT(GROUP,%Closest%.Diff_BOOTH_ID);
    Count_Diff_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_SHOW_KEY);
    Count_Diff_KEYVAL := COUNT(GROUP,%Closest%.Diff_KEYVAL);
    Count_Diff_BOOTH_ID_1 := COUNT(GROUP,%Closest%.Diff_BOOTH_ID_1);
    Count_Diff_WIDTH := COUNT(GROUP,%Closest%.Diff_WIDTH);
    Count_Diff_DEPTH := COUNT(GROUP,%Closest%.Diff_DEPTH);
    Count_Diff_MAINTENANCE := COUNT(GROUP,%Closest%.Diff_MAINTENANCE);
    Count_Diff_QTY_SIGNS := COUNT(GROUP,%Closest%.Diff_QTY_SIGNS);
    Count_Diff_SIGN_LINE1 := COUNT(GROUP,%Closest%.Diff_SIGN_LINE1);
    Count_Diff_SIGN_LINE2 := COUNT(GROUP,%Closest%.Diff_SIGN_LINE2);
    Count_Diff_TARGET_DT := COUNT(GROUP,%Closest%.Diff_TARGET_DT);
    Count_Diff_NO_SIGN_IND := COUNT(GROUP,%Closest%.Diff_NO_SIGN_IND);
    Count_Diff_SIGN_PRINTED_IND := COUNT(GROUP,%Closest%.Diff_SIGN_PRINTED_IND);
    Count_Diff_USER_ID := COUNT(GROUP,%Closest%.Diff_USER_ID);
    Count_Diff_LAST_UPDATE_DT := COUNT(GROUP,%Closest%.Diff_LAST_UPDATE_DT);
    Count_Diff_BOOTH_TYPE_ID := COUNT(GROUP,%Closest%.Diff_BOOTH_TYPE_ID);
    Count_Diff_PARENT_BOOTH_KEY := COUNT(GROUP,%Closest%.Diff_PARENT_BOOTH_KEY);
    Count_Diff_FACILITY_KEY := COUNT(GROUP,%Closest%.Diff_FACILITY_KEY);
    Count_Diff_LOCATION_KEY := COUNT(GROUP,%Closest%.Diff_LOCATION_KEY);
    Count_Diff_EXHIBITOR_ID := COUNT(GROUP,%Closest%.Diff_EXHIBITOR_ID);
    Count_Diff_COMPETITOR_KEY := COUNT(GROUP,%Closest%.Diff_COMPETITOR_KEY);
    Count_Diff_AREA := COUNT(GROUP,%Closest%.Diff_AREA);
    Count_Diff_OWNER_TYPE := COUNT(GROUP,%Closest%.Diff_OWNER_TYPE);
    Count_Diff_PROGRAM_ACCT_IND := COUNT(GROUP,%Closest%.Diff_PROGRAM_ACCT_IND);
    Count_Diff_USE_PRIMARY_CARD_IND := COUNT(GROUP,%Closest%.Diff_USE_PRIMARY_CARD_IND);
    Count_Diff_SOURCE_KEY := COUNT(GROUP,%Closest%.Diff_SOURCE_KEY);
    Count_Diff_SORTABLE_BOOTH := COUNT(GROUP,%Closest%.Diff_SORTABLE_BOOTH);
    Count_Diff_RECOMMEND_CNT := COUNT(GROUP,%Closest%.Diff_RECOMMEND_CNT);
    Count_Diff_CREATE_DT := COUNT(GROUP,%Closest%.Diff_CREATE_DT);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
