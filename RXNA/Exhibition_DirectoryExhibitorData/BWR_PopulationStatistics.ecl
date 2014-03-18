//This is the code to execute in a builder window
#workunit('name','Exhibition_DirectoryExhibitorData.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_DirectoryExhibitorData,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_DirectoryExhibitorData.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* iExhibitorId_field */,/* iPrismCompanyId_field */,/* chShowCd_field */,/* iShowYear_field */,/* vchBooth_field */,/* chAssocMemberFlag_field */,/* vchExhibitorName1_field */,/* vchExhibitorName2_field */,/* vchExhibitorName3_field */,/* Address1_field */,/* Address2_field */,/* Address3_field */,/* City_field */,/* RegionName_field */,/* Country_field */,/* PostalCode_field */,/* MainPhone_field */,/* TollFreePhone_field */,/* Fax_field */,/* vchTollFreeFax_field */,/* Email_field */,/* WebAddress_field */,/* txtProductDesc_field */,/* vchPavillion_field */,/* vchHall_field */,/* vchPage_field */,/* txtSpecials_field */,/* txtRepresentatives_field */,/* txtNewProducts_field */,/* vchExporting_field */,/* vchBusinessInterest_field */,/* vchCrossRef1_field */,/* vchCrossRef2_field */,/* vchCrossRef3_field */,/* vchCrossRef4_field */,/* iParentCompanyId_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

