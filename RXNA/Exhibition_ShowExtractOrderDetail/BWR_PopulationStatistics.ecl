//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractOrderDetail.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractOrderDetail,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractOrderDetail.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* OrderNumber_field */,/* OrderLineNumber_field */,/* RevenueType_field */,/* RevenueItem_field */,/* OrderLineStatus_field */,/* QuantityOrdered_field */,/* TotalPrice_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

