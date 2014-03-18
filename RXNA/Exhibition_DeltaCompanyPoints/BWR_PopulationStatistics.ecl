//This is the code to execute in a builder window
#workunit('name','Exhibition_DeltaCompanyPoints.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_DeltaCompanyPoints,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_DeltaCompanyPoints.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* CustomerID_field */,/* DeltaPoints_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

