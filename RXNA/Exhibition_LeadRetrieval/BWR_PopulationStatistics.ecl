//This is the code to execute in a builder window
#workunit('name','Exhibition_LeadRetrieval.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_LeadRetrieval,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_LeadRetrieval.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* CustomerID_field */,/* Booth_field */,/* Lead_Unit_field */,/* Badge_ID_field */,/* Individual_ID_field */,/* Class_Code_field */,/* Swipe_Date_field */,/* Swipe_Time_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

