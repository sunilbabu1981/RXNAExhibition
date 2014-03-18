//This is the code to execute in a builder window
#workunit('name','Exhibition_ShowExtractContacts.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_ShowExtractContacts,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_ShowExtractContacts.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* IndividualID_field */,/* CustomerID_field */,/* Prefix_field */,/* FirstName_field */,/* MiddleInitial_field */,/* LastName_field */,/* Suffix_field */,/* Title_field */,/* CompanyName_field */,/* Department_field */,/* Addr1_field */,/* Addr2_field */,/* Addr3_field */,/* City_field */,/* State_field */,/* StateDesc_field */,/* CountryCode_field */,/* CountryDesc_field */,/* PostalCode_field */,/* PhoneMain_field */,/* FaxMain_field */,/* PhoneTollFree_field */,/* EmailCompany_field */,/* WebAddressCompany_field */,/* ValidAddrFlag_field */,/* PrivacyFlag_field */,/* CreateDate_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

