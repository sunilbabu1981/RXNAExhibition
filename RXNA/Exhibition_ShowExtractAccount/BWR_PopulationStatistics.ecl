//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractAccount.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractAccount,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractAccount.MAC_PopulationStatistics('~rxna::baseexhibitor::showextract_account',CustomerID,CustomerName,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

