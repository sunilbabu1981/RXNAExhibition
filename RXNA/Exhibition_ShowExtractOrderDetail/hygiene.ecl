import ut,SALT28;
export hygiene(dataset(layout_ShowExtractOrderDetail) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_OrderNumber_pcnt := AVE(GROUP,IF(h.OrderNumber = (TYPEOF(h.OrderNumber))'',0,100));
    maxlength_OrderNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)));
    avelength_OrderNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)),h.OrderNumber<>(typeof(h.OrderNumber))'');
    populated_OrderLineNumber_pcnt := AVE(GROUP,IF(h.OrderLineNumber = (TYPEOF(h.OrderLineNumber))'',0,100));
    maxlength_OrderLineNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)));
    avelength_OrderLineNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)),h.OrderLineNumber<>(typeof(h.OrderLineNumber))'');
    populated_RevenueType_pcnt := AVE(GROUP,IF(h.RevenueType = (TYPEOF(h.RevenueType))'',0,100));
    maxlength_RevenueType := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RevenueType)));
    avelength_RevenueType := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RevenueType)),h.RevenueType<>(typeof(h.RevenueType))'');
    populated_RevenueItem_pcnt := AVE(GROUP,IF(h.RevenueItem = (TYPEOF(h.RevenueItem))'',0,100));
    maxlength_RevenueItem := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RevenueItem)));
    avelength_RevenueItem := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RevenueItem)),h.RevenueItem<>(typeof(h.RevenueItem))'');
    populated_OrderLineStatus_pcnt := AVE(GROUP,IF(h.OrderLineStatus = (TYPEOF(h.OrderLineStatus))'',0,100));
    maxlength_OrderLineStatus := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineStatus)));
    avelength_OrderLineStatus := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineStatus)),h.OrderLineStatus<>(typeof(h.OrderLineStatus))'');
    populated_QuantityOrdered_pcnt := AVE(GROUP,IF(h.QuantityOrdered = (TYPEOF(h.QuantityOrdered))'',0,100));
    maxlength_QuantityOrdered := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QuantityOrdered)));
    avelength_QuantityOrdered := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QuantityOrdered)),h.QuantityOrdered<>(typeof(h.QuantityOrdered))'');
    populated_TotalPrice_pcnt := AVE(GROUP,IF(h.TotalPrice = (TYPEOF(h.TotalPrice))'',0,100));
    maxlength_TotalPrice := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TotalPrice)));
    avelength_TotalPrice := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TotalPrice)),h.TotalPrice<>(typeof(h.TotalPrice))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.OrderNumber),TRIM((SALT28.StrType)le.OrderLineNumber),TRIM((SALT28.StrType)le.RevenueType),TRIM((SALT28.StrType)le.RevenueItem),TRIM((SALT28.StrType)le.OrderLineStatus),TRIM((SALT28.StrType)le.QuantityOrdered),TRIM((SALT28.StrType)le.TotalPrice)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,7,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'OrderNumber'}
      ,{2,'OrderLineNumber'}
      ,{3,'RevenueType'}
      ,{4,'RevenueItem'}
      ,{5,'OrderLineStatus'}
      ,{6,'QuantityOrdered'}
      ,{7,'TotalPrice'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_OrderNumber((SALT28.StrType)le.OrderNumber),
    Fields.InValid_OrderLineNumber((SALT28.StrType)le.OrderLineNumber),
    Fields.InValid_RevenueType((SALT28.StrType)le.RevenueType),
    Fields.InValid_RevenueItem((SALT28.StrType)le.RevenueItem),
    Fields.InValid_OrderLineStatus((SALT28.StrType)le.OrderLineStatus),
    Fields.InValid_QuantityOrdered((SALT28.StrType)le.QuantityOrdered),
    Fields.InValid_TotalPrice((SALT28.StrType)le.TotalPrice),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_OrderNumber(TotalErrors.ErrorNum),Fields.InValidMessage_OrderLineNumber(TotalErrors.ErrorNum),Fields.InValidMessage_RevenueType(TotalErrors.ErrorNum),Fields.InValidMessage_RevenueItem(TotalErrors.ErrorNum),Fields.InValidMessage_OrderLineStatus(TotalErrors.ErrorNum),Fields.InValidMessage_QuantityOrdered(TotalErrors.ErrorNum),Fields.InValidMessage_TotalPrice(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
