import ut,SALT28;
export hygiene(dataset(layout_MobileExhibitorStats) h) := MODULE
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
    populated_CompanyName_pcnt := AVE(GROUP,IF(h.CompanyName = (TYPEOF(h.CompanyName))'',0,100));
    maxlength_CompanyName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)));
    avelength_CompanyName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)),h.CompanyName<>(typeof(h.CompanyName))'');
    populated_ExhibitorID_pcnt := AVE(GROUP,IF(h.ExhibitorID = (TYPEOF(h.ExhibitorID))'',0,100));
    maxlength_ExhibitorID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)));
    avelength_ExhibitorID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)),h.ExhibitorID<>(typeof(h.ExhibitorID))'');
    populated_action_pcnt := AVE(GROUP,IF(h.action = (TYPEOF(h.action))'',0,100));
    maxlength_action := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.action)));
    avelength_action := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.action)),h.action<>(typeof(h.action))'');
    populated_visits_pcnt := AVE(GROUP,IF(h.visits = (TYPEOF(h.visits))'',0,100));
    maxlength_visits := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.visits)));
    avelength_visits := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.visits)),h.visits<>(typeof(h.visits))'');
    populated_views_pcnt := AVE(GROUP,IF(h.views = (TYPEOF(h.views))'',0,100));
    maxlength_views := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.views)));
    avelength_views := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.views)),h.views<>(typeof(h.views))'');
    populated_visitors_pcnt := AVE(GROUP,IF(h.visitors = (TYPEOF(h.visitors))'',0,100));
    maxlength_visitors := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.visitors)));
    avelength_visitors := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.visitors)),h.visitors<>(typeof(h.visitors))'');
    populated_users_pcnt := AVE(GROUP,IF(h.users = (TYPEOF(h.users))'',0,100));
    maxlength_users := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.users)));
    avelength_users := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.users)),h.users<>(typeof(h.users))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.CompanyName),TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.action),TRIM((SALT28.StrType)le.visits),TRIM((SALT28.StrType)le.views),TRIM((SALT28.StrType)le.visitors),TRIM((SALT28.StrType)le.users)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,9,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'CompanyName'}
      ,{4,'ExhibitorID'}
      ,{5,'action'}
      ,{6,'visits'}
      ,{7,'views'}
      ,{8,'visitors'}
      ,{9,'users'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_CompanyName((SALT28.StrType)le.CompanyName),
    Fields.InValid_ExhibitorID((SALT28.StrType)le.ExhibitorID),
    Fields.InValid_action((SALT28.StrType)le.action),
    Fields.InValid_visits((SALT28.StrType)le.visits),
    Fields.InValid_views((SALT28.StrType)le.views),
    Fields.InValid_visitors((SALT28.StrType)le.visitors),
    Fields.InValid_users((SALT28.StrType)le.users),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_CompanyName(TotalErrors.ErrorNum),Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_action(TotalErrors.ErrorNum),Fields.InValidMessage_visits(TotalErrors.ErrorNum),Fields.InValidMessage_views(TotalErrors.ErrorNum),Fields.InValidMessage_visitors(TotalErrors.ErrorNum),Fields.InValidMessage_users(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
