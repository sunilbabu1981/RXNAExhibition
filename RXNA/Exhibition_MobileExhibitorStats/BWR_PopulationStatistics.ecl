//This is the code to execute in a builder window
#workunit('name','Exhibition_MobileExhibitorStats.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MobileExhibitorStats,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MobileExhibitorStats.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* CompanyName_field */,/* ExhibitorID_field */,/* action_field */,/* visits_field */,/* views_field */,/* visitors_field */,/* users_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

