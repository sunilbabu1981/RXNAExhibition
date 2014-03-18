import ut,SALT28;
export hygiene(dataset(layout_MYSSocial) h) := MODULE
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
    populated_ExhibitorID_pcnt := AVE(GROUP,IF(h.ExhibitorID = (TYPEOF(h.ExhibitorID))'',0,100));
    maxlength_ExhibitorID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)));
    avelength_ExhibitorID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)),h.ExhibitorID<>(typeof(h.ExhibitorID))'');
    populated_Exhibitor_pcnt := AVE(GROUP,IF(h.Exhibitor = (TYPEOF(h.Exhibitor))'',0,100));
    maxlength_Exhibitor := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)));
    avelength_Exhibitor := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)),h.Exhibitor<>(typeof(h.Exhibitor))'');
    populated_Facebook_pcnt := AVE(GROUP,IF(h.Facebook = (TYPEOF(h.Facebook))'',0,100));
    maxlength_Facebook := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Facebook)));
    avelength_Facebook := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Facebook)),h.Facebook<>(typeof(h.Facebook))'');
    populated_Twitter_pcnt := AVE(GROUP,IF(h.Twitter = (TYPEOF(h.Twitter))'',0,100));
    maxlength_Twitter := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Twitter)));
    avelength_Twitter := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Twitter)),h.Twitter<>(typeof(h.Twitter))'');
    populated_LinkedIn_pcnt := AVE(GROUP,IF(h.LinkedIn = (TYPEOF(h.LinkedIn))'',0,100));
    maxlength_LinkedIn := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LinkedIn)));
    avelength_LinkedIn := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LinkedIn)),h.LinkedIn<>(typeof(h.LinkedIn))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.Exhibitor),TRIM((SALT28.StrType)le.Facebook),TRIM((SALT28.StrType)le.Twitter),TRIM((SALT28.StrType)le.LinkedIn)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,7,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'ExhibitorID'}
      ,{4,'Exhibitor'}
      ,{5,'Facebook'}
      ,{6,'Twitter'}
      ,{7,'LinkedIn'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_ExhibitorID((SALT28.StrType)le.ExhibitorID),
    Fields.InValid_Exhibitor((SALT28.StrType)le.Exhibitor),
    Fields.InValid_Facebook((SALT28.StrType)le.Facebook),
    Fields.InValid_Twitter((SALT28.StrType)le.Twitter),
    Fields.InValid_LinkedIn((SALT28.StrType)le.LinkedIn),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,7,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor(TotalErrors.ErrorNum),Fields.InValidMessage_Facebook(TotalErrors.ErrorNum),Fields.InValidMessage_Twitter(TotalErrors.ErrorNum),Fields.InValidMessage_LinkedIn(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
