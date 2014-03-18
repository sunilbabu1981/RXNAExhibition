//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSExhibitorSummaryStats.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSExhibitorSummaryStats,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSExhibitorSummaryStats.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* Exhibitor_field */,/* Package_field */,/* Views_field */,/* Links_to_Website_field */,/* Added_to_Agenda_field */,/* Shared_Info_field */,/* Emails_field */,/* Banners_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

