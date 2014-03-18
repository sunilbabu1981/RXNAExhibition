//This is the code to execute in a builder window
#workunit('name','Exhibition_DirectoryPrismCompany.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_DirectoryPrismCompany,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_DirectoryPrismCompany.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* CompanyID_field */,/* vchCompanyName_field */,/* vchAddress1_field */,/* vchAddress2_field */,/* vchAddress3_field */,/* vchCity_field */,/* vchRegionName_field */,/* vchCountry_field */,/* vchPostCode_field */,/* vchPhone_field */,/* vchFax_field */,/* vchEmailAddress_field */,/* vchContactFirstName_field */,/* vchContactLastName_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

