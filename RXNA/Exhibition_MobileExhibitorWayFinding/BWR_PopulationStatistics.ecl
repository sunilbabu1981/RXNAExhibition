﻿//This is the code to execute in a builder window
#workunit('name','Exhibition_MobileExhibitorWayFinding.BWR_PopulationStatistics - Population Statistics - SALT V2.8 Beta 2');
IMPORT Exhibition_MobileExhibitorWayFinding,SALT28;
// In the line below substitute the file you want statistics for; and substitute any field names you can
  Exhibition_MobileExhibitorWayFinding.MAC_PopulationStatistics(YourFileName,/*Reference Field*/,/* Event_field */,/* Edition_field */,/* sherpaID_field */,/* CompanyName_field */,/* ExhibitorID_field */,/* action_field */,/* count_field */,outfile);
  OUTPUT(outfile,NAMED('PopulationStatistics'));

