//This is the code to execute in a builder window
#workunit('name','Exhibition_TravelDataCombined2.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_TravelDataCombined2,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_TravelDataCombined2.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* Category_field */,/* Attendance_Id_field */,/* Group_Id_field */,/* Last_name_field */,/* First_name_field */,/* Company_field */,/* Address1_field */,/* Address2_field */,/* City_field */,/* State_field */,/* Postal_Code_field */,/* Country_field */,/* Email_field */,/* Phone_field */,/* Method_of_Housing_field */,/* Hotel_field */,/* Arrive_field */,/* Depart_field */,/* Hotel_Confirmation_field */,/* Payment_type_field */,/* Room_type_field */,/* Cost_field */,/* Comments_field */,/* Special_requests_field */,/* Share_With_field */,/* Booker_First_Name_field */,/* Booker_Last_Name_field */,/* Email_Address_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

