EXPORT Layout_ShowExtractPayments := RECORD
  UNSIGNED4 PaymentID;
  UNSIGNED3 OrderNumber;
  UNSIGNED1 OrderLineNumber;
  REAL8 PaymentAmount;
  UNICODE23 InsertDate;
END;