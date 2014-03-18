//This is the code to execute in a builder window
#workunit('name','Exhibition_floorPlan.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_floorPlan,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_floorPlan.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* Booth_field */,/* Exhibitor_Name_field */,/* Class_field */,/* Pavilion_field */,/* Booth_Area_field */,/* Short_Side_field */,/* Long_Side_field */,/* Open_Corners_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

