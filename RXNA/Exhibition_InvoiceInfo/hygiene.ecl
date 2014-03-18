import ut,SALT28;
export hygiene(dataset(layout_InvoiceInfo) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_Event_pcnt := AVE(GROUP,IF(h.Event = (TYPEOF(h.Event))'',0,100));
    maxlength_Event := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)));
    avelength_Event := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)),h.Event<>(typeof(h.Event))'');
    populated_Edition_pcnt := AVE(GROUP,IF(h.Edition = (TYPEOF(h.Edition))'',0,100));
    maxlength_Edition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)));
    avelength_Edition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)),h.Edition<>(typeof(h.Edition))'');
    populated_Invoiced_pcnt := AVE(GROUP,IF(h.Invoiced = (TYPEOF(h.Invoiced))'',0,100));
    maxlength_Invoiced := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Invoiced)));
    avelength_Invoiced := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Invoiced)),h.Invoiced<>(typeof(h.Invoiced))'');
    populated_Paid_pcnt := AVE(GROUP,IF(h.Paid = (TYPEOF(h.Paid))'',0,100));
    maxlength_Paid := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Paid)));
    avelength_Paid := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Paid)),h.Paid<>(typeof(h.Paid))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Invoiced),TRIM((SALT28.StrType)le.Paid)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,5,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'CustomerID'}
      ,{2,'Event'}
      ,{3,'Edition'}
      ,{4,'Invoiced'}
      ,{5,'Paid'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_Event((SALT28.StrType)le.Event),
    Fields.InValid_Edition((SALT28.StrType)le.Edition),
    Fields.InValid_Invoiced((SALT28.StrType)le.Invoiced),
    Fields.InValid_Paid((SALT28.StrType)le.Paid),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,5,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Invoiced(TotalErrors.ErrorNum),Fields.InValidMessage_Paid(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
