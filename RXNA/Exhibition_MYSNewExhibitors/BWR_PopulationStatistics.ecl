//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSNewExhibitors.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSNewExhibitors,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSNewExhibitors.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* EXHIBITORID_field */,/* EXHIBITORNAME_field */,/* BOOTH_field */,/* IDSLINK_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

