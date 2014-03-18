//This is the code to execute in a builder window
#workunit('name','Exhibition_InvoiceInfo.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_InvoiceInfo,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_InvoiceInfo.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* CustomerID_field */,/* Event_field */,/* Edition_field */,/* Invoiced_field */,/* Paid_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

