//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSHistory.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSHistory,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSHistory.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* Date_field */,/* Exhibitor_ID_field */,/* Exhibitor_field */,/* File_field */,/* Field_field */,/* Action_field */,/* Before_field */,/* After_field */,/* Who_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

