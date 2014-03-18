EXPORT Layout_ShowExtractOrderHistory := RECORD
  UNSIGNED4 CustomerID;
  UNICODE5 Event;
  UNSIGNED2 Edition;
  UNSIGNED3 OrderNumber;
  UNICODE23 OrderCreateDate;
  UNICODE15 Booth;
  UNICODE6 BoothLength;
  UNICODE8 BoothWidth;
  REAL8 BoothSqFt;
  REAL8 UnitPrice;
  REAL8 BoothPrice;
  REAL8 TotalInvoice;
  UNICODE1 OrderStatus;// C or B, C is sold status , B is Hold
  UNICODE23 ContractRecvdDate;
  UNICODE23 DepositRecvdDate;
  UNICODE7 SegmentCode;//Logical partition of where they are on the floor.
  UNSIGNED4 BillerID;
  UNSIGNED4 IncidentID;
END;