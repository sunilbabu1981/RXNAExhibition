//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSPressRelease.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSPressRelease,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSPressRelease.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* ID_field */,/* EXHIBITOR_field */,/* ALTERNATE_NAME_field */,/* SORT_field */,/* ADDRESS1_field */,/* ADDRESS2_field */,/* ADDRESS3_field */,/* CITY_field */,/* STATE_field */,/* ZIP_field */,/* COUNTRY_field */,/* PHONE_field */,/* PHONE2_field */,/* FAX_field */,/* FAX2_field */,/* WEBSITE_field */,/* BOOTH_field */,/* DESCRIPTION_field */,/* PR_CONTACT_FIRST_NAME_field */,/* PR_CONTACT_LAST_NAME_field */,/* PR_CONTACT_EMAIL_field */,/* TITLE_field */,/* AUTHOR_field */,/* AUTHOR_EMAIL_field */,/* RELEASE_DATE_field */,/* FILE_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

