import ut,SALT28;
export hygiene(dataset(layout_ReedBoothData) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_ORG_NAME_pcnt := AVE(GROUP,IF(h.ORG_NAME = (TYPEOF(h.ORG_NAME))'',0,100));
    maxlength_ORG_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ORG_NAME)));
    avelength_ORG_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ORG_NAME)),h.ORG_NAME<>(typeof(h.ORG_NAME))'');
    populated_FDC_CUSTOMER_NBR_pcnt := AVE(GROUP,IF(h.FDC_CUSTOMER_NBR = (TYPEOF(h.FDC_CUSTOMER_NBR))'',0,100));
    maxlength_FDC_CUSTOMER_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FDC_CUSTOMER_NBR)));
    avelength_FDC_CUSTOMER_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FDC_CUSTOMER_NBR)),h.FDC_CUSTOMER_NBR<>(typeof(h.FDC_CUSTOMER_NBR))'');
    populated_BOOTH_ID_pcnt := AVE(GROUP,IF(h.BOOTH_ID = (TYPEOF(h.BOOTH_ID))'',0,100));
    maxlength_BOOTH_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID)));
    avelength_BOOTH_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID)),h.BOOTH_ID<>(typeof(h.BOOTH_ID))'');
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_KEYVAL_pcnt := AVE(GROUP,IF(h.KEYVAL = (TYPEOF(h.KEYVAL))'',0,100));
    maxlength_KEYVAL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEYVAL)));
    avelength_KEYVAL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEYVAL)),h.KEYVAL<>(typeof(h.KEYVAL))'');
    populated_BOOTH_ID_1_pcnt := AVE(GROUP,IF(h.BOOTH_ID_1 = (TYPEOF(h.BOOTH_ID_1))'',0,100));
    maxlength_BOOTH_ID_1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID_1)));
    avelength_BOOTH_ID_1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID_1)),h.BOOTH_ID_1<>(typeof(h.BOOTH_ID_1))'');
    populated_WIDTH_pcnt := AVE(GROUP,IF(h.WIDTH = (TYPEOF(h.WIDTH))'',0,100));
    maxlength_WIDTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.WIDTH)));
    avelength_WIDTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.WIDTH)),h.WIDTH<>(typeof(h.WIDTH))'');
    populated_DEPTH_pcnt := AVE(GROUP,IF(h.DEPTH = (TYPEOF(h.DEPTH))'',0,100));
    maxlength_DEPTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DEPTH)));
    avelength_DEPTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DEPTH)),h.DEPTH<>(typeof(h.DEPTH))'');
    populated_MAINTENANCE_pcnt := AVE(GROUP,IF(h.MAINTENANCE = (TYPEOF(h.MAINTENANCE))'',0,100));
    maxlength_MAINTENANCE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MAINTENANCE)));
    avelength_MAINTENANCE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MAINTENANCE)),h.MAINTENANCE<>(typeof(h.MAINTENANCE))'');
    populated_QTY_SIGNS_pcnt := AVE(GROUP,IF(h.QTY_SIGNS = (TYPEOF(h.QTY_SIGNS))'',0,100));
    maxlength_QTY_SIGNS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_SIGNS)));
    avelength_QTY_SIGNS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_SIGNS)),h.QTY_SIGNS<>(typeof(h.QTY_SIGNS))'');
    populated_SIGN_LINE1_pcnt := AVE(GROUP,IF(h.SIGN_LINE1 = (TYPEOF(h.SIGN_LINE1))'',0,100));
    maxlength_SIGN_LINE1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_LINE1)));
    avelength_SIGN_LINE1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_LINE1)),h.SIGN_LINE1<>(typeof(h.SIGN_LINE1))'');
    populated_SIGN_LINE2_pcnt := AVE(GROUP,IF(h.SIGN_LINE2 = (TYPEOF(h.SIGN_LINE2))'',0,100));
    maxlength_SIGN_LINE2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_LINE2)));
    avelength_SIGN_LINE2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_LINE2)),h.SIGN_LINE2<>(typeof(h.SIGN_LINE2))'');
    populated_TARGET_DT_pcnt := AVE(GROUP,IF(h.TARGET_DT = (TYPEOF(h.TARGET_DT))'',0,100));
    maxlength_TARGET_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TARGET_DT)));
    avelength_TARGET_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TARGET_DT)),h.TARGET_DT<>(typeof(h.TARGET_DT))'');
    populated_NO_SIGN_IND_pcnt := AVE(GROUP,IF(h.NO_SIGN_IND = (TYPEOF(h.NO_SIGN_IND))'',0,100));
    maxlength_NO_SIGN_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.NO_SIGN_IND)));
    avelength_NO_SIGN_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.NO_SIGN_IND)),h.NO_SIGN_IND<>(typeof(h.NO_SIGN_IND))'');
    populated_SIGN_PRINTED_IND_pcnt := AVE(GROUP,IF(h.SIGN_PRINTED_IND = (TYPEOF(h.SIGN_PRINTED_IND))'',0,100));
    maxlength_SIGN_PRINTED_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_PRINTED_IND)));
    avelength_SIGN_PRINTED_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIGN_PRINTED_IND)),h.SIGN_PRINTED_IND<>(typeof(h.SIGN_PRINTED_IND))'');
    populated_USER_ID_pcnt := AVE(GROUP,IF(h.USER_ID = (TYPEOF(h.USER_ID))'',0,100));
    maxlength_USER_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)));
    avelength_USER_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)),h.USER_ID<>(typeof(h.USER_ID))'');
    populated_LAST_UPDATE_DT_pcnt := AVE(GROUP,IF(h.LAST_UPDATE_DT = (TYPEOF(h.LAST_UPDATE_DT))'',0,100));
    maxlength_LAST_UPDATE_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)));
    avelength_LAST_UPDATE_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)),h.LAST_UPDATE_DT<>(typeof(h.LAST_UPDATE_DT))'');
    populated_BOOTH_TYPE_ID_pcnt := AVE(GROUP,IF(h.BOOTH_TYPE_ID = (TYPEOF(h.BOOTH_TYPE_ID))'',0,100));
    maxlength_BOOTH_TYPE_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_TYPE_ID)));
    avelength_BOOTH_TYPE_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_TYPE_ID)),h.BOOTH_TYPE_ID<>(typeof(h.BOOTH_TYPE_ID))'');
    populated_PARENT_BOOTH_KEY_pcnt := AVE(GROUP,IF(h.PARENT_BOOTH_KEY = (TYPEOF(h.PARENT_BOOTH_KEY))'',0,100));
    maxlength_PARENT_BOOTH_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PARENT_BOOTH_KEY)));
    avelength_PARENT_BOOTH_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PARENT_BOOTH_KEY)),h.PARENT_BOOTH_KEY<>(typeof(h.PARENT_BOOTH_KEY))'');
    populated_FACILITY_KEY_pcnt := AVE(GROUP,IF(h.FACILITY_KEY = (TYPEOF(h.FACILITY_KEY))'',0,100));
    maxlength_FACILITY_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FACILITY_KEY)));
    avelength_FACILITY_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FACILITY_KEY)),h.FACILITY_KEY<>(typeof(h.FACILITY_KEY))'');
    populated_LOCATION_KEY_pcnt := AVE(GROUP,IF(h.LOCATION_KEY = (TYPEOF(h.LOCATION_KEY))'',0,100));
    maxlength_LOCATION_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LOCATION_KEY)));
    avelength_LOCATION_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LOCATION_KEY)),h.LOCATION_KEY<>(typeof(h.LOCATION_KEY))'');
    populated_EXHIBITOR_ID_pcnt := AVE(GROUP,IF(h.EXHIBITOR_ID = (TYPEOF(h.EXHIBITOR_ID))'',0,100));
    maxlength_EXHIBITOR_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_ID)));
    avelength_EXHIBITOR_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_ID)),h.EXHIBITOR_ID<>(typeof(h.EXHIBITOR_ID))'');
    populated_COMPETITOR_KEY_pcnt := AVE(GROUP,IF(h.COMPETITOR_KEY = (TYPEOF(h.COMPETITOR_KEY))'',0,100));
    maxlength_COMPETITOR_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPETITOR_KEY)));
    avelength_COMPETITOR_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPETITOR_KEY)),h.COMPETITOR_KEY<>(typeof(h.COMPETITOR_KEY))'');
    populated_AREA_pcnt := AVE(GROUP,IF(h.AREA = (TYPEOF(h.AREA))'',0,100));
    maxlength_AREA := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.AREA)));
    avelength_AREA := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.AREA)),h.AREA<>(typeof(h.AREA))'');
    populated_OWNER_TYPE_pcnt := AVE(GROUP,IF(h.OWNER_TYPE = (TYPEOF(h.OWNER_TYPE))'',0,100));
    maxlength_OWNER_TYPE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OWNER_TYPE)));
    avelength_OWNER_TYPE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OWNER_TYPE)),h.OWNER_TYPE<>(typeof(h.OWNER_TYPE))'');
    populated_PROGRAM_ACCT_IND_pcnt := AVE(GROUP,IF(h.PROGRAM_ACCT_IND = (TYPEOF(h.PROGRAM_ACCT_IND))'',0,100));
    maxlength_PROGRAM_ACCT_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROGRAM_ACCT_IND)));
    avelength_PROGRAM_ACCT_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROGRAM_ACCT_IND)),h.PROGRAM_ACCT_IND<>(typeof(h.PROGRAM_ACCT_IND))'');
    populated_USE_PRIMARY_CARD_IND_pcnt := AVE(GROUP,IF(h.USE_PRIMARY_CARD_IND = (TYPEOF(h.USE_PRIMARY_CARD_IND))'',0,100));
    maxlength_USE_PRIMARY_CARD_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.USE_PRIMARY_CARD_IND)));
    avelength_USE_PRIMARY_CARD_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.USE_PRIMARY_CARD_IND)),h.USE_PRIMARY_CARD_IND<>(typeof(h.USE_PRIMARY_CARD_IND))'');
    populated_SOURCE_KEY_pcnt := AVE(GROUP,IF(h.SOURCE_KEY = (TYPEOF(h.SOURCE_KEY))'',0,100));
    maxlength_SOURCE_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE_KEY)));
    avelength_SOURCE_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE_KEY)),h.SOURCE_KEY<>(typeof(h.SOURCE_KEY))'');
    populated_SORTABLE_BOOTH_pcnt := AVE(GROUP,IF(h.SORTABLE_BOOTH = (TYPEOF(h.SORTABLE_BOOTH))'',0,100));
    maxlength_SORTABLE_BOOTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SORTABLE_BOOTH)));
    avelength_SORTABLE_BOOTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SORTABLE_BOOTH)),h.SORTABLE_BOOTH<>(typeof(h.SORTABLE_BOOTH))'');
    populated_RECOMMEND_CNT_pcnt := AVE(GROUP,IF(h.RECOMMEND_CNT = (TYPEOF(h.RECOMMEND_CNT))'',0,100));
    maxlength_RECOMMEND_CNT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECOMMEND_CNT)));
    avelength_RECOMMEND_CNT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECOMMEND_CNT)),h.RECOMMEND_CNT<>(typeof(h.RECOMMEND_CNT))'');
    populated_CREATE_DT_pcnt := AVE(GROUP,IF(h.CREATE_DT = (TYPEOF(h.CREATE_DT))'',0,100));
    maxlength_CREATE_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATE_DT)));
    avelength_CREATE_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATE_DT)),h.CREATE_DT<>(typeof(h.CREATE_DT))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.ORG_NAME),TRIM((SALT28.StrType)le.FDC_CUSTOMER_NBR),TRIM((SALT28.StrType)le.BOOTH_ID),TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.KEYVAL),TRIM((SALT28.StrType)le.BOOTH_ID_1),TRIM((SALT28.StrType)le.WIDTH),TRIM((SALT28.StrType)le.DEPTH),TRIM((SALT28.StrType)le.MAINTENANCE),TRIM((SALT28.StrType)le.QTY_SIGNS),TRIM((SALT28.StrType)le.SIGN_LINE1),TRIM((SALT28.StrType)le.SIGN_LINE2),TRIM((SALT28.StrType)le.TARGET_DT),TRIM((SALT28.StrType)le.NO_SIGN_IND),TRIM((SALT28.StrType)le.SIGN_PRINTED_IND),TRIM((SALT28.StrType)le.USER_ID),TRIM((SALT28.StrType)le.LAST_UPDATE_DT),TRIM((SALT28.StrType)le.BOOTH_TYPE_ID),TRIM((SALT28.StrType)le.PARENT_BOOTH_KEY),TRIM((SALT28.StrType)le.FACILITY_KEY),TRIM((SALT28.StrType)le.LOCATION_KEY),TRIM((SALT28.StrType)le.EXHIBITOR_ID),TRIM((SALT28.StrType)le.COMPETITOR_KEY),TRIM((SALT28.StrType)le.AREA),TRIM((SALT28.StrType)le.OWNER_TYPE),TRIM((SALT28.StrType)le.PROGRAM_ACCT_IND),TRIM((SALT28.StrType)le.USE_PRIMARY_CARD_IND),TRIM((SALT28.StrType)le.SOURCE_KEY),TRIM((SALT28.StrType)le.SORTABLE_BOOTH),TRIM((SALT28.StrType)le.RECOMMEND_CNT),TRIM((SALT28.StrType)le.CREATE_DT)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,31,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'ORG_NAME'}
      ,{2,'FDC_CUSTOMER_NBR'}
      ,{3,'BOOTH_ID'}
      ,{4,'SHOW_KEY'}
      ,{5,'KEYVAL'}
      ,{6,'BOOTH_ID_1'}
      ,{7,'WIDTH'}
      ,{8,'DEPTH'}
      ,{9,'MAINTENANCE'}
      ,{10,'QTY_SIGNS'}
      ,{11,'SIGN_LINE1'}
      ,{12,'SIGN_LINE2'}
      ,{13,'TARGET_DT'}
      ,{14,'NO_SIGN_IND'}
      ,{15,'SIGN_PRINTED_IND'}
      ,{16,'USER_ID'}
      ,{17,'LAST_UPDATE_DT'}
      ,{18,'BOOTH_TYPE_ID'}
      ,{19,'PARENT_BOOTH_KEY'}
      ,{20,'FACILITY_KEY'}
      ,{21,'LOCATION_KEY'}
      ,{22,'EXHIBITOR_ID'}
      ,{23,'COMPETITOR_KEY'}
      ,{24,'AREA'}
      ,{25,'OWNER_TYPE'}
      ,{26,'PROGRAM_ACCT_IND'}
      ,{27,'USE_PRIMARY_CARD_IND'}
      ,{28,'SOURCE_KEY'}
      ,{29,'SORTABLE_BOOTH'}
      ,{30,'RECOMMEND_CNT'}
      ,{31,'CREATE_DT'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_ORG_NAME((SALT28.StrType)le.ORG_NAME),
    Fields.InValid_FDC_CUSTOMER_NBR((SALT28.StrType)le.FDC_CUSTOMER_NBR),
    Fields.InValid_BOOTH_ID((SALT28.StrType)le.BOOTH_ID),
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_KEYVAL((SALT28.StrType)le.KEYVAL),
    Fields.InValid_BOOTH_ID_1((SALT28.StrType)le.BOOTH_ID_1),
    Fields.InValid_WIDTH((SALT28.StrType)le.WIDTH),
    Fields.InValid_DEPTH((SALT28.StrType)le.DEPTH),
    Fields.InValid_MAINTENANCE((SALT28.StrType)le.MAINTENANCE),
    Fields.InValid_QTY_SIGNS((SALT28.StrType)le.QTY_SIGNS),
    Fields.InValid_SIGN_LINE1((SALT28.StrType)le.SIGN_LINE1),
    Fields.InValid_SIGN_LINE2((SALT28.StrType)le.SIGN_LINE2),
    Fields.InValid_TARGET_DT((SALT28.StrType)le.TARGET_DT),
    Fields.InValid_NO_SIGN_IND((SALT28.StrType)le.NO_SIGN_IND),
    Fields.InValid_SIGN_PRINTED_IND((SALT28.StrType)le.SIGN_PRINTED_IND),
    Fields.InValid_USER_ID((SALT28.StrType)le.USER_ID),
    Fields.InValid_LAST_UPDATE_DT((SALT28.StrType)le.LAST_UPDATE_DT),
    Fields.InValid_BOOTH_TYPE_ID((SALT28.StrType)le.BOOTH_TYPE_ID),
    Fields.InValid_PARENT_BOOTH_KEY((SALT28.StrType)le.PARENT_BOOTH_KEY),
    Fields.InValid_FACILITY_KEY((SALT28.StrType)le.FACILITY_KEY),
    Fields.InValid_LOCATION_KEY((SALT28.StrType)le.LOCATION_KEY),
    Fields.InValid_EXHIBITOR_ID((SALT28.StrType)le.EXHIBITOR_ID),
    Fields.InValid_COMPETITOR_KEY((SALT28.StrType)le.COMPETITOR_KEY),
    Fields.InValid_AREA((SALT28.StrType)le.AREA),
    Fields.InValid_OWNER_TYPE((SALT28.StrType)le.OWNER_TYPE),
    Fields.InValid_PROGRAM_ACCT_IND((SALT28.StrType)le.PROGRAM_ACCT_IND),
    Fields.InValid_USE_PRIMARY_CARD_IND((SALT28.StrType)le.USE_PRIMARY_CARD_IND),
    Fields.InValid_SOURCE_KEY((SALT28.StrType)le.SOURCE_KEY),
    Fields.InValid_SORTABLE_BOOTH((SALT28.StrType)le.SORTABLE_BOOTH),
    Fields.InValid_RECOMMEND_CNT((SALT28.StrType)le.RECOMMEND_CNT),
    Fields.InValid_CREATE_DT((SALT28.StrType)le.CREATE_DT),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,31,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_ORG_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_FDC_CUSTOMER_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH_ID(TotalErrors.ErrorNum),Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_KEYVAL(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH_ID_1(TotalErrors.ErrorNum),Fields.InValidMessage_WIDTH(TotalErrors.ErrorNum),Fields.InValidMessage_DEPTH(TotalErrors.ErrorNum),Fields.InValidMessage_MAINTENANCE(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_SIGNS(TotalErrors.ErrorNum),Fields.InValidMessage_SIGN_LINE1(TotalErrors.ErrorNum),Fields.InValidMessage_SIGN_LINE2(TotalErrors.ErrorNum),Fields.InValidMessage_TARGET_DT(TotalErrors.ErrorNum),Fields.InValidMessage_NO_SIGN_IND(TotalErrors.ErrorNum),Fields.InValidMessage_SIGN_PRINTED_IND(TotalErrors.ErrorNum),Fields.InValidMessage_USER_ID(TotalErrors.ErrorNum),Fields.InValidMessage_LAST_UPDATE_DT(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH_TYPE_ID(TotalErrors.ErrorNum),Fields.InValidMessage_PARENT_BOOTH_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_FACILITY_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_LOCATION_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR_ID(TotalErrors.ErrorNum),Fields.InValidMessage_COMPETITOR_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_AREA(TotalErrors.ErrorNum),Fields.InValidMessage_OWNER_TYPE(TotalErrors.ErrorNum),Fields.InValidMessage_PROGRAM_ACCT_IND(TotalErrors.ErrorNum),Fields.InValidMessage_USE_PRIMARY_CARD_IND(TotalErrors.ErrorNum),Fields.InValidMessage_SOURCE_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_SORTABLE_BOOTH(TotalErrors.ErrorNum),Fields.InValidMessage_RECOMMEND_CNT(TotalErrors.ErrorNum),Fields.InValidMessage_CREATE_DT(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
