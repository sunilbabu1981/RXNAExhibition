﻿//This is the code to execute in a builder window
#workunit('name','Exhibition_DirectoryExProductCategory.BWR_Hygiene - Hygiene & Stats - SALT V2.8 Beta 2');
IMPORT Exhibition_DirectoryExProductCategory,SALT28;
// First create an instantiated hygiene module
  h := Exhibition_DirectoryExProductCategory.Hygiene(Exhibition_DirectoryExProductCategory.In_DirectoryExProductCategory);
  p := h.AllProfiles; // Detailed profile of every field
  OUTPUT(h.Summary('SummaryReport'),ALL);
  OUTPUT(p,NAMED('AllProfiles'),ALL); // Detailed profile of every field
  OUTPUT(SALT28.MAC_Character_Counts.EclRecord(p,'Layout_DirectoryExProductCategory'),NAMED('OptimizedLayout'));// File layout suggested by data
  // Produces field types that match the most common 99.923460240f your data. Change to 100 to match all your data
  OUTPUT(SALT28.MAC_Character_Counts.FieldTypes(p,99.9),NAMED('Types'));
