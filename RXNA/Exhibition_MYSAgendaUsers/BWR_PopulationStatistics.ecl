//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSAgendaUsers.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSAgendaUsers,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSAgendaUsers.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* DATEINSERTED_field */,/* FULLNAME_field */,/* COMPANY_field */,/* EMAIL_field */,/* CITY_field */,/* STATE_field */,/* COUNTRY_field */,/* PASSWORD_field */,/* EXHCOUNT_field */,/* TIMESON_field */,/* LASTON_field */,/* ALLOWEXHCONTACT_field */,/* EXHNAME_field */,/* ITEMCOUNT_field */,/* SPEAKERCOUNT_field */,/* ITEMS_field */,/* SPEAKERS_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

