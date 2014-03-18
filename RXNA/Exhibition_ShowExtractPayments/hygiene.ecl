import ut,SALT28;
export hygiene(dataset(layout_ShowExtractPayments) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_PaymentID_pcnt := AVE(GROUP,IF(h.PaymentID = (TYPEOF(h.PaymentID))'',0,100));
    maxlength_PaymentID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PaymentID)));
    avelength_PaymentID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PaymentID)),h.PaymentID<>(typeof(h.PaymentID))'');
    populated_OrderNumber_pcnt := AVE(GROUP,IF(h.OrderNumber = (TYPEOF(h.OrderNumber))'',0,100));
    maxlength_OrderNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)));
    avelength_OrderNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)),h.OrderNumber<>(typeof(h.OrderNumber))'');
    populated_OrderLineNumber_pcnt := AVE(GROUP,IF(h.OrderLineNumber = (TYPEOF(h.OrderLineNumber))'',0,100));
    maxlength_OrderLineNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)));
    avelength_OrderLineNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)),h.OrderLineNumber<>(typeof(h.OrderLineNumber))'');
    populated_PaymentAmount_pcnt := AVE(GROUP,IF(h.PaymentAmount = (TYPEOF(h.PaymentAmount))'',0,100));
    maxlength_PaymentAmount := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PaymentAmount)));
    avelength_PaymentAmount := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PaymentAmount)),h.PaymentAmount<>(typeof(h.PaymentAmount))'');
    populated_InsertDate_pcnt := AVE(GROUP,IF(h.InsertDate = (TYPEOF(h.InsertDate))'',0,100));
    maxlength_InsertDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.InsertDate)));
    avelength_InsertDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.InsertDate)),h.InsertDate<>(typeof(h.InsertDate))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.PaymentID),TRIM((SALT28.StrType)le.OrderNumber),TRIM((SALT28.StrType)le.OrderLineNumber),TRIM((SALT28.StrType)le.PaymentAmount),TRIM((SALT28.StrType)le.InsertDate)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,5,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'PaymentID'}
      ,{2,'OrderNumber'}
      ,{3,'OrderLineNumber'}
      ,{4,'PaymentAmount'}
      ,{5,'InsertDate'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_PaymentID((SALT28.StrType)le.PaymentID),
    Fields.InValid_OrderNumber((SALT28.StrType)le.OrderNumber),
    Fields.InValid_OrderLineNumber((SALT28.StrType)le.OrderLineNumber),
    Fields.InValid_PaymentAmount((SALT28.StrType)le.PaymentAmount),
    Fields.InValid_InsertDate((SALT28.StrType)le.InsertDate),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_PaymentID(TotalErrors.ErrorNum),Fields.InValidMessage_OrderNumber(TotalErrors.ErrorNum),Fields.InValidMessage_OrderLineNumber(TotalErrors.ErrorNum),Fields.InValidMessage_PaymentAmount(TotalErrors.ErrorNum),Fields.InValidMessage_InsertDate(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
