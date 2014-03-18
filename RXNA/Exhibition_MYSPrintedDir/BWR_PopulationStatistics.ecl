//This is the code to execute in a builder window
#workunit('name','Exhibition_MYSPrintedDir.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MYSPrintedDir,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MYSPrintedDir.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* Exhibitor_ID_field */,/* Company_ID_field */,/* Booth_field */,/* Company_Name_field */,/* Alternate_Name_field */,/* Address_field */,/* Address_2_field */,/* Address_3_field */,/* City_field */,/* State_field */,/* Zip_field */,/* Phone_field */,/* Toll_Free_Phone_field */,/* Fax1_field */,/* Fax2_field */,/* Toll_Free_Fax_field */,/* Website_field */,/* Description_field */,/* Product_Categories_field */,/* New_Exhibitor_field */,/* SIA_Member_field */,/* Facebook_field */,/* Twitter_field */,/* LinkedIn_field */,/* Print_Status_field */,/* Show_Specials_field */,/* New_Products_field */,/* New_Product_Gallery_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

