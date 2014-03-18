//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSProductS.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSProductS,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSProductS.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* PROD_ID_field */,/* PARENT_PRODUCT_field */,/* PRODUCT_field */,/* EXHIBITORID_field */,/* EXHIBITOR_field */,/* BOOTH_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

