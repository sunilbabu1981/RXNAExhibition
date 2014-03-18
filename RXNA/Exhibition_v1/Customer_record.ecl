IMPORT Exhibition_ShowExtractAccount;
IMPORT Exhibition_ShowExtractContacts;
IMPORT Exhibition_ShowExtractInvoiceDetails;
IMPORT Exhibition_ShowExtractOrderDetail;
IMPORT Exhibition_ShowExtractOrderHistory;
IMPORT Exhibition_ShowExtractPayments;
IMPORT Exhibition_ShowExtractPrivacy;
IMPORT EXHIBITION_TRAVELDATACOMBINED;
Account := Exhibition_ShowExtractAccount.In_ShowExtractAccount;
Contacts:= Exhibition_ShowExtractContacts.In_ShowExtractContacts;
Invoice := Exhibition_ShowExtractInvoiceDetails.In_ShowExtractInvoiceDetails;
OrderDetail := Exhibition_ShowExtractOrderDetail.In_ShowExtractOrderDetail;
OrderHistory :=Exhibition_ShowExtractOrderHistory.In_ShowExtractOrderHistory;
Payments := Exhibition_ShowExtractPayments.In_ShowExtractPayments;
Privacy := Exhibition_ShowExtractPrivacy.In_ShowExtractPrivacy;

Contacts;
Privacy;
EXHIBITION_TRAVELDATACOMBINED.in_TravelDataCombined;


AccountL := Exhibition_ShowExtractAccount.Layout_ShowExtractAccount;
OrderHistoryL := Exhibition_ShowExtractOrderHistory.Layout_ShowExtractOrderHistory;
OrderDetailL := Exhibition_ShowExtractOrderDetail.Layout_ShowExtractOrderDetail;
Invoicel := Exhibition_ShowExtractInvoiceDetails.Layout_ShowExtractInvoiceDetails;

AccountOrderHistory := record
AccountL;
OrderHistoryL;
end;


AOH := JOIN(Account, OrderHistory , left.customerid = right.customerid and right.OrderStatus ='C' ,
TRANSFORM(ACCOUNTORDERHISTORY, SELF := LEFT, SELF := RIGHT));

AccountAllOrderDetail := RECORD
AccountOrderHistory;
OrderDetailL;
END;

AALLDETAIL := JOIN(AOH, orderDetail, left.ordernumber = right.ordernumber ,
TRANSFORM(AccountAllOrderDetail, SELF := LEFT , SELF := RIGHT) );
COUNT(AALLDETAIL);
AALLDETAIL;

AccountAll := RECORD
AccountAllOrderDetail;
InvoiceL;
end;

Customer_Data := JOIN(AALLDETAIL, Invoice, left.OrderNumber = right.OrderNumber
and left.OrderLineNumber = right.OrderLineNumber, TRANSFORM
(AccountAll , self := left, self := right));

Customer_Data;
count(Customer_Data);

