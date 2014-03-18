//This is the code to execute in a builder window
#workunit('name','Exhibition_ReedSubgroupData.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ReedSubgroupData,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ReedSubgroupData.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* SHOW_KEY_field */,/* GROUP_ID_field */,/* SUBGROUP_ID_field */,/* DESCRIPTION_field */,/* USER_ID_field */,/* LAST_UPDATE_DT_field */,/* PM_TYPE_field */,/* DISCOUNT_PCT_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

