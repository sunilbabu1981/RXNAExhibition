import ut,SALT28;
export hygiene(dataset(layout_ReedGroupData) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_GROUP_ID_pcnt := AVE(GROUP,IF(h.GROUP_ID = (TYPEOF(h.GROUP_ID))'',0,100));
    maxlength_GROUP_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.GROUP_ID)));
    avelength_GROUP_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.GROUP_ID)),h.GROUP_ID<>(typeof(h.GROUP_ID))'');
    populated_DESCRIPTION_pcnt := AVE(GROUP,IF(h.DESCRIPTION = (TYPEOF(h.DESCRIPTION))'',0,100));
    maxlength_DESCRIPTION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)));
    avelength_DESCRIPTION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)),h.DESCRIPTION<>(typeof(h.DESCRIPTION))'');
    populated_PRINT_ON_INV_IND_pcnt := AVE(GROUP,IF(h.PRINT_ON_INV_IND = (TYPEOF(h.PRINT_ON_INV_IND))'',0,100));
    maxlength_PRINT_ON_INV_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRINT_ON_INV_IND)));
    avelength_PRINT_ON_INV_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRINT_ON_INV_IND)),h.PRINT_ON_INV_IND<>(typeof(h.PRINT_ON_INV_IND))'');
    populated_GL_ACCT_NBR_pcnt := AVE(GROUP,IF(h.GL_ACCT_NBR = (TYPEOF(h.GL_ACCT_NBR))'',0,100));
    maxlength_GL_ACCT_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.GL_ACCT_NBR)));
    avelength_GL_ACCT_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.GL_ACCT_NBR)),h.GL_ACCT_NBR<>(typeof(h.GL_ACCT_NBR))'');
    populated_GL_SUB_NBR_pcnt := AVE(GROUP,IF(h.GL_SUB_NBR = (TYPEOF(h.GL_SUB_NBR))'',0,100));
    maxlength_GL_SUB_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.GL_SUB_NBR)));
    avelength_GL_SUB_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.GL_SUB_NBR)),h.GL_SUB_NBR<>(typeof(h.GL_SUB_NBR))'');
    populated_USER_ID_pcnt := AVE(GROUP,IF(h.USER_ID = (TYPEOF(h.USER_ID))'',0,100));
    maxlength_USER_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)));
    avelength_USER_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)),h.USER_ID<>(typeof(h.USER_ID))'');
    populated_LAST_UPDATE_DT_pcnt := AVE(GROUP,IF(h.LAST_UPDATE_DT = (TYPEOF(h.LAST_UPDATE_DT))'',0,100));
    maxlength_LAST_UPDATE_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)));
    avelength_LAST_UPDATE_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)),h.LAST_UPDATE_DT<>(typeof(h.LAST_UPDATE_DT))'');
    populated_INV_ST_SUM_GROUP_pcnt := AVE(GROUP,IF(h.INV_ST_SUM_GROUP = (TYPEOF(h.INV_ST_SUM_GROUP))'',0,100));
    maxlength_INV_ST_SUM_GROUP := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.INV_ST_SUM_GROUP)));
    avelength_INV_ST_SUM_GROUP := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.INV_ST_SUM_GROUP)),h.INV_ST_SUM_GROUP<>(typeof(h.INV_ST_SUM_GROUP))'');
    populated_PM_TYPE_pcnt := AVE(GROUP,IF(h.PM_TYPE = (TYPEOF(h.PM_TYPE))'',0,100));
    maxlength_PM_TYPE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PM_TYPE)));
    avelength_PM_TYPE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PM_TYPE)),h.PM_TYPE<>(typeof(h.PM_TYPE))'');
    populated_DISCOUNT_PCT_pcnt := AVE(GROUP,IF(h.DISCOUNT_PCT = (TYPEOF(h.DISCOUNT_PCT))'',0,100));
    maxlength_DISCOUNT_PCT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DISCOUNT_PCT)));
    avelength_DISCOUNT_PCT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DISCOUNT_PCT)),h.DISCOUNT_PCT<>(typeof(h.DISCOUNT_PCT))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.GROUP_ID),TRIM((SALT28.StrType)le.DESCRIPTION),TRIM((SALT28.StrType)le.PRINT_ON_INV_IND),TRIM((SALT28.StrType)le.GL_ACCT_NBR),TRIM((SALT28.StrType)le.GL_SUB_NBR),TRIM((SALT28.StrType)le.USER_ID),TRIM((SALT28.StrType)le.LAST_UPDATE_DT),TRIM((SALT28.StrType)le.INV_ST_SUM_GROUP),TRIM((SALT28.StrType)le.PM_TYPE),TRIM((SALT28.StrType)le.DISCOUNT_PCT)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,11,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'SHOW_KEY'}
      ,{2,'GROUP_ID'}
      ,{3,'DESCRIPTION'}
      ,{4,'PRINT_ON_INV_IND'}
      ,{5,'GL_ACCT_NBR'}
      ,{6,'GL_SUB_NBR'}
      ,{7,'USER_ID'}
      ,{8,'LAST_UPDATE_DT'}
      ,{9,'INV_ST_SUM_GROUP'}
      ,{10,'PM_TYPE'}
      ,{11,'DISCOUNT_PCT'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_GROUP_ID((SALT28.StrType)le.GROUP_ID),
    Fields.InValid_DESCRIPTION((SALT28.StrType)le.DESCRIPTION),
    Fields.InValid_PRINT_ON_INV_IND((SALT28.StrType)le.PRINT_ON_INV_IND),
    Fields.InValid_GL_ACCT_NBR((SALT28.StrType)le.GL_ACCT_NBR),
    Fields.InValid_GL_SUB_NBR((SALT28.StrType)le.GL_SUB_NBR),
    Fields.InValid_USER_ID((SALT28.StrType)le.USER_ID),
    Fields.InValid_LAST_UPDATE_DT((SALT28.StrType)le.LAST_UPDATE_DT),
    Fields.InValid_INV_ST_SUM_GROUP((SALT28.StrType)le.INV_ST_SUM_GROUP),
    Fields.InValid_PM_TYPE((SALT28.StrType)le.PM_TYPE),
    Fields.InValid_DISCOUNT_PCT((SALT28.StrType)le.DISCOUNT_PCT),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,11,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_GROUP_ID(TotalErrors.ErrorNum),Fields.InValidMessage_DESCRIPTION(TotalErrors.ErrorNum),Fields.InValidMessage_PRINT_ON_INV_IND(TotalErrors.ErrorNum),Fields.InValidMessage_GL_ACCT_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_GL_SUB_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_USER_ID(TotalErrors.ErrorNum),Fields.InValidMessage_LAST_UPDATE_DT(TotalErrors.ErrorNum),Fields.InValidMessage_INV_ST_SUM_GROUP(TotalErrors.ErrorNum),Fields.InValidMessage_PM_TYPE(TotalErrors.ErrorNum),Fields.InValidMessage_DISCOUNT_PCT(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
