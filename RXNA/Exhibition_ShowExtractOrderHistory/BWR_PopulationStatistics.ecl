//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractOrderHistory.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractOrderHistory,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractOrderHistory.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* CustomerID_field */,/* Event_field */,/* Edition_field */,/* OrderNumber_field */,/* OrderCreateDate_field */,/* Booth_field */,/* BoothLength_field */,/* BoothWidth_field */,/* BoothSqFt_field */,/* UnitPrice_field */,/* BoothPrice_field */,/* TotalInvoice_field */,/* OrderStatus_field */,/* ContractRecvdDate_field */,/* DepositRecvdDate_field */,/* SegmentCode_field */,/* BillerID_field */,/* IncidentID_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

