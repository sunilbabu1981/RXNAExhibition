import ut,SALT28;
export hygiene(dataset(layout_ShowExtractPrivacy) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_PrivacyIntMail_pcnt := AVE(GROUP,IF(h.PrivacyIntMail = (TYPEOF(h.PrivacyIntMail))'',0,100));
    maxlength_PrivacyIntMail := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntMail)));
    avelength_PrivacyIntMail := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntMail)),h.PrivacyIntMail<>(typeof(h.PrivacyIntMail))'');
    populated_PrivacyIntPhone_pcnt := AVE(GROUP,IF(h.PrivacyIntPhone = (TYPEOF(h.PrivacyIntPhone))'',0,100));
    maxlength_PrivacyIntPhone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntPhone)));
    avelength_PrivacyIntPhone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntPhone)),h.PrivacyIntPhone<>(typeof(h.PrivacyIntPhone))'');
    populated_PrivacyIntFax_pcnt := AVE(GROUP,IF(h.PrivacyIntFax = (TYPEOF(h.PrivacyIntFax))'',0,100));
    maxlength_PrivacyIntFax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntFax)));
    avelength_PrivacyIntFax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntFax)),h.PrivacyIntFax<>(typeof(h.PrivacyIntFax))'');
    populated_PrivacyIntEmail_pcnt := AVE(GROUP,IF(h.PrivacyIntEmail = (TYPEOF(h.PrivacyIntEmail))'',0,100));
    maxlength_PrivacyIntEmail := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntEmail)));
    avelength_PrivacyIntEmail := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyIntEmail)),h.PrivacyIntEmail<>(typeof(h.PrivacyIntEmail))'');
    populated_PrivacyExtMail_pcnt := AVE(GROUP,IF(h.PrivacyExtMail = (TYPEOF(h.PrivacyExtMail))'',0,100));
    maxlength_PrivacyExtMail := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtMail)));
    avelength_PrivacyExtMail := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtMail)),h.PrivacyExtMail<>(typeof(h.PrivacyExtMail))'');
    populated_PrivacyExtPhone_pcnt := AVE(GROUP,IF(h.PrivacyExtPhone = (TYPEOF(h.PrivacyExtPhone))'',0,100));
    maxlength_PrivacyExtPhone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtPhone)));
    avelength_PrivacyExtPhone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtPhone)),h.PrivacyExtPhone<>(typeof(h.PrivacyExtPhone))'');
    populated_PrivacyExtFax_pcnt := AVE(GROUP,IF(h.PrivacyExtFax = (TYPEOF(h.PrivacyExtFax))'',0,100));
    maxlength_PrivacyExtFax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtFax)));
    avelength_PrivacyExtFax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtFax)),h.PrivacyExtFax<>(typeof(h.PrivacyExtFax))'');
    populated_PrivacyExtEmail_pcnt := AVE(GROUP,IF(h.PrivacyExtEmail = (TYPEOF(h.PrivacyExtEmail))'',0,100));
    maxlength_PrivacyExtEmail := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtEmail)));
    avelength_PrivacyExtEmail := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyExtEmail)),h.PrivacyExtEmail<>(typeof(h.PrivacyExtEmail))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.PrivacyIntMail),TRIM((SALT28.StrType)le.PrivacyIntPhone),TRIM((SALT28.StrType)le.PrivacyIntFax),TRIM((SALT28.StrType)le.PrivacyIntEmail),TRIM((SALT28.StrType)le.PrivacyExtMail),TRIM((SALT28.StrType)le.PrivacyExtPhone),TRIM((SALT28.StrType)le.PrivacyExtFax),TRIM((SALT28.StrType)le.PrivacyExtEmail)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,9,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'CustomerID'}
      ,{2,'PrivacyIntMail'}
      ,{3,'PrivacyIntPhone'}
      ,{4,'PrivacyIntFax'}
      ,{5,'PrivacyIntEmail'}
      ,{6,'PrivacyExtMail'}
      ,{7,'PrivacyExtPhone'}
      ,{8,'PrivacyExtFax'}
      ,{9,'PrivacyExtEmail'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_PrivacyIntMail((SALT28.StrType)le.PrivacyIntMail),
    Fields.InValid_PrivacyIntPhone((SALT28.StrType)le.PrivacyIntPhone),
    Fields.InValid_PrivacyIntFax((SALT28.StrType)le.PrivacyIntFax),
    Fields.InValid_PrivacyIntEmail((SALT28.StrType)le.PrivacyIntEmail),
    Fields.InValid_PrivacyExtMail((SALT28.StrType)le.PrivacyExtMail),
    Fields.InValid_PrivacyExtPhone((SALT28.StrType)le.PrivacyExtPhone),
    Fields.InValid_PrivacyExtFax((SALT28.StrType)le.PrivacyExtFax),
    Fields.InValid_PrivacyExtEmail((SALT28.StrType)le.PrivacyExtEmail),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,9,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyIntMail(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyIntPhone(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyIntFax(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyIntEmail(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyExtMail(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyExtPhone(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyExtFax(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyExtEmail(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
