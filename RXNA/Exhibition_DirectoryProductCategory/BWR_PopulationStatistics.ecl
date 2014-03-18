//This is the code to execute in a builder window
#workunit('name','Exhibition_DirectoryProductCategory.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_DirectoryProductCategory,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_DirectoryProductCategory.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* iProductCategoryId_field */,/* vchProductCategoryDesc_field */,/* vchHeadingDesc_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

