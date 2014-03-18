import ut,SALT28;
export hygiene(dataset(layout_MYSShowFeatures	) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_Event_pcnt := AVE(GROUP,IF(h.Event = (TYPEOF(h.Event))'',0,100));
    maxlength_Event := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)));
    avelength_Event := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)),h.Event<>(typeof(h.Event))'');
    populated_Edition_pcnt := AVE(GROUP,IF(h.Edition = (TYPEOF(h.Edition))'',0,100));
    maxlength_Edition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)));
    avelength_Edition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)),h.Edition<>(typeof(h.Edition))'');
    populated_EXHIBITOR_pcnt := AVE(GROUP,IF(h.EXHIBITOR = (TYPEOF(h.EXHIBITOR))'',0,100));
    maxlength_EXHIBITOR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)));
    avelength_EXHIBITOR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)),h.EXHIBITOR<>(typeof(h.EXHIBITOR))'');
    populated_EMAIL_pcnt := AVE(GROUP,IF(h.EMAIL = (TYPEOF(h.EMAIL))'',0,100));
    maxlength_EMAIL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)));
    avelength_EMAIL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)),h.EMAIL<>(typeof(h.EMAIL))'');
    populated_EXHIBITORID_pcnt := AVE(GROUP,IF(h.EXHIBITORID = (TYPEOF(h.EXHIBITORID))'',0,100));
    maxlength_EXHIBITORID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)));
    avelength_EXHIBITORID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)),h.EXHIBITORID<>(typeof(h.EXHIBITORID))'');
    populated_PASSWORD_pcnt := AVE(GROUP,IF(h.PASSWORD = (TYPEOF(h.PASSWORD))'',0,100));
    maxlength_PASSWORD := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PASSWORD)));
    avelength_PASSWORD := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PASSWORD)),h.PASSWORD<>(typeof(h.PASSWORD))'');
    populated_FEATURE_TITLE_pcnt := AVE(GROUP,IF(h.FEATURE_TITLE = (TYPEOF(h.FEATURE_TITLE))'',0,100));
    maxlength_FEATURE_TITLE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FEATURE_TITLE)));
    avelength_FEATURE_TITLE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FEATURE_TITLE)),h.FEATURE_TITLE<>(typeof(h.FEATURE_TITLE))'');
    populated_MEDIA_FILE_pcnt := AVE(GROUP,IF(h.MEDIA_FILE = (TYPEOF(h.MEDIA_FILE))'',0,100));
    maxlength_MEDIA_FILE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MEDIA_FILE)));
    avelength_MEDIA_FILE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MEDIA_FILE)),h.MEDIA_FILE<>(typeof(h.MEDIA_FILE))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.EXHIBITOR),TRIM((SALT28.StrType)le.EMAIL),TRIM((SALT28.StrType)le.EXHIBITORID),TRIM((SALT28.StrType)le.PASSWORD),TRIM((SALT28.StrType)le.FEATURE_TITLE),TRIM((SALT28.StrType)le.MEDIA_FILE)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,8,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'EXHIBITOR'}
      ,{4,'EMAIL'}
      ,{5,'EXHIBITORID'}
      ,{6,'PASSWORD'}
      ,{7,'FEATURE_TITLE'}
      ,{8,'MEDIA_FILE'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_Event((SALT28.StrType)le.Event),
    Fields.InValid_Edition((SALT28.StrType)le.Edition),
    Fields.InValid_EXHIBITOR((SALT28.StrType)le.EXHIBITOR),
    Fields.InValid_EMAIL((SALT28.StrType)le.EMAIL),
    Fields.InValid_EXHIBITORID((SALT28.StrType)le.EXHIBITORID),
    Fields.InValid_PASSWORD((SALT28.StrType)le.PASSWORD),
    Fields.InValid_FEATURE_TITLE((SALT28.StrType)le.FEATURE_TITLE),
    Fields.InValid_MEDIA_FILE((SALT28.StrType)le.MEDIA_FILE),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,8,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR(TotalErrors.ErrorNum),Fields.InValidMessage_EMAIL(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITORID(TotalErrors.ErrorNum),Fields.InValidMessage_PASSWORD(TotalErrors.ErrorNum),Fields.InValidMessage_FEATURE_TITLE(TotalErrors.ErrorNum),Fields.InValidMessage_MEDIA_FILE(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
