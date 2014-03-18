import ut,SALT28;
export hygiene(dataset(layout_CeIssue) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_STATUS_pcnt := AVE(GROUP,IF(h.STATUS = (TYPEOF(h.STATUS))'',0,100));
    maxlength_STATUS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATUS)));
    avelength_STATUS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATUS)),h.STATUS<>(typeof(h.STATUS))'');
    populated_ISSUE_TEXT_pcnt := AVE(GROUP,IF(h.ISSUE_TEXT = (TYPEOF(h.ISSUE_TEXT))'',0,100));
    maxlength_ISSUE_TEXT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_TEXT)));
    avelength_ISSUE_TEXT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_TEXT)),h.ISSUE_TEXT<>(typeof(h.ISSUE_TEXT))'');
    populated_BOOTH_KEY_pcnt := AVE(GROUP,IF(h.BOOTH_KEY = (TYPEOF(h.BOOTH_KEY))'',0,100));
    maxlength_BOOTH_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_KEY)));
    avelength_BOOTH_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_KEY)),h.BOOTH_KEY<>(typeof(h.BOOTH_KEY))'');
    populated_CUSTOMER_KEY_pcnt := AVE(GROUP,IF(h.CUSTOMER_KEY = (TYPEOF(h.CUSTOMER_KEY))'',0,100));
    maxlength_CUSTOMER_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMER_KEY)));
    avelength_CUSTOMER_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMER_KEY)),h.CUSTOMER_KEY<>(typeof(h.CUSTOMER_KEY))'');
    populated_CONTACT_NAME_pcnt := AVE(GROUP,IF(h.CONTACT_NAME = (TYPEOF(h.CONTACT_NAME))'',0,100));
    maxlength_CONTACT_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_NAME)));
    avelength_CONTACT_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_NAME)),h.CONTACT_NAME<>(typeof(h.CONTACT_NAME))'');
    populated_CONTACT_PHONE_pcnt := AVE(GROUP,IF(h.CONTACT_PHONE = (TYPEOF(h.CONTACT_PHONE))'',0,100));
    maxlength_CONTACT_PHONE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_PHONE)));
    avelength_CONTACT_PHONE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_PHONE)),h.CONTACT_PHONE<>(typeof(h.CONTACT_PHONE))'');
    populated_NOTIFICATION_IND_pcnt := AVE(GROUP,IF(h.NOTIFICATION_IND = (TYPEOF(h.NOTIFICATION_IND))'',0,100));
    maxlength_NOTIFICATION_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.NOTIFICATION_IND)));
    avelength_NOTIFICATION_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.NOTIFICATION_IND)),h.NOTIFICATION_IND<>(typeof(h.NOTIFICATION_IND))'');
    populated_PRIORITY_pcnt := AVE(GROUP,IF(h.PRIORITY = (TYPEOF(h.PRIORITY))'',0,100));
    maxlength_PRIORITY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRIORITY)));
    avelength_PRIORITY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRIORITY)),h.PRIORITY<>(typeof(h.PRIORITY))'');
    populated_KEY_pcnt := AVE(GROUP,IF(h.KEY = (TYPEOF(h.KEY))'',0,100));
    maxlength_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)));
    avelength_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)),h.KEY<>(typeof(h.KEY))'');
    populated_EXHIBITOR_PRESENT_IND_pcnt := AVE(GROUP,IF(h.EXHIBITOR_PRESENT_IND = (TYPEOF(h.EXHIBITOR_PRESENT_IND))'',0,100));
    maxlength_EXHIBITOR_PRESENT_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_PRESENT_IND)));
    avelength_EXHIBITOR_PRESENT_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_PRESENT_IND)),h.EXHIBITOR_PRESENT_IND<>(typeof(h.EXHIBITOR_PRESENT_IND))'');
    populated_CREATED_DT_pcnt := AVE(GROUP,IF(h.CREATED_DT = (TYPEOF(h.CREATED_DT))'',0,100));
    maxlength_CREATED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)));
    avelength_CREATED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)),h.CREATED_DT<>(typeof(h.CREATED_DT))'');
    populated_CREATED_BY_pcnt := AVE(GROUP,IF(h.CREATED_BY = (TYPEOF(h.CREATED_BY))'',0,100));
    maxlength_CREATED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_BY)));
    avelength_CREATED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_BY)),h.CREATED_BY<>(typeof(h.CREATED_BY))'');
    populated_UPDATED_DT_pcnt := AVE(GROUP,IF(h.UPDATED_DT = (TYPEOF(h.UPDATED_DT))'',0,100));
    maxlength_UPDATED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_DT)));
    avelength_UPDATED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_DT)),h.UPDATED_DT<>(typeof(h.UPDATED_DT))'');
    populated_UPDATED_BY_pcnt := AVE(GROUP,IF(h.UPDATED_BY = (TYPEOF(h.UPDATED_BY))'',0,100));
    maxlength_UPDATED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_BY)));
    avelength_UPDATED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_BY)),h.UPDATED_BY<>(typeof(h.UPDATED_BY))'');
    populated_SOURCE_pcnt := AVE(GROUP,IF(h.SOURCE = (TYPEOF(h.SOURCE))'',0,100));
    maxlength_SOURCE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE)));
    avelength_SOURCE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE)),h.SOURCE<>(typeof(h.SOURCE))'');
    populated_CONTRACTOR_KEY_pcnt := AVE(GROUP,IF(h.CONTRACTOR_KEY = (TYPEOF(h.CONTRACTOR_KEY))'',0,100));
    maxlength_CONTRACTOR_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_KEY)));
    avelength_CONTRACTOR_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_KEY)),h.CONTRACTOR_KEY<>(typeof(h.CONTRACTOR_KEY))'');
    populated_TYPE_pcnt := AVE(GROUP,IF(h.TYPE = (TYPEOF(h.TYPE))'',0,100));
    maxlength_TYPE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TYPE)));
    avelength_TYPE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TYPE)),h.TYPE<>(typeof(h.TYPE))'');
    populated_CONTRACTOR_TYPE_KEY_pcnt := AVE(GROUP,IF(h.CONTRACTOR_TYPE_KEY = (TYPEOF(h.CONTRACTOR_TYPE_KEY))'',0,100));
    maxlength_CONTRACTOR_TYPE_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_TYPE_KEY)));
    avelength_CONTRACTOR_TYPE_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_TYPE_KEY)),h.CONTRACTOR_TYPE_KEY<>(typeof(h.CONTRACTOR_TYPE_KEY))'');
    populated_CE_SHOW_KEY_pcnt := AVE(GROUP,IF(h.CE_SHOW_KEY = (TYPEOF(h.CE_SHOW_KEY))'',0,100));
    maxlength_CE_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)));
    avelength_CE_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)),h.CE_SHOW_KEY<>(typeof(h.CE_SHOW_KEY))'');
    populated_CE_BOOTH_KEY_pcnt := AVE(GROUP,IF(h.CE_BOOTH_KEY = (TYPEOF(h.CE_BOOTH_KEY))'',0,100));
    maxlength_CE_BOOTH_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_BOOTH_KEY)));
    avelength_CE_BOOTH_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_BOOTH_KEY)),h.CE_BOOTH_KEY<>(typeof(h.CE_BOOTH_KEY))'');
    populated_CE_CUSTOMER_KEY_pcnt := AVE(GROUP,IF(h.CE_CUSTOMER_KEY = (TYPEOF(h.CE_CUSTOMER_KEY))'',0,100));
    maxlength_CE_CUSTOMER_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_CUSTOMER_KEY)));
    avelength_CE_CUSTOMER_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_CUSTOMER_KEY)),h.CE_CUSTOMER_KEY<>(typeof(h.CE_CUSTOMER_KEY))'');
    populated_CONTACT_INTL_PHONE_CD_pcnt := AVE(GROUP,IF(h.CONTACT_INTL_PHONE_CD = (TYPEOF(h.CONTACT_INTL_PHONE_CD))'',0,100));
    maxlength_CONTACT_INTL_PHONE_CD := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_INTL_PHONE_CD)));
    avelength_CONTACT_INTL_PHONE_CD := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_INTL_PHONE_CD)),h.CONTACT_INTL_PHONE_CD<>(typeof(h.CONTACT_INTL_PHONE_CD))'');
    populated_CE_MHA_KEY_pcnt := AVE(GROUP,IF(h.CE_MHA_KEY = (TYPEOF(h.CE_MHA_KEY))'',0,100));
    maxlength_CE_MHA_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_MHA_KEY)));
    avelength_CE_MHA_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_MHA_KEY)),h.CE_MHA_KEY<>(typeof(h.CE_MHA_KEY))'');
    populated_NBR_LABELS_REQ_pcnt := AVE(GROUP,IF(h.NBR_LABELS_REQ = (TYPEOF(h.NBR_LABELS_REQ))'',0,100));
    maxlength_NBR_LABELS_REQ := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.NBR_LABELS_REQ)));
    avelength_NBR_LABELS_REQ := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.NBR_LABELS_REQ)),h.NBR_LABELS_REQ<>(typeof(h.NBR_LABELS_REQ))'');
    populated_USER_ROLE_pcnt := AVE(GROUP,IF(h.USER_ROLE = (TYPEOF(h.USER_ROLE))'',0,100));
    maxlength_USER_ROLE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ROLE)));
    avelength_USER_ROLE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ROLE)),h.USER_ROLE<>(typeof(h.USER_ROLE))'');
    populated_CREATED_SOURCE_pcnt := AVE(GROUP,IF(h.CREATED_SOURCE = (TYPEOF(h.CREATED_SOURCE))'',0,100));
    maxlength_CREATED_SOURCE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_SOURCE)));
    avelength_CREATED_SOURCE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_SOURCE)),h.CREATED_SOURCE<>(typeof(h.CREATED_SOURCE))'');
    populated_CONTRACTORTYPE_pcnt := AVE(GROUP,IF(h.CONTRACTORTYPE = (TYPEOF(h.CONTRACTORTYPE))'',0,100));
    maxlength_CONTRACTORTYPE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTORTYPE)));
    avelength_CONTRACTORTYPE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTORTYPE)),h.CONTRACTORTYPE<>(typeof(h.CONTRACTORTYPE))'');
    populated_TSSBOOTHID_pcnt := AVE(GROUP,IF(h.TSSBOOTHID = (TYPEOF(h.TSSBOOTHID))'',0,100));
    maxlength_TSSBOOTHID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)));
    avelength_TSSBOOTHID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)),h.TSSBOOTHID<>(typeof(h.TSSBOOTHID))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.STATUS),TRIM((SALT28.StrType)le.ISSUE_TEXT),TRIM((SALT28.StrType)le.BOOTH_KEY),TRIM((SALT28.StrType)le.CUSTOMER_KEY),TRIM((SALT28.StrType)le.CONTACT_NAME),TRIM((SALT28.StrType)le.CONTACT_PHONE),TRIM((SALT28.StrType)le.NOTIFICATION_IND),TRIM((SALT28.StrType)le.PRIORITY),TRIM((SALT28.StrType)le.KEY),TRIM((SALT28.StrType)le.EXHIBITOR_PRESENT_IND),TRIM((SALT28.StrType)le.CREATED_DT),TRIM((SALT28.StrType)le.CREATED_BY),TRIM((SALT28.StrType)le.UPDATED_DT),TRIM((SALT28.StrType)le.UPDATED_BY),TRIM((SALT28.StrType)le.SOURCE),TRIM((SALT28.StrType)le.CONTRACTOR_KEY),TRIM((SALT28.StrType)le.TYPE),TRIM((SALT28.StrType)le.CONTRACTOR_TYPE_KEY),TRIM((SALT28.StrType)le.CE_SHOW_KEY),TRIM((SALT28.StrType)le.CE_BOOTH_KEY),TRIM((SALT28.StrType)le.CE_CUSTOMER_KEY),TRIM((SALT28.StrType)le.CONTACT_INTL_PHONE_CD),TRIM((SALT28.StrType)le.CE_MHA_KEY),TRIM((SALT28.StrType)le.NBR_LABELS_REQ),TRIM((SALT28.StrType)le.USER_ROLE),TRIM((SALT28.StrType)le.CREATED_SOURCE),TRIM((SALT28.StrType)le.CONTRACTORTYPE),TRIM((SALT28.StrType)le.TSSBOOTHID)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,29,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'SHOW_KEY'}
      ,{2,'STATUS'}
      ,{3,'ISSUE_TEXT'}
      ,{4,'BOOTH_KEY'}
      ,{5,'CUSTOMER_KEY'}
      ,{6,'CONTACT_NAME'}
      ,{7,'CONTACT_PHONE'}
      ,{8,'NOTIFICATION_IND'}
      ,{9,'PRIORITY'}
      ,{10,'KEY'}
      ,{11,'EXHIBITOR_PRESENT_IND'}
      ,{12,'CREATED_DT'}
      ,{13,'CREATED_BY'}
      ,{14,'UPDATED_DT'}
      ,{15,'UPDATED_BY'}
      ,{16,'SOURCE'}
      ,{17,'CONTRACTOR_KEY'}
      ,{18,'TYPE'}
      ,{19,'CONTRACTOR_TYPE_KEY'}
      ,{20,'CE_SHOW_KEY'}
      ,{21,'CE_BOOTH_KEY'}
      ,{22,'CE_CUSTOMER_KEY'}
      ,{23,'CONTACT_INTL_PHONE_CD'}
      ,{24,'CE_MHA_KEY'}
      ,{25,'NBR_LABELS_REQ'}
      ,{26,'USER_ROLE'}
      ,{27,'CREATED_SOURCE'}
      ,{28,'CONTRACTORTYPE'}
      ,{29,'TSSBOOTHID'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_STATUS((SALT28.StrType)le.STATUS),
    Fields.InValid_ISSUE_TEXT((SALT28.StrType)le.ISSUE_TEXT),
    Fields.InValid_BOOTH_KEY((SALT28.StrType)le.BOOTH_KEY),
    Fields.InValid_CUSTOMER_KEY((SALT28.StrType)le.CUSTOMER_KEY),
    Fields.InValid_CONTACT_NAME((SALT28.StrType)le.CONTACT_NAME),
    Fields.InValid_CONTACT_PHONE((SALT28.StrType)le.CONTACT_PHONE),
    Fields.InValid_NOTIFICATION_IND((SALT28.StrType)le.NOTIFICATION_IND),
    Fields.InValid_PRIORITY((SALT28.StrType)le.PRIORITY),
    Fields.InValid_KEY((SALT28.StrType)le.KEY),
    Fields.InValid_EXHIBITOR_PRESENT_IND((SALT28.StrType)le.EXHIBITOR_PRESENT_IND),
    Fields.InValid_CREATED_DT((SALT28.StrType)le.CREATED_DT),
    Fields.InValid_CREATED_BY((SALT28.StrType)le.CREATED_BY),
    Fields.InValid_UPDATED_DT((SALT28.StrType)le.UPDATED_DT),
    Fields.InValid_UPDATED_BY((SALT28.StrType)le.UPDATED_BY),
    Fields.InValid_SOURCE((SALT28.StrType)le.SOURCE),
    Fields.InValid_CONTRACTOR_KEY((SALT28.StrType)le.CONTRACTOR_KEY),
    Fields.InValid_TYPE((SALT28.StrType)le.TYPE),
    Fields.InValid_CONTRACTOR_TYPE_KEY((SALT28.StrType)le.CONTRACTOR_TYPE_KEY),
    Fields.InValid_CE_SHOW_KEY((SALT28.StrType)le.CE_SHOW_KEY),
    Fields.InValid_CE_BOOTH_KEY((SALT28.StrType)le.CE_BOOTH_KEY),
    Fields.InValid_CE_CUSTOMER_KEY((SALT28.StrType)le.CE_CUSTOMER_KEY),
    Fields.InValid_CONTACT_INTL_PHONE_CD((SALT28.StrType)le.CONTACT_INTL_PHONE_CD),
    Fields.InValid_CE_MHA_KEY((SALT28.StrType)le.CE_MHA_KEY),
    Fields.InValid_NBR_LABELS_REQ((SALT28.StrType)le.NBR_LABELS_REQ),
    Fields.InValid_USER_ROLE((SALT28.StrType)le.USER_ROLE),
    Fields.InValid_CREATED_SOURCE((SALT28.StrType)le.CREATED_SOURCE),
    Fields.InValid_CONTRACTORTYPE((SALT28.StrType)le.CONTRACTORTYPE),
    Fields.InValid_TSSBOOTHID((SALT28.StrType)le.TSSBOOTHID),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,29,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_STATUS(TotalErrors.ErrorNum),Fields.InValidMessage_ISSUE_TEXT(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CUSTOMER_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CONTACT_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_CONTACT_PHONE(TotalErrors.ErrorNum),Fields.InValidMessage_NOTIFICATION_IND(TotalErrors.ErrorNum),Fields.InValidMessage_PRIORITY(TotalErrors.ErrorNum),Fields.InValidMessage_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR_PRESENT_IND(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_SOURCE(TotalErrors.ErrorNum),Fields.InValidMessage_CONTRACTOR_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_TYPE(TotalErrors.ErrorNum),Fields.InValidMessage_CONTRACTOR_TYPE_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_BOOTH_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_CUSTOMER_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CONTACT_INTL_PHONE_CD(TotalErrors.ErrorNum),Fields.InValidMessage_CE_MHA_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_NBR_LABELS_REQ(TotalErrors.ErrorNum),Fields.InValidMessage_USER_ROLE(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_SOURCE(TotalErrors.ErrorNum),Fields.InValidMessage_CONTRACTORTYPE(TotalErrors.ErrorNum),Fields.InValidMessage_TSSBOOTHID(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
