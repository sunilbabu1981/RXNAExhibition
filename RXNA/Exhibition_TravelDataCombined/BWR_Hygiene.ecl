IMPORT Exhibition_ShowExtractAccount;
IMPORT Exhibition_ShowExtractContacts;
IMPORT Exhibition_ShowExtractInvoiceDetails;
IMPORT Exhibition_ShowExtractOrderDetail;
IMPORT Exhibition_ShowExtractOrderHistory;
IMPORT Exhibition_ShowExtractPayments;
IMPORT Exhibition_ShowExtractPrivacy;
IMPORT EXHIBITION_TRAVELDATACOMBINED;
IMPORT Exhibition_MYSCus2Ex;
Account := Exhibition_ShowExtractAccount.In_ShowExtractAccount;
Contacts:= Exhibition_ShowExtractContacts.In_ShowExtractContacts;
Invoice := Exhibition_ShowExtractInvoiceDetails.In_ShowExtractInvoiceDetails;
OrderDetail := Exhibition_ShowExtractOrderDetail.In_ShowExtractOrderDetail;
OrderHistory :=Exhibition_ShowExtractOrderHistory.In_ShowExtractOrderHistory;
Payments := Exhibition_ShowExtractPayments.In_ShowExtractPayments;
Privacy := Exhibition_ShowExtractPrivacy.In_ShowExtractPrivacy;
CustEx := Exhibition_MYSCus2Ex.In_MYSCus2Ex;
AccountL := Exhibition_ShowExtractAccount.Layout_ShowExtractAccount;
OrderHistoryL := Exhibition_ShowExtractOrderHistory.Layout_ShowExtractOrderHistory;
OrderDetailL := Exhibition_ShowExtractOrderDetail.Layout_ShowExtractOrderDetail;
Invoicel := Exhibition_ShowExtractInvoiceDetails.Layout_ShowExtractInvoiceDetails;
CustExL := Exhibition_MYSCus2Ex.Layout_MYSCus2Ex;
AccountOrderHistory := record
AccountL;
OrderHistoryL;
end;


AOH := JOIN(Account, OrderHistory , left.customerid = right.customerid  ,
TRANSFORM(ACCOUNTORDERHISTORY, SELF := LEFT, SELF := RIGHT));


AccountMYSExhbit := record
AccountOrderHistory;
CustExL;
end;

Details := JOIN(AOH, CUSTEX, LEFT.CUSTOMERID = RIGHT.CUSTOMERID and left.event = right.event and
left.edition = right.edition, 
TRANSFORM(AccountMYSExhbit, self := left, self := right));

count(details);
details;