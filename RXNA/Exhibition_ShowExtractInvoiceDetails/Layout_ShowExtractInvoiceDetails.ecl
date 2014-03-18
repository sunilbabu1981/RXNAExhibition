EXPORT Layout_ShowExtractInvoiceDetails := RECORD
  UNSIGNED4 InvoiceNumber;
  UNSIGNED2 InvoiceLineNumber;
  UNSIGNED3 OrderNumber;
  UNSIGNED1 OrderLineNumber;
  REAL8 mInvoiceAmount;
  REAL8 mBalanceAmount;
  UNSIGNED1 bARTransferFlag;
  REAL4 iPaymentTermId;
  REAL4 iScheduleId;
  REAL4 iTaxId;
  UNSIGNED1 mInvoiceAmountSite;
  UNSIGNED1 mInvoiceAmountTriang;
  UNSIGNED1 mBalanceAmountSite;
  REAL8 mBalanceAmountTriang;
  REAL4 iOrderRevNum;
  REAL8 chInvDemand;
  REAL4 iTaxRevNum;
  UNSIGNED1 DueDate;

END;