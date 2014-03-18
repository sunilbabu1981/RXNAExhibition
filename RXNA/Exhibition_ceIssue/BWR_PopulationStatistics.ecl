//This is the code to execute in a builder window
#workunit('name','Exhibition_CeIssue.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_CeIssue,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_CeIssue.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* SHOW_KEY_field */,/* STATUS_field */,/* ISSUE_TEXT_field */,/* BOOTH_KEY_field */,/* CUSTOMER_KEY_field */,/* CONTACT_NAME_field */,/* CONTACT_PHONE_field */,/* NOTIFICATION_IND_field */,/* PRIORITY_field */,/* KEY_field */,/* EXHIBITOR_PRESENT_IND_field */,/* CREATED_DT_field */,/* CREATED_BY_field */,/* UPDATED_DT_field */,/* UPDATED_BY_field */,/* SOURCE_field */,/* CONTRACTOR_KEY_field */,/* TYPE_field */,/* CONTRACTOR_TYPE_KEY_field */,/* CE_SHOW_KEY_field */,/* CE_BOOTH_KEY_field */,/* CE_CUSTOMER_KEY_field */,/* CONTACT_INTL_PHONE_CD_field */,/* CE_MHA_KEY_field */,/* NBR_LABELS_REQ_field */,/* USER_ROLE_field */,/* CREATED_SOURCE_field */,/* CONTRACTORTYPE_field */,/* TSSBOOTHID_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

