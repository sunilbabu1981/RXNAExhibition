//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSNewProduct.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSNewProduct,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSNewProduct.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* ExhibitorID_field */,/* Company_Name_field */,/* Product_Description_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

