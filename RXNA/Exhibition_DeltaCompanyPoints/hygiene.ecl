import ut,SALT28;
export hygiene(dataset(layout_DeltaCompanyPoints) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_Event_pcnt := AVE(GROUP,IF(h.Event = (TYPEOF(h.Event))'',0,100));
    maxlength_Event := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)));
    avelength_Event := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)),h.Event<>(typeof(h.Event))'');
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_DeltaPoints_pcnt := AVE(GROUP,IF(h.DeltaPoints = (TYPEOF(h.DeltaPoints))'',0,100));
    maxlength_DeltaPoints := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DeltaPoints)));
    avelength_DeltaPoints := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DeltaPoints)),h.DeltaPoints<>(typeof(h.DeltaPoints))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.DeltaPoints)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,3,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'CustomerID'}
      ,{3,'DeltaPoints'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_Event((SALT28.StrType)le.Event),
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_DeltaPoints((SALT28.StrType)le.DeltaPoints),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,3,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_DeltaPoints(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
