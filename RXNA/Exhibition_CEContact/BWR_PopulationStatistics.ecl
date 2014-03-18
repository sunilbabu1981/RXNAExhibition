//This is the code to execute in a builder window
#workunit('name','Exhibition_CEContact.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_CEContact,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_CEContact.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* KEY_field */,/* CE_SHOW_KEY_field */,/* CE_BOOTH_KEY_field */,/* CE_CUSTOMER_KEY_field */,/* FIRST_NAME_field */,/* LAST_NAME_field */,/* PHONE_field */,/* FAX_field */,/* MOBILE_field */,/* EMAIL_field */,/* SMS_NOTIFY_IND_field */,/* EMAIL_NOTIFY_IND_field */,/* CREATED_DT_field */,/* CREATED_BY_field */,/* UPDATED_DT_field */,/* UPDATED_BY_field */,/* PRIMARY_IND_field */,/* ADV_FREIGHT_NOTIFY_IND_field */,/* M_YARD_ARRIVAL_NOTIFY_IND_field */,/* OUTBOUND_FREIGHT_NOTIFY_IND_field */,/* DOCK_ARRIVAL_NOTIFY_IND_field */,/* EMPTIES_AVAIL_NOTIFY_IND_field */,/* PKG_SCANNED_NOTIFY_IND_field */,/* SOURCE_field */,/* ACTION_field */,/* ACTION_TAKEN_IND_field */,/* INTL_PHONE_CD_field */,/* INTL_MOBILE_CD_field */,/* SMS_NOTIFY_UPDATED_BY_field */,/* ELECTRICAL_HOOKUP_IND_field */,/* TSSBOOTHID_field */,/* SHOW_KEY_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

