//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractPrivacy.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractPrivacy,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractPrivacy.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* CustomerID_field */,/* PrivacyIntMail_field */,/* PrivacyIntPhone_field */,/* PrivacyIntFax_field */,/* PrivacyIntEmail_field */,/* PrivacyExtMail_field */,/* PrivacyExtPhone_field */,/* PrivacyExtFax_field */,/* PrivacyExtEmail_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

