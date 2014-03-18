//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSShowFeatures.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSShowFeatures,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSShowFeatures.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* EXHIBITOR_field */,/* EMAIL_field */,/* EXHIBITORID_field */,/* PASSWORD_field */,/* FEATURE_TITLE_field */,/* MEDIA_FILE_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

