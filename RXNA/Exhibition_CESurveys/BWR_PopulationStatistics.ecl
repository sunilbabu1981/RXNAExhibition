//This is the code to execute in a builder window
#workunit('name','Exhibition_CESurveys.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_CESurveys,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_CESurveys.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* SHOW_KEY_field */,/* TSSBOOTHID_field */,/* QUESTION_NBR_field */,/* QUESTION_TEXT_field */,/* CREATED_DT_field */,/* SURVEY_NBR_field */,/* ANSWER_TEXT_field */,/* CONTACT_NAME_field */,/* WANT_TO_BE_CONTACTED_field */,/* CONTACT_PHONE_field */,/* COUNTRY_CODE_field */,/* COMMENTS_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

