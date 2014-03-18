//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSCus2Ex.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSCus2Ex,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSCus2Ex.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* ExhibitorID_field */,/* CUSTOMERID_field */,/* EVENT_field */,/* EDITION_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

