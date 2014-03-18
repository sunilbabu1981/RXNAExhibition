//This is the code to execute in a builder window
#workunit('name','Exhibition_DirectoryExProductCategory.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_DirectoryExProductCategory,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_DirectoryExProductCategory.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* CustomerID_field */,/* iProductCategoryId_field */,/* ProductDesc_field */,/* HeadingDesc_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

