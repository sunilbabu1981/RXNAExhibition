import ut,SALT28;
export hygiene(dataset(layout_MobileExhibitorWayFinding) h) := MODULE
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
    populated_sherpaID_pcnt := AVE(GROUP,IF(h.sherpaID = (TYPEOF(h.sherpaID))'',0,100));
    maxlength_sherpaID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.sherpaID)));
    avelength_sherpaID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.sherpaID)),h.sherpaID<>(typeof(h.sherpaID))'');
    populated_CompanyName_pcnt := AVE(GROUP,IF(h.CompanyName = (TYPEOF(h.CompanyName))'',0,100));
    maxlength_CompanyName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)));
    avelength_CompanyName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)),h.CompanyName<>(typeof(h.CompanyName))'');
    populated_ExhibitorID_pcnt := AVE(GROUP,IF(h.ExhibitorID = (TYPEOF(h.ExhibitorID))'',0,100));
    maxlength_ExhibitorID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)));
    avelength_ExhibitorID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)),h.ExhibitorID<>(typeof(h.ExhibitorID))'');
    populated_action_pcnt := AVE(GROUP,IF(h.action = (TYPEOF(h.action))'',0,100));
    maxlength_action := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.action)));
    avelength_action := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.action)),h.action<>(typeof(h.action))'');
    populated_count_pcnt := AVE(GROUP,IF(h.count = (TYPEOF(h.count))'',0,100));
    maxlength_count := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.count)));
    avelength_count := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.count)),h.count<>(typeof(h.count))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.sherpaID),TRIM((SALT28.StrType)le.CompanyName),TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.action),TRIM((SALT28.StrType)le.count)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,7,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'sherpaID'}
      ,{4,'CompanyName'}
      ,{5,'ExhibitorID'}
      ,{6,'action'}
      ,{7,'count'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_sherpaID((SALT28.StrType)le.sherpaID),
    Fields.InValid_CompanyName((SALT28.StrType)le.CompanyName),
    Fields.InValid_ExhibitorID((SALT28.StrType)le.ExhibitorID),
    Fields.InValid_action((SALT28.StrType)le.action),
    Fields.InValid_count((SALT28.StrType)le.count),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_sherpaID(TotalErrors.ErrorNum),Fields.InValidMessage_CompanyName(TotalErrors.ErrorNum),Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_action(TotalErrors.ErrorNum),Fields.InValidMessage_count(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
