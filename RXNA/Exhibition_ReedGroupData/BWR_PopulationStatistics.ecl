//This is the code to execute in a builder window
#workunit('name','Exhibition_ReedGroupData.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ReedGroupData,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ReedGroupData.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* SHOW_KEY_field */,/* GROUP_ID_field */,/* DESCRIPTION_field */,/* PRINT_ON_INV_IND_field */,/* GL_ACCT_NBR_field */,/* GL_SUB_NBR_field */,/* USER_ID_field */,/* LAST_UPDATE_DT_field */,/* INV_ST_SUM_GROUP_field */,/* PM_TYPE_field */,/* DISCOUNT_PCT_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

