import ut,SALT28;
export hygiene(dataset(layout_MYSHistory) h) := MODULE
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
    populated_Date_pcnt := AVE(GROUP,IF(h.Date = (TYPEOF(h.Date))'',0,100));
    maxlength_Date := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Date)));
    avelength_Date := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Date)),h.Date<>(typeof(h.Date))'');
    populated_Exhibitor_ID_pcnt := AVE(GROUP,IF(h.Exhibitor_ID = (TYPEOF(h.Exhibitor_ID))'',0,100));
    maxlength_Exhibitor_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_ID)));
    avelength_Exhibitor_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_ID)),h.Exhibitor_ID<>(typeof(h.Exhibitor_ID))'');
    populated_Exhibitor_pcnt := AVE(GROUP,IF(h.Exhibitor = (TYPEOF(h.Exhibitor))'',0,100));
    maxlength_Exhibitor := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)));
    avelength_Exhibitor := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)),h.Exhibitor<>(typeof(h.Exhibitor))'');
    populated_File_pcnt := AVE(GROUP,IF(h.File = (TYPEOF(h.File))'',0,100));
    maxlength_File := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.File)));
    avelength_File := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.File)),h.File<>(typeof(h.File))'');
    populated_Field_pcnt := AVE(GROUP,IF(h.Field = (TYPEOF(h.Field))'',0,100));
    maxlength_Field := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Field)));
    avelength_Field := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Field)),h.Field<>(typeof(h.Field))'');
    populated_Action_pcnt := AVE(GROUP,IF(h.Action = (TYPEOF(h.Action))'',0,100));
    maxlength_Action := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Action)));
    avelength_Action := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Action)),h.Action<>(typeof(h.Action))'');
    populated_Before_pcnt := AVE(GROUP,IF(h.Before = (TYPEOF(h.Before))'',0,100));
    maxlength_Before := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Before)));
    avelength_Before := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Before)),h.Before<>(typeof(h.Before))'');
    populated_After_pcnt := AVE(GROUP,IF(h.After = (TYPEOF(h.After))'',0,100));
    maxlength_After := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.After)));
    avelength_After := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.After)),h.After<>(typeof(h.After))'');
    populated_Who_pcnt := AVE(GROUP,IF(h.Who = (TYPEOF(h.Who))'',0,100));
    maxlength_Who := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Who)));
    avelength_Who := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Who)),h.Who<>(typeof(h.Who))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Date),TRIM((SALT28.StrType)le.Exhibitor_ID),TRIM((SALT28.StrType)le.Exhibitor),TRIM((SALT28.StrType)le.File),TRIM((SALT28.StrType)le.Field),TRIM((SALT28.StrType)le.Action),TRIM((SALT28.StrType)le.Before),TRIM((SALT28.StrType)le.After),TRIM((SALT28.StrType)le.Who)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,11,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'Date'}
      ,{4,'Exhibitor_ID'}
      ,{5,'Exhibitor'}
      ,{6,'File'}
      ,{7,'Field'}
      ,{8,'Action'}
      ,{9,'Before'}
      ,{10,'After'}
      ,{11,'Who'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_Date((SALT28.StrType)le.Date),
    Fields.InValid_Exhibitor_ID((SALT28.StrType)le.Exhibitor_ID),
    Fields.InValid_Exhibitor((SALT28.StrType)le.Exhibitor),
    Fields.InValid_File((SALT28.StrType)le.File),
    Fields.InValid_Field((SALT28.StrType)le.Field),
    Fields.InValid_Action((SALT28.StrType)le.Action),
    Fields.InValid_Before((SALT28.StrType)le.Before),
    Fields.InValid_After((SALT28.StrType)le.After),
    Fields.InValid_Who((SALT28.StrType)le.Who),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Date(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor_ID(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor(TotalErrors.ErrorNum),Fields.InValidMessage_File(TotalErrors.ErrorNum),Fields.InValidMessage_Field(TotalErrors.ErrorNum),Fields.InValidMessage_Action(TotalErrors.ErrorNum),Fields.InValidMessage_Before(TotalErrors.ErrorNum),Fields.InValidMessage_After(TotalErrors.ErrorNum),Fields.InValidMessage_Who(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
