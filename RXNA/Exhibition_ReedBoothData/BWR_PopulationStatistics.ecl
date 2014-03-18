//This is the code to execute in a builder window
#workunit('name','Exhibition_ReedBoothData.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ReedBoothData,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ReedBoothData.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* ORG_NAME_field */,/* FDC_CUSTOMER_NBR_field */,/* BOOTH_ID_field */,/* SHOW_KEY_field */,/* KEYVAL_field */,/* BOOTH_ID_1_field */,/* WIDTH_field */,/* DEPTH_field */,/* MAINTENANCE_field */,/* QTY_SIGNS_field */,/* SIGN_LINE1_field */,/* SIGN_LINE2_field */,/* TARGET_DT_field */,/* NO_SIGN_IND_field */,/* SIGN_PRINTED_IND_field */,/* USER_ID_field */,/* LAST_UPDATE_DT_field */,/* BOOTH_TYPE_ID_field */,/* PARENT_BOOTH_KEY_field */,/* FACILITY_KEY_field */,/* LOCATION_KEY_field */,/* EXHIBITOR_ID_field */,/* COMPETITOR_KEY_field */,/* AREA_field */,/* OWNER_TYPE_field */,/* PROGRAM_ACCT_IND_field */,/* USE_PRIMARY_CARD_IND_field */,/* SOURCE_KEY_field */,/* SORTABLE_BOOTH_field */,/* RECOMMEND_CNT_field */,/* CREATE_DT_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

