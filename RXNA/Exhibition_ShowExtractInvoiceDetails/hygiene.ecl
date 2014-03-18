import ut,SALT28;
export hygiene(dataset(layout_ShowExtractInvoiceDetails) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_InvoiceNumber_pcnt := AVE(GROUP,IF(h.InvoiceNumber = (TYPEOF(h.InvoiceNumber))'',0,100));
    maxlength_InvoiceNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.InvoiceNumber)));
    avelength_InvoiceNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.InvoiceNumber)),h.InvoiceNumber<>(typeof(h.InvoiceNumber))'');
    populated_InvoiceLineNumber_pcnt := AVE(GROUP,IF(h.InvoiceLineNumber = (TYPEOF(h.InvoiceLineNumber))'',0,100));
    maxlength_InvoiceLineNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.InvoiceLineNumber)));
    avelength_InvoiceLineNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.InvoiceLineNumber)),h.InvoiceLineNumber<>(typeof(h.InvoiceLineNumber))'');
    populated_OrderNumber_pcnt := AVE(GROUP,IF(h.OrderNumber = (TYPEOF(h.OrderNumber))'',0,100));
    maxlength_OrderNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)));
    avelength_OrderNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderNumber)),h.OrderNumber<>(typeof(h.OrderNumber))'');
    populated_OrderLineNumber_pcnt := AVE(GROUP,IF(h.OrderLineNumber = (TYPEOF(h.OrderLineNumber))'',0,100));
    maxlength_OrderLineNumber := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)));
    avelength_OrderLineNumber := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OrderLineNumber)),h.OrderLineNumber<>(typeof(h.OrderLineNumber))'');
    populated_mInvoiceAmount_pcnt := AVE(GROUP,IF(h.mInvoiceAmount = (TYPEOF(h.mInvoiceAmount))'',0,100));
    maxlength_mInvoiceAmount := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmount)));
    avelength_mInvoiceAmount := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmount)),h.mInvoiceAmount<>(typeof(h.mInvoiceAmount))'');
    populated_mBalanceAmount_pcnt := AVE(GROUP,IF(h.mBalanceAmount = (TYPEOF(h.mBalanceAmount))'',0,100));
    maxlength_mBalanceAmount := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmount)));
    avelength_mBalanceAmount := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmount)),h.mBalanceAmount<>(typeof(h.mBalanceAmount))'');
    populated_bARTransferFlag_pcnt := AVE(GROUP,IF(h.bARTransferFlag = (TYPEOF(h.bARTransferFlag))'',0,100));
    maxlength_bARTransferFlag := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.bARTransferFlag)));
    avelength_bARTransferFlag := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.bARTransferFlag)),h.bARTransferFlag<>(typeof(h.bARTransferFlag))'');
    populated_iPaymentTermId_pcnt := AVE(GROUP,IF(h.iPaymentTermId = (TYPEOF(h.iPaymentTermId))'',0,100));
    maxlength_iPaymentTermId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iPaymentTermId)));
    avelength_iPaymentTermId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iPaymentTermId)),h.iPaymentTermId<>(typeof(h.iPaymentTermId))'');
    populated_iScheduleId_pcnt := AVE(GROUP,IF(h.iScheduleId = (TYPEOF(h.iScheduleId))'',0,100));
    maxlength_iScheduleId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iScheduleId)));
    avelength_iScheduleId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iScheduleId)),h.iScheduleId<>(typeof(h.iScheduleId))'');
    populated_iTaxId_pcnt := AVE(GROUP,IF(h.iTaxId = (TYPEOF(h.iTaxId))'',0,100));
    maxlength_iTaxId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iTaxId)));
    avelength_iTaxId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iTaxId)),h.iTaxId<>(typeof(h.iTaxId))'');
    populated_mInvoiceAmountSite_pcnt := AVE(GROUP,IF(h.mInvoiceAmountSite = (TYPEOF(h.mInvoiceAmountSite))'',0,100));
    maxlength_mInvoiceAmountSite := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmountSite)));
    avelength_mInvoiceAmountSite := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmountSite)),h.mInvoiceAmountSite<>(typeof(h.mInvoiceAmountSite))'');
    populated_mInvoiceAmountTriang_pcnt := AVE(GROUP,IF(h.mInvoiceAmountTriang = (TYPEOF(h.mInvoiceAmountTriang))'',0,100));
    maxlength_mInvoiceAmountTriang := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmountTriang)));
    avelength_mInvoiceAmountTriang := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mInvoiceAmountTriang)),h.mInvoiceAmountTriang<>(typeof(h.mInvoiceAmountTriang))'');
    populated_mBalanceAmountSite_pcnt := AVE(GROUP,IF(h.mBalanceAmountSite = (TYPEOF(h.mBalanceAmountSite))'',0,100));
    maxlength_mBalanceAmountSite := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmountSite)));
    avelength_mBalanceAmountSite := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmountSite)),h.mBalanceAmountSite<>(typeof(h.mBalanceAmountSite))'');
    populated_mBalanceAmountTriang_pcnt := AVE(GROUP,IF(h.mBalanceAmountTriang = (TYPEOF(h.mBalanceAmountTriang))'',0,100));
    maxlength_mBalanceAmountTriang := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmountTriang)));
    avelength_mBalanceAmountTriang := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.mBalanceAmountTriang)),h.mBalanceAmountTriang<>(typeof(h.mBalanceAmountTriang))'');
    populated_iOrderRevNum_pcnt := AVE(GROUP,IF(h.iOrderRevNum = (TYPEOF(h.iOrderRevNum))'',0,100));
    maxlength_iOrderRevNum := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iOrderRevNum)));
    avelength_iOrderRevNum := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iOrderRevNum)),h.iOrderRevNum<>(typeof(h.iOrderRevNum))'');
    populated_chInvDemand_pcnt := AVE(GROUP,IF(h.chInvDemand = (TYPEOF(h.chInvDemand))'',0,100));
    maxlength_chInvDemand := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.chInvDemand)));
    avelength_chInvDemand := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.chInvDemand)),h.chInvDemand<>(typeof(h.chInvDemand))'');
    populated_iTaxRevNum_pcnt := AVE(GROUP,IF(h.iTaxRevNum = (TYPEOF(h.iTaxRevNum))'',0,100));
    maxlength_iTaxRevNum := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iTaxRevNum)));
    avelength_iTaxRevNum := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iTaxRevNum)),h.iTaxRevNum<>(typeof(h.iTaxRevNum))'');
    populated_DueDate_pcnt := AVE(GROUP,IF(h.DueDate = (TYPEOF(h.DueDate))'',0,100));
    maxlength_DueDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DueDate)));
    avelength_DueDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DueDate)),h.DueDate<>(typeof(h.DueDate))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.InvoiceNumber),TRIM((SALT28.StrType)le.InvoiceLineNumber),TRIM((SALT28.StrType)le.OrderNumber),TRIM((SALT28.StrType)le.OrderLineNumber),TRIM((SALT28.StrType)le.mInvoiceAmount),TRIM((SALT28.StrType)le.mBalanceAmount),TRIM((SALT28.StrType)le.bARTransferFlag),TRIM((SALT28.StrType)le.iPaymentTermId),TRIM((SALT28.StrType)le.iScheduleId),TRIM((SALT28.StrType)le.iTaxId),TRIM((SALT28.StrType)le.mInvoiceAmountSite),TRIM((SALT28.StrType)le.mInvoiceAmountTriang),TRIM((SALT28.StrType)le.mBalanceAmountSite),TRIM((SALT28.StrType)le.mBalanceAmountTriang),TRIM((SALT28.StrType)le.iOrderRevNum),TRIM((SALT28.StrType)le.chInvDemand),TRIM((SALT28.StrType)le.iTaxRevNum),TRIM((SALT28.StrType)le.DueDate)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,18,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'InvoiceNumber'}
      ,{2,'InvoiceLineNumber'}
      ,{3,'OrderNumber'}
      ,{4,'OrderLineNumber'}
      ,{5,'mInvoiceAmount'}
      ,{6,'mBalanceAmount'}
      ,{7,'bARTransferFlag'}
      ,{8,'iPaymentTermId'}
      ,{9,'iScheduleId'}
      ,{10,'iTaxId'}
      ,{11,'mInvoiceAmountSite'}
      ,{12,'mInvoiceAmountTriang'}
      ,{13,'mBalanceAmountSite'}
      ,{14,'mBalanceAmountTriang'}
      ,{15,'iOrderRevNum'}
      ,{16,'chInvDemand'}
      ,{17,'iTaxRevNum'}
      ,{18,'DueDate'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_InvoiceNumber((SALT28.StrType)le.InvoiceNumber),
    Fields.InValid_InvoiceLineNumber((SALT28.StrType)le.InvoiceLineNumber),
    Fields.InValid_OrderNumber((SALT28.StrType)le.OrderNumber),
    Fields.InValid_OrderLineNumber((SALT28.StrType)le.OrderLineNumber),
    Fields.InValid_mInvoiceAmount((SALT28.StrType)le.mInvoiceAmount),
    Fields.InValid_mBalanceAmount((SALT28.StrType)le.mBalanceAmount),
    Fields.InValid_bARTransferFlag((SALT28.StrType)le.bARTransferFlag),
    Fields.InValid_iPaymentTermId((SALT28.StrType)le.iPaymentTermId),
    Fields.InValid_iScheduleId((SALT28.StrType)le.iScheduleId),
    Fields.InValid_iTaxId((SALT28.StrType)le.iTaxId),
    Fields.InValid_mInvoiceAmountSite((SALT28.StrType)le.mInvoiceAmountSite),
    Fields.InValid_mInvoiceAmountTriang((SALT28.StrType)le.mInvoiceAmountTriang),
    Fields.InValid_mBalanceAmountSite((SALT28.StrType)le.mBalanceAmountSite),
    Fields.InValid_mBalanceAmountTriang((SALT28.StrType)le.mBalanceAmountTriang),
    Fields.InValid_iOrderRevNum((SALT28.StrType)le.iOrderRevNum),
    Fields.InValid_chInvDemand((SALT28.StrType)le.chInvDemand),
    Fields.InValid_iTaxRevNum((SALT28.StrType)le.iTaxRevNum),
    Fields.InValid_DueDate((SALT28.StrType)le.DueDate),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_InvoiceNumber(TotalErrors.ErrorNum),Fields.InValidMessage_InvoiceLineNumber(TotalErrors.ErrorNum),Fields.InValidMessage_OrderNumber(TotalErrors.ErrorNum),Fields.InValidMessage_OrderLineNumber(TotalErrors.ErrorNum),Fields.InValidMessage_mInvoiceAmount(TotalErrors.ErrorNum),Fields.InValidMessage_mBalanceAmount(TotalErrors.ErrorNum),Fields.InValidMessage_bARTransferFlag(TotalErrors.ErrorNum),Fields.InValidMessage_iPaymentTermId(TotalErrors.ErrorNum),Fields.InValidMessage_iScheduleId(TotalErrors.ErrorNum),Fields.InValidMessage_iTaxId(TotalErrors.ErrorNum),Fields.InValidMessage_mInvoiceAmountSite(TotalErrors.ErrorNum),Fields.InValidMessage_mInvoiceAmountTriang(TotalErrors.ErrorNum),Fields.InValidMessage_mBalanceAmountSite(TotalErrors.ErrorNum),Fields.InValidMessage_mBalanceAmountTriang(TotalErrors.ErrorNum),Fields.InValidMessage_iOrderRevNum(TotalErrors.ErrorNum),Fields.InValidMessage_chInvDemand(TotalErrors.ErrorNum),Fields.InValidMessage_iTaxRevNum(TotalErrors.ErrorNum),Fields.InValidMessage_DueDate(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
