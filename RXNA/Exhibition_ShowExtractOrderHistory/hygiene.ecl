import ut,SALT28;
export hygiene(dataset(layout_ShowExtractOrderHistory) h) := MODULE
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
    populated_OrderNumber_pcnt := AVE(GROUP,IF(h.OrderNumber = (TYPEOF(h.OrderNumber))'',0,100));
    maxlength_OrderNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)));
    avelength_OrderNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)),h.OrderNumber<>(typeof(h.OrderNumber))'');
    populated_OrderCreateDate_pcnt := AVE(GROUP,IF(h.OrderCreateDate = (TYPEOF(h.OrderCreateDate))'',0,100));
    maxlength_OrderCreateDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderCreateDate)));
    avelength_OrderCreateDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderCreateDate)),h.OrderCreateDate<>(typeof(h.OrderCreateDate))'');
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_BoothLength_pcnt := AVE(GROUP,IF(h.BoothLength = (TYPEOF(h.BoothLength))'',0,100));
    maxlength_BoothLength := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothLength)));
    avelength_BoothLength := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothLength)),h.BoothLength<>(typeof(h.BoothLength))'');
    populated_BoothWidth_pcnt := AVE(GROUP,IF(h.BoothWidth = (TYPEOF(h.BoothWidth))'',0,100));
    maxlength_BoothWidth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothWidth)));
    avelength_BoothWidth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothWidth)),h.BoothWidth<>(typeof(h.BoothWidth))'');
    populated_BoothSqFt_pcnt := AVE(GROUP,IF(h.BoothSqFt = (TYPEOF(h.BoothSqFt))'',0,100));
    maxlength_BoothSqFt := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothSqFt)));
    avelength_BoothSqFt := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothSqFt)),h.BoothSqFt<>(typeof(h.BoothSqFt))'');
    populated_UnitPrice_pcnt := AVE(GROUP,IF(h.UnitPrice = (TYPEOF(h.UnitPrice))'',0,100));
    maxlength_UnitPrice := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UnitPrice)));
    avelength_UnitPrice := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UnitPrice)),h.UnitPrice<>(typeof(h.UnitPrice))'');
    populated_BoothPrice_pcnt := AVE(GROUP,IF(h.BoothPrice = (TYPEOF(h.BoothPrice))'',0,100));
    maxlength_BoothPrice := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothPrice)));
    avelength_BoothPrice := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BoothPrice)),h.BoothPrice<>(typeof(h.BoothPrice))'');
    populated_TotalInvoice_pcnt := AVE(GROUP,IF(h.TotalInvoice = (TYPEOF(h.TotalInvoice))'',0,100));
    maxlength_TotalInvoice := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TotalInvoice)));
    avelength_TotalInvoice := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TotalInvoice)),h.TotalInvoice<>(typeof(h.TotalInvoice))'');
    populated_OrderStatus_pcnt := AVE(GROUP,IF(h.OrderStatus = (TYPEOF(h.OrderStatus))'',0,100));
    maxlength_OrderStatus := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderStatus)));
    avelength_OrderStatus := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderStatus)),h.OrderStatus<>(typeof(h.OrderStatus))'');
    populated_ContractRecvdDate_pcnt := AVE(GROUP,IF(h.ContractRecvdDate = (TYPEOF(h.ContractRecvdDate))'',0,100));
    maxlength_ContractRecvdDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ContractRecvdDate)));
    avelength_ContractRecvdDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ContractRecvdDate)),h.ContractRecvdDate<>(typeof(h.ContractRecvdDate))'');
    populated_DepositRecvdDate_pcnt := AVE(GROUP,IF(h.DepositRecvdDate = (TYPEOF(h.DepositRecvdDate))'',0,100));
    maxlength_DepositRecvdDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DepositRecvdDate)));
    avelength_DepositRecvdDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DepositRecvdDate)),h.DepositRecvdDate<>(typeof(h.DepositRecvdDate))'');
    populated_SegmentCode_pcnt := AVE(GROUP,IF(h.SegmentCode = (TYPEOF(h.SegmentCode))'',0,100));
    maxlength_SegmentCode := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SegmentCode)));
    avelength_SegmentCode := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SegmentCode)),h.SegmentCode<>(typeof(h.SegmentCode))'');
    populated_BillerID_pcnt := AVE(GROUP,IF(h.BillerID = (TYPEOF(h.BillerID))'',0,100));
    maxlength_BillerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BillerID)));
    avelength_BillerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BillerID)),h.BillerID<>(typeof(h.BillerID))'');
    populated_IncidentID_pcnt := AVE(GROUP,IF(h.IncidentID = (TYPEOF(h.IncidentID))'',0,100));
    maxlength_IncidentID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.IncidentID)));
    avelength_IncidentID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.IncidentID)),h.IncidentID<>(typeof(h.IncidentID))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.OrderNumber),TRIM((SALT28.StrType)le.OrderCreateDate),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.BoothLength),TRIM((SALT28.StrType)le.BoothWidth),TRIM((SALT28.StrType)le.BoothSqFt),TRIM((SALT28.StrType)le.UnitPrice),TRIM((SALT28.StrType)le.BoothPrice),TRIM((SALT28.StrType)le.TotalInvoice),TRIM((SALT28.StrType)le.OrderStatus),TRIM((SALT28.StrType)le.ContractRecvdDate),TRIM((SALT28.StrType)le.DepositRecvdDate),TRIM((SALT28.StrType)le.SegmentCode),TRIM((SALT28.StrType)le.BillerID),TRIM((SALT28.StrType)le.IncidentID)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,18,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'CustomerID'}
      ,{2,'Event'}
      ,{3,'Edition'}
      ,{4,'OrderNumber'}
      ,{5,'OrderCreateDate'}
      ,{6,'Booth'}
      ,{7,'BoothLength'}
      ,{8,'BoothWidth'}
      ,{9,'BoothSqFt'}
      ,{10,'UnitPrice'}
      ,{11,'BoothPrice'}
      ,{12,'TotalInvoice'}
      ,{13,'OrderStatus'}
      ,{14,'ContractRecvdDate'}
      ,{15,'DepositRecvdDate'}
      ,{16,'SegmentCode'}
      ,{17,'BillerID'}
      ,{18,'IncidentID'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_OrderNumber((SALT28.StrType)le.OrderNumber),
    Fields.InValid_OrderCreateDate((SALT28.StrType)le.OrderCreateDate),
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_BoothLength((SALT28.StrType)le.BoothLength),
    Fields.InValid_BoothWidth((SALT28.StrType)le.BoothWidth),
    Fields.InValid_BoothSqFt((SALT28.StrType)le.BoothSqFt),
    Fields.InValid_UnitPrice((SALT28.StrType)le.UnitPrice),
    Fields.InValid_BoothPrice((SALT28.StrType)le.BoothPrice),
    Fields.InValid_TotalInvoice((SALT28.StrType)le.TotalInvoice),
    Fields.InValid_OrderStatus((SALT28.StrType)le.OrderStatus),
    Fields.InValid_ContractRecvdDate((SALT28.StrType)le.ContractRecvdDate),
    Fields.InValid_DepositRecvdDate((SALT28.StrType)le.DepositRecvdDate),
    Fields.InValid_SegmentCode((SALT28.StrType)le.SegmentCode),
    Fields.InValid_BillerID((SALT28.StrType)le.BillerID),
    Fields.InValid_IncidentID((SALT28.StrType)le.IncidentID),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,18,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_OrderNumber(TotalErrors.ErrorNum),Fields.InValidMessage_OrderCreateDate(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_BoothLength(TotalErrors.ErrorNum),Fields.InValidMessage_BoothWidth(TotalErrors.ErrorNum),Fields.InValidMessage_BoothSqFt(TotalErrors.ErrorNum),Fields.InValidMessage_UnitPrice(TotalErrors.ErrorNum),Fields.InValidMessage_BoothPrice(TotalErrors.ErrorNum),Fields.InValidMessage_TotalInvoice(TotalErrors.ErrorNum),Fields.InValidMessage_OrderStatus(TotalErrors.ErrorNum),Fields.InValidMessage_ContractRecvdDate(TotalErrors.ErrorNum),Fields.InValidMessage_DepositRecvdDate(TotalErrors.ErrorNum),Fields.InValidMessage_SegmentCode(TotalErrors.ErrorNum),Fields.InValidMessage_BillerID(TotalErrors.ErrorNum),Fields.InValidMessage_IncidentID(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
