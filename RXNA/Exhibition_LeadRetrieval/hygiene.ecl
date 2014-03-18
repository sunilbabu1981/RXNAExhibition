import ut,SALT28;
export hygiene(dataset(layout_LeadRetrieval) h) := MODULE
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
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_Lead_Unit_pcnt := AVE(GROUP,IF(h.Lead_Unit = (TYPEOF(h.Lead_Unit))'',0,100));
    maxlength_Lead_Unit := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Lead_Unit)));
    avelength_Lead_Unit := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Lead_Unit)),h.Lead_Unit<>(typeof(h.Lead_Unit))'');
    populated_Badge_ID_pcnt := AVE(GROUP,IF(h.Badge_ID = (TYPEOF(h.Badge_ID))'',0,100));
    maxlength_Badge_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Badge_ID)));
    avelength_Badge_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Badge_ID)),h.Badge_ID<>(typeof(h.Badge_ID))'');
    populated_Individual_ID_pcnt := AVE(GROUP,IF(h.Individual_ID = (TYPEOF(h.Individual_ID))'',0,100));
    maxlength_Individual_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Individual_ID)));
    avelength_Individual_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Individual_ID)),h.Individual_ID<>(typeof(h.Individual_ID))'');
    populated_Class_Code_pcnt := AVE(GROUP,IF(h.Class_Code = (TYPEOF(h.Class_Code))'',0,100));
    maxlength_Class_Code := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Class_Code)));
    avelength_Class_Code := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Class_Code)),h.Class_Code<>(typeof(h.Class_Code))'');
    populated_Swipe_Date_pcnt := AVE(GROUP,IF(h.Swipe_Date = (TYPEOF(h.Swipe_Date))'',0,100));
    maxlength_Swipe_Date := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Swipe_Date)));
    avelength_Swipe_Date := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Swipe_Date)),h.Swipe_Date<>(typeof(h.Swipe_Date))'');
    populated_Swipe_Time_pcnt := AVE(GROUP,IF(h.Swipe_Time = (TYPEOF(h.Swipe_Time))'',0,100));
    maxlength_Swipe_Time := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Swipe_Time)));
    avelength_Swipe_Time := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Swipe_Time)),h.Swipe_Time<>(typeof(h.Swipe_Time))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.Lead_Unit),TRIM((SALT28.StrType)le.Badge_ID),TRIM((SALT28.StrType)le.Individual_ID),TRIM((SALT28.StrType)le.Class_Code),TRIM((SALT28.StrType)le.Swipe_Date),TRIM((SALT28.StrType)le.Swipe_Time)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,10,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'CustomerID'}
      ,{4,'Booth'}
      ,{5,'Lead_Unit'}
      ,{6,'Badge_ID'}
      ,{7,'Individual_ID'}
      ,{8,'Class_Code'}
      ,{9,'Swipe_Date'}
      ,{10,'Swipe_Time'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_Lead_Unit((SALT28.StrType)le.Lead_Unit),
    Fields.InValid_Badge_ID((SALT28.StrType)le.Badge_ID),
    Fields.InValid_Individual_ID((SALT28.StrType)le.Individual_ID),
    Fields.InValid_Class_Code((SALT28.StrType)le.Class_Code),
    Fields.InValid_Swipe_Date((SALT28.StrType)le.Swipe_Date),
    Fields.InValid_Swipe_Time((SALT28.StrType)le.Swipe_Time),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,10,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_Lead_Unit(TotalErrors.ErrorNum),Fields.InValidMessage_Badge_ID(TotalErrors.ErrorNum),Fields.InValidMessage_Individual_ID(TotalErrors.ErrorNum),Fields.InValidMessage_Class_Code(TotalErrors.ErrorNum),Fields.InValidMessage_Swipe_Date(TotalErrors.ErrorNum),Fields.InValidMessage_Swipe_Time(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
