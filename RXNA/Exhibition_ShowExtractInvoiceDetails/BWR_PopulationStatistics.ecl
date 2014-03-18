//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractInvoiceDetails.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractInvoiceDetails,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractInvoiceDetails.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* InvoiceNumber_field */,/* InvoiceLineNumber_field */,/* OrderNumber_field */,/* OrderLineNumber_field */,/* mInvoiceAmount_field */,/* mBalanceAmount_field */,/* bARTransferFlag_field */,/* iPaymentTermId_field */,/* iScheduleId_field */,/* iTaxId_field */,/* mInvoiceAmountSite_field */,/* mInvoiceAmountTriang_field */,/* mBalanceAmountSite_field */,/* mBalanceAmountTriang_field */,/* iOrderRevNum_field */,/* chInvDemand_field */,/* iTaxRevNum_field */,/* DueDate_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

