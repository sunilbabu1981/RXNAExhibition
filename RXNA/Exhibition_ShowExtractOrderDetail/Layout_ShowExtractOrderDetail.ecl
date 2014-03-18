EXPORT Layout_ShowExtractOrderDetail := RECORD
  UNSIGNED3 OrderNumber;
  UNSIGNED1 OrderLineNumber;
  UNICODE15 RevenueType;
  UNICODE15 RevenueItem;
  UNICODE1 OrderLineStatus;// Only  B and C ignore everything else
  REAL8 QuantityOrdered;
  REAL8 TotalPrice;
END;