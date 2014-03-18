import ut,SALT28;
export hygiene(dataset(layout_ceIssueItem) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_ISSUE_KEY_pcnt := AVE(GROUP,IF(h.ISSUE_KEY = (TYPEOF(h.ISSUE_KEY))'',0,100));
    maxlength_ISSUE_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_KEY)));
    avelength_ISSUE_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_KEY)),h.ISSUE_KEY<>(typeof(h.ISSUE_KEY))'');
    populated_KEY_pcnt := AVE(GROUP,IF(h.KEY = (TYPEOF(h.KEY))'',0,100));
    maxlength_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)));
    avelength_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)),h.KEY<>(typeof(h.KEY))'');
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
    populated_STATUS_pcnt := AVE(GROUP,IF(h.STATUS = (TYPEOF(h.STATUS))'',0,100));
    maxlength_STATUS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATUS)));
    avelength_STATUS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATUS)),h.STATUS<>(typeof(h.STATUS))'');
    populated_CONTRACTOR_KEY_pcnt := AVE(GROUP,IF(h.CONTRACTOR_KEY = (TYPEOF(h.CONTRACTOR_KEY))'',0,100));
    maxlength_CONTRACTOR_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_KEY)));
    avelength_CONTRACTOR_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTRACTOR_KEY)),h.CONTRACTOR_KEY<>(typeof(h.CONTRACTOR_KEY))'');
    populated_SHOW_CONTRACTOR_ASSN_KEY_pcnt := AVE(GROUP,IF(h.SHOW_CONTRACTOR_ASSN_KEY = (TYPEOF(h.SHOW_CONTRACTOR_ASSN_KEY))'',0,100));
    maxlength_SHOW_CONTRACTOR_ASSN_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_CONTRACTOR_ASSN_KEY)));
    avelength_SHOW_CONTRACTOR_ASSN_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_CONTRACTOR_ASSN_KEY)),h.SHOW_CONTRACTOR_ASSN_KEY<>(typeof(h.SHOW_CONTRACTOR_ASSN_KEY))'');
    populated_ISSUE_TEXT_pcnt := AVE(GROUP,IF(h.ISSUE_TEXT = (TYPEOF(h.ISSUE_TEXT))'',0,100));
    maxlength_ISSUE_TEXT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_TEXT)));
    avelength_ISSUE_TEXT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ISSUE_TEXT)),h.ISSUE_TEXT<>(typeof(h.ISSUE_TEXT))'');
    populated_CE_SHOW_KEY_pcnt := AVE(GROUP,IF(h.CE_SHOW_KEY = (TYPEOF(h.CE_SHOW_KEY))'',0,100));
    maxlength_CE_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)));
    avelength_CE_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)),h.CE_SHOW_KEY<>(typeof(h.CE_SHOW_KEY))'');
    populated_EXHIBITOR_PRESENT_IND_pcnt := AVE(GROUP,IF(h.EXHIBITOR_PRESENT_IND = (TYPEOF(h.EXHIBITOR_PRESENT_IND))'',0,100));
    maxlength_EXHIBITOR_PRESENT_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_PRESENT_IND)));
    avelength_EXHIBITOR_PRESENT_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR_PRESENT_IND)),h.EXHIBITOR_PRESENT_IND<>(typeof(h.EXHIBITOR_PRESENT_IND))'');
    populated_TSSBOOTHID_pcnt := AVE(GROUP,IF(h.TSSBOOTHID = (TYPEOF(h.TSSBOOTHID))'',0,100));
    maxlength_TSSBOOTHID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)));
    avelength_TSSBOOTHID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)),h.TSSBOOTHID<>(typeof(h.TSSBOOTHID))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.ISSUE_KEY),TRIM((SALT28.StrType)le.KEY),TRIM((SALT28.StrType)le.CREATED_DT),TRIM((SALT28.StrType)le.CREATED_BY),TRIM((SALT28.StrType)le.UPDATED_DT),TRIM((SALT28.StrType)le.UPDATED_BY),TRIM((SALT28.StrType)le.SOURCE),TRIM((SALT28.StrType)le.STATUS),TRIM((SALT28.StrType)le.CONTRACTOR_KEY),TRIM((SALT28.StrType)le.SHOW_CONTRACTOR_ASSN_KEY),TRIM((SALT28.StrType)le.ISSUE_TEXT),TRIM((SALT28.StrType)le.CE_SHOW_KEY),TRIM((SALT28.StrType)le.EXHIBITOR_PRESENT_IND),TRIM((SALT28.StrType)le.TSSBOOTHID)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,15,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'SHOW_KEY'}
      ,{2,'ISSUE_KEY'}
      ,{3,'KEY'}
      ,{4,'CREATED_DT'}
      ,{5,'CREATED_BY'}
      ,{6,'UPDATED_DT'}
      ,{7,'UPDATED_BY'}
      ,{8,'SOURCE'}
      ,{9,'STATUS'}
      ,{10,'CONTRACTOR_KEY'}
      ,{11,'SHOW_CONTRACTOR_ASSN_KEY'}
      ,{12,'ISSUE_TEXT'}
      ,{13,'CE_SHOW_KEY'}
      ,{14,'EXHIBITOR_PRESENT_IND'}
      ,{15,'TSSBOOTHID'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_ISSUE_KEY((SALT28.StrType)le.ISSUE_KEY),
    Fields.InValid_KEY((SALT28.StrType)le.KEY),
    Fields.InValid_CREATED_DT((SALT28.StrType)le.CREATED_DT),
    Fields.InValid_CREATED_BY((SALT28.StrType)le.CREATED_BY),
    Fields.InValid_UPDATED_DT((SALT28.StrType)le.UPDATED_DT),
    Fields.InValid_UPDATED_BY((SALT28.StrType)le.UPDATED_BY),
    Fields.InValid_SOURCE((SALT28.StrType)le.SOURCE),
    Fields.InValid_STATUS((SALT28.StrType)le.STATUS),
    Fields.InValid_CONTRACTOR_KEY((SALT28.StrType)le.CONTRACTOR_KEY),
    Fields.InValid_SHOW_CONTRACTOR_ASSN_KEY((SALT28.StrType)le.SHOW_CONTRACTOR_ASSN_KEY),
    Fields.InValid_ISSUE_TEXT((SALT28.StrType)le.ISSUE_TEXT),
    Fields.InValid_CE_SHOW_KEY((SALT28.StrType)le.CE_SHOW_KEY),
    Fields.InValid_EXHIBITOR_PRESENT_IND((SALT28.StrType)le.EXHIBITOR_PRESENT_IND),
    Fields.InValid_TSSBOOTHID((SALT28.StrType)le.TSSBOOTHID),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,15,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_ISSUE_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_SOURCE(TotalErrors.ErrorNum),Fields.InValidMessage_STATUS(TotalErrors.ErrorNum),Fields.InValidMessage_CONTRACTOR_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_SHOW_CONTRACTOR_ASSN_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_ISSUE_TEXT(TotalErrors.ErrorNum),Fields.InValidMessage_CE_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR_PRESENT_IND(TotalErrors.ErrorNum),Fields.InValidMessage_TSSBOOTHID(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
