//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractPayments.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractPayments,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractPayments.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* PaymentID_field */,/* OrderNumber_field */,/* OrderLineNumber_field */,/* PaymentAmount_field */,/* InsertDate_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

