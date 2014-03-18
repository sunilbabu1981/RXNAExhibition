//This is the code to execute in a builder window
#workunit('name','Exhibition_ceIssueItem.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ceIssueItem,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ceIssueItem.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* SHOW_KEY_field */,/* ISSUE_KEY_field */,/* KEY_field */,/* CREATED_DT_field */,/* CREATED_BY_field */,/* UPDATED_DT_field */,/* UPDATED_BY_field */,/* SOURCE_field */,/* STATUS_field */,/* CONTRACTOR_KEY_field */,/* SHOW_CONTRACTOR_ASSN_KEY_field */,/* ISSUE_TEXT_field */,/* CE_SHOW_KEY_field */,/* EXHIBITOR_PRESENT_IND_field */,/* TSSBOOTHID_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

