//Attendees agenda on what all booths to visit, EXHNAME being the ; delimited file with the list of booths the user like to visit
//Have to find out EXHNAME mapping details with specific dataset.
EXPORT Layout_MYSAgendaUsers := RECORD
unicode Event;
unicode Edition;
unicode DATEINSERTED;
unicode FULLNAME;
unicode COMPANY;
unicode EMAIL;
unicode CITY;
unicode STATE;
unicode COUNTRY;
unicode PASSWORD;
unicode EXHCOUNT;
unicode TIMESON;
unicode LASTON;
unicode ALLOWEXHCONTACT;
unicode EXHNAME;
unicode ITEMCOUNT;
unicode SPEAKERCOUNT;
unicode ITEMS;
unicode SPEAKERS;
END;