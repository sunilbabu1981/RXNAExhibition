﻿Generated by SALT V2.8 Beta 2
File being processed :-
OPTIONS:-gh
MODULE:Exhibition_research
FILENAME:research	
FIELD:Record_ID:TYPE(UNICODE):0,0
FIELD:CustomerID:TYPE(UNICODE):0,0
FIELD:Event:TYPE(UNICODE):0,0
FIELD:Edition:TYPE(UNICODE):0,0
FIELD:Booth:TYPE(UNICODE):0,0
FIELD:Satisfaction:TYPE(UNICODE):0,0
FIELD:Loyalty:TYPE(UNICODE):0,0
FIELD:NPS:TYPE(UNICODE):0,0
FIELD:Open_NPS:TYPE(UNICODE):0,0
FIELD:NeedToExhibit:TYPE(UNICODE):0,0
FIELD:Objective_AttractNewCustomers:TYPE(UNICODE):0,0
FIELD:Objective_MeetCurrentCustomers:TYPE(UNICODE):0,0
FIELD:Objective_PRExposureBranding:TYPE(UNICODE):0,0
FIELD:Objective_PromoteCompanyBrand:TYPE(UNICODE):0,0
FIELD:Objective_ShowCaseNewProduct:TYPE(UNICODE):0,0
FIELD:Objective_GaugeCompitition:TYPE(UNICODE):0,0
FIELD:Objective_ParticipateEventsFestivities:TYPE(UNICODE):0,0
FIELD:Objective_VisionCouncilDiscount:TYPE(UNICODE):0,0
FIELD:Objective_Other:TYPE(UNICODE):0,0
FIELD:PrimaryReason:TYPE(UNICODE):0,0
FIELD:Satisfaction_AttractNewCustomers:TYPE(UNICODE):0,0
FIELD:Satisfaction_MeetCurrentCustomers:TYPE(UNICODE):0,0
FIELD:Satisfaction_PRExposureBranding:TYPE(UNICODE):0,0
FIELD:Satisfaction_PromoteCompanyBrand:TYPE(UNICODE):0,0
FIELD:Satisfaction_ShowCaseNewProduct:TYPE(UNICODE):0,0
FIELD:Satisfaction_GaugeCompitition:TYPE(UNICODE):0,0
FIELD:Satisfaction_ParticipateEventsFestivities:TYPE(UNICODE):0,0
FIELD:Satisfaction_VisionCouncilDiscount:TYPE(UNICODE):0,0
FIELD:Satisfaction_Other:TYPE(UNICODE):0,0
FIELD:Satisfaction_Overall:TYPE(UNICODE):0,0
FIELD:OverallPerformance_Traffic:TYPE(UNICODE):0,0
FIELD:OverallPerformance_QualityOfBuyers:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_VisionWest:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_VisionEast:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_AOA:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_SECO:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_MIDO:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_SILMO:TYPE(UNICODE):0,0
FIELD:CompetitiveEvents_LocalEvent:TYPE(UNICODE):0,0
FIELD:ValueOfNext12MonthsOrdersExpected:TYPE(UNICODE):0,0
FIELD:Satisfaction_CustomerService:TYPE(UNICODE):0,0
FIELD:Satisfaction_FreemanLabor:TYPE(UNICODE):0,0
FIELD:Satisfaction_RX800Number:TYPE(UNICODE):0,0
FIELD:Satisfaction_ElectriciansCatering:TYPE(UNICODE):0,0
FIELD:Satisfaction_TravelDesk:TYPE(UNICODE):0,0
FIELD:Satisfaction_Registration:TYPE(UNICODE):0,0
FIELD:Satisfaction_HotelShuttles:TYPE(UNICODE):0,0
FIELD:Satisfaction_FreeAirportShuttles:TYPE(UNICODE):0,0
FIELD:MostDesirableAttendee:TYPE(UNICODE):0,0
FIELD:PROBLEM_EXPERIENCE:TYPE(UNICODE):0,0
FIELD:Agreement_ExhibitingLowersCostPerAcquisition:TYPE(UNICODE):0,0
FIELD:Agreement_ExhibitingDeliversNewLeads:TYPE(UNICODE):0,0
FIELD:Agreement_ExhibitingDeliversQualityLeads:TYPE(UNICODE):0,0
FIELD:Agreement_ExhibitingDeliversQualityBuyers:TYPE(UNICODE):0,0
FIELD:Agreement_HighLevelCustomerService:TYPE(UNICODE):0,0
FIELD:Agreement_ShowFloorHasHighEnergy:TYPE(UNICODE):0,0
FIELD:Agreement_ImportantEventInIndustry:TYPE(UNICODE):0,0
FIELD:Agreement_EventGrowsMyBusiness:TYPE(UNICODE):0,0
FIELD:Agreement_EventHelpsLaunchNewProducts:TYPE(UNICODE):0,0
FIELD:Agreement_EventDeliversWantedEndUsers:TYPE(UNICODE):0,0
FIELD:Agreement_EventDeliversWantedDealersInstallers:TYPE(UNICODE):0,0
Total available specificity:0
Search Threshold set at -4
+++Line:64:Need threshold and blockthreshold to continue
Use of PERSISTs in code set at:3
__Glossary__
Edit Distance: An edit distance of (say) one implies that one string can be converted into another by doing one of
  - Changing one character
  - Deleting one character
  - Transposing two characters
Forcing Criteria: In addition to the general 'best match' logic it is possible to insist that
one particular field must match to some degree or the whole record is considered a bad match.
The criterial applied to that one field is the forcing criteria.
Cascade: Best Type rules are applied in such a way that the rules are applied one by one UNTIL the first rule succeeds; subsequent rules are then skipped.
__General Notes__
How is it decided how much to subtract for a bad match?
SALT computes for each field the percentage likelihood that a valid cluster will have two or more values for a given field
this value (called the switch value in the SALT literature) is then used to produce the subtraction value from the match value.
The value in this document is the one typed into the SPC file; the code will use a value computed at run-time.