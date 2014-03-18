EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Record_ID = '',Input_CustomerID = '',Input_Event = '',Input_Edition = '',Input_Booth = '',Input_Satisfaction = '',Input_Loyalty = '',Input_NPS = '',Input_Open_NPS = '',Input_NeedToExhibit = '',Input_Objective_AttractNewCustomers = '',Input_Objective_MeetCurrentCustomers = '',Input_Objective_PRExposureBranding = '',Input_Objective_PromoteCompanyBrand = '',Input_Objective_ShowCaseNewProduct = '',Input_Objective_GaugeCompitition = '',Input_Objective_ParticipateEventsFestivities = '',Input_Objective_VisionCouncilDiscount = '',Input_Objective_Other = '',Input_PrimaryReason = '',Input_Satisfaction_AttractNewCustomers = '',Input_Satisfaction_MeetCurrentCustomers = '',Input_Satisfaction_PRExposureBranding = '',Input_Satisfaction_PromoteCompanyBrand = '',Input_Satisfaction_ShowCaseNewProduct = '',Input_Satisfaction_GaugeCompitition = '',Input_Satisfaction_ParticipateEventsFestivities = '',Input_Satisfaction_VisionCouncilDiscount = '',Input_Satisfaction_Other = '',Input_Satisfaction_Overall = '',Input_OverallPerformance_Traffic = '',Input_OverallPerformance_QualityOfBuyers = '',Input_CompetitiveEvents_VisionWest = '',Input_CompetitiveEvents_VisionEast = '',Input_CompetitiveEvents_AOA = '',Input_CompetitiveEvents_SECO = '',Input_CompetitiveEvents_MIDO = '',Input_CompetitiveEvents_SILMO = '',Input_CompetitiveEvents_LocalEvent = '',Input_ValueOfNext12MonthsOrdersExpected = '',Input_Satisfaction_CustomerService = '',Input_Satisfaction_FreemanLabor = '',Input_Satisfaction_RX800Number = '',Input_Satisfaction_ElectriciansCatering = '',Input_Satisfaction_TravelDesk = '',Input_Satisfaction_Registration = '',Input_Satisfaction_HotelShuttles = '',Input_Satisfaction_FreeAirportShuttles = '',Input_MostDesirableAttendee = '',Input_PROBLEM_EXPERIENCE = '',Input_Agreement_ExhibitingLowersCostPerAcquisition = '',Input_Agreement_ExhibitingDeliversNewLeads = '',Input_Agreement_ExhibitingDeliversQualityLeads = '',Input_Agreement_ExhibitingDeliversQualityBuyers = '',Input_Agreement_HighLevelCustomerService = '',Input_Agreement_ShowFloorHasHighEnergy = '',Input_Agreement_ImportantEventInIndustry = '',Input_Agreement_EventGrowsMyBusiness = '',Input_Agreement_EventHelpsLaunchNewProducts = '',Input_Agreement_EventDeliversWantedEndUsers = '',Input_Agreement_EventDeliversWantedDealersInstallers = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_research;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_Record_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Record_ID = (TYPEOF(le.Input_Record_ID))'','',':Record_ID')
    #END
+    #IF( #TEXT(Input_CustomerID)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerID = (TYPEOF(le.Input_CustomerID))'','',':CustomerID')
    #END
+    #IF( #TEXT(Input_Event)='' )
      '' 
    #ELSE
        IF( le.Input_Event = (TYPEOF(le.Input_Event))'','',':Event')
    #END
+    #IF( #TEXT(Input_Edition)='' )
      '' 
    #ELSE
        IF( le.Input_Edition = (TYPEOF(le.Input_Edition))'','',':Edition')
    #END
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_Satisfaction)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction = (TYPEOF(le.Input_Satisfaction))'','',':Satisfaction')
    #END
+    #IF( #TEXT(Input_Loyalty)='' )
      '' 
    #ELSE
        IF( le.Input_Loyalty = (TYPEOF(le.Input_Loyalty))'','',':Loyalty')
    #END
+    #IF( #TEXT(Input_NPS)='' )
      '' 
    #ELSE
        IF( le.Input_NPS = (TYPEOF(le.Input_NPS))'','',':NPS')
    #END
+    #IF( #TEXT(Input_Open_NPS)='' )
      '' 
    #ELSE
        IF( le.Input_Open_NPS = (TYPEOF(le.Input_Open_NPS))'','',':Open_NPS')
    #END
+    #IF( #TEXT(Input_NeedToExhibit)='' )
      '' 
    #ELSE
        IF( le.Input_NeedToExhibit = (TYPEOF(le.Input_NeedToExhibit))'','',':NeedToExhibit')
    #END
+    #IF( #TEXT(Input_Objective_AttractNewCustomers)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_AttractNewCustomers = (TYPEOF(le.Input_Objective_AttractNewCustomers))'','',':Objective_AttractNewCustomers')
    #END
+    #IF( #TEXT(Input_Objective_MeetCurrentCustomers)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_MeetCurrentCustomers = (TYPEOF(le.Input_Objective_MeetCurrentCustomers))'','',':Objective_MeetCurrentCustomers')
    #END
+    #IF( #TEXT(Input_Objective_PRExposureBranding)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_PRExposureBranding = (TYPEOF(le.Input_Objective_PRExposureBranding))'','',':Objective_PRExposureBranding')
    #END
+    #IF( #TEXT(Input_Objective_PromoteCompanyBrand)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_PromoteCompanyBrand = (TYPEOF(le.Input_Objective_PromoteCompanyBrand))'','',':Objective_PromoteCompanyBrand')
    #END
+    #IF( #TEXT(Input_Objective_ShowCaseNewProduct)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_ShowCaseNewProduct = (TYPEOF(le.Input_Objective_ShowCaseNewProduct))'','',':Objective_ShowCaseNewProduct')
    #END
+    #IF( #TEXT(Input_Objective_GaugeCompitition)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_GaugeCompitition = (TYPEOF(le.Input_Objective_GaugeCompitition))'','',':Objective_GaugeCompitition')
    #END
+    #IF( #TEXT(Input_Objective_ParticipateEventsFestivities)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_ParticipateEventsFestivities = (TYPEOF(le.Input_Objective_ParticipateEventsFestivities))'','',':Objective_ParticipateEventsFestivities')
    #END
+    #IF( #TEXT(Input_Objective_VisionCouncilDiscount)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_VisionCouncilDiscount = (TYPEOF(le.Input_Objective_VisionCouncilDiscount))'','',':Objective_VisionCouncilDiscount')
    #END
+    #IF( #TEXT(Input_Objective_Other)='' )
      '' 
    #ELSE
        IF( le.Input_Objective_Other = (TYPEOF(le.Input_Objective_Other))'','',':Objective_Other')
    #END
+    #IF( #TEXT(Input_PrimaryReason)='' )
      '' 
    #ELSE
        IF( le.Input_PrimaryReason = (TYPEOF(le.Input_PrimaryReason))'','',':PrimaryReason')
    #END
+    #IF( #TEXT(Input_Satisfaction_AttractNewCustomers)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_AttractNewCustomers = (TYPEOF(le.Input_Satisfaction_AttractNewCustomers))'','',':Satisfaction_AttractNewCustomers')
    #END
+    #IF( #TEXT(Input_Satisfaction_MeetCurrentCustomers)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_MeetCurrentCustomers = (TYPEOF(le.Input_Satisfaction_MeetCurrentCustomers))'','',':Satisfaction_MeetCurrentCustomers')
    #END
+    #IF( #TEXT(Input_Satisfaction_PRExposureBranding)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_PRExposureBranding = (TYPEOF(le.Input_Satisfaction_PRExposureBranding))'','',':Satisfaction_PRExposureBranding')
    #END
+    #IF( #TEXT(Input_Satisfaction_PromoteCompanyBrand)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_PromoteCompanyBrand = (TYPEOF(le.Input_Satisfaction_PromoteCompanyBrand))'','',':Satisfaction_PromoteCompanyBrand')
    #END
+    #IF( #TEXT(Input_Satisfaction_ShowCaseNewProduct)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_ShowCaseNewProduct = (TYPEOF(le.Input_Satisfaction_ShowCaseNewProduct))'','',':Satisfaction_ShowCaseNewProduct')
    #END
+    #IF( #TEXT(Input_Satisfaction_GaugeCompitition)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_GaugeCompitition = (TYPEOF(le.Input_Satisfaction_GaugeCompitition))'','',':Satisfaction_GaugeCompitition')
    #END
+    #IF( #TEXT(Input_Satisfaction_ParticipateEventsFestivities)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_ParticipateEventsFestivities = (TYPEOF(le.Input_Satisfaction_ParticipateEventsFestivities))'','',':Satisfaction_ParticipateEventsFestivities')
    #END
+    #IF( #TEXT(Input_Satisfaction_VisionCouncilDiscount)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_VisionCouncilDiscount = (TYPEOF(le.Input_Satisfaction_VisionCouncilDiscount))'','',':Satisfaction_VisionCouncilDiscount')
    #END
+    #IF( #TEXT(Input_Satisfaction_Other)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_Other = (TYPEOF(le.Input_Satisfaction_Other))'','',':Satisfaction_Other')
    #END
+    #IF( #TEXT(Input_Satisfaction_Overall)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_Overall = (TYPEOF(le.Input_Satisfaction_Overall))'','',':Satisfaction_Overall')
    #END
+    #IF( #TEXT(Input_OverallPerformance_Traffic)='' )
      '' 
    #ELSE
        IF( le.Input_OverallPerformance_Traffic = (TYPEOF(le.Input_OverallPerformance_Traffic))'','',':OverallPerformance_Traffic')
    #END
+    #IF( #TEXT(Input_OverallPerformance_QualityOfBuyers)='' )
      '' 
    #ELSE
        IF( le.Input_OverallPerformance_QualityOfBuyers = (TYPEOF(le.Input_OverallPerformance_QualityOfBuyers))'','',':OverallPerformance_QualityOfBuyers')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_VisionWest)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_VisionWest = (TYPEOF(le.Input_CompetitiveEvents_VisionWest))'','',':CompetitiveEvents_VisionWest')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_VisionEast)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_VisionEast = (TYPEOF(le.Input_CompetitiveEvents_VisionEast))'','',':CompetitiveEvents_VisionEast')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_AOA)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_AOA = (TYPEOF(le.Input_CompetitiveEvents_AOA))'','',':CompetitiveEvents_AOA')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_SECO)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_SECO = (TYPEOF(le.Input_CompetitiveEvents_SECO))'','',':CompetitiveEvents_SECO')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_MIDO)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_MIDO = (TYPEOF(le.Input_CompetitiveEvents_MIDO))'','',':CompetitiveEvents_MIDO')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_SILMO)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_SILMO = (TYPEOF(le.Input_CompetitiveEvents_SILMO))'','',':CompetitiveEvents_SILMO')
    #END
+    #IF( #TEXT(Input_CompetitiveEvents_LocalEvent)='' )
      '' 
    #ELSE
        IF( le.Input_CompetitiveEvents_LocalEvent = (TYPEOF(le.Input_CompetitiveEvents_LocalEvent))'','',':CompetitiveEvents_LocalEvent')
    #END
+    #IF( #TEXT(Input_ValueOfNext12MonthsOrdersExpected)='' )
      '' 
    #ELSE
        IF( le.Input_ValueOfNext12MonthsOrdersExpected = (TYPEOF(le.Input_ValueOfNext12MonthsOrdersExpected))'','',':ValueOfNext12MonthsOrdersExpected')
    #END
+    #IF( #TEXT(Input_Satisfaction_CustomerService)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_CustomerService = (TYPEOF(le.Input_Satisfaction_CustomerService))'','',':Satisfaction_CustomerService')
    #END
+    #IF( #TEXT(Input_Satisfaction_FreemanLabor)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_FreemanLabor = (TYPEOF(le.Input_Satisfaction_FreemanLabor))'','',':Satisfaction_FreemanLabor')
    #END
+    #IF( #TEXT(Input_Satisfaction_RX800Number)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_RX800Number = (TYPEOF(le.Input_Satisfaction_RX800Number))'','',':Satisfaction_RX800Number')
    #END
+    #IF( #TEXT(Input_Satisfaction_ElectriciansCatering)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_ElectriciansCatering = (TYPEOF(le.Input_Satisfaction_ElectriciansCatering))'','',':Satisfaction_ElectriciansCatering')
    #END
+    #IF( #TEXT(Input_Satisfaction_TravelDesk)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_TravelDesk = (TYPEOF(le.Input_Satisfaction_TravelDesk))'','',':Satisfaction_TravelDesk')
    #END
+    #IF( #TEXT(Input_Satisfaction_Registration)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_Registration = (TYPEOF(le.Input_Satisfaction_Registration))'','',':Satisfaction_Registration')
    #END
+    #IF( #TEXT(Input_Satisfaction_HotelShuttles)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_HotelShuttles = (TYPEOF(le.Input_Satisfaction_HotelShuttles))'','',':Satisfaction_HotelShuttles')
    #END
+    #IF( #TEXT(Input_Satisfaction_FreeAirportShuttles)='' )
      '' 
    #ELSE
        IF( le.Input_Satisfaction_FreeAirportShuttles = (TYPEOF(le.Input_Satisfaction_FreeAirportShuttles))'','',':Satisfaction_FreeAirportShuttles')
    #END
+    #IF( #TEXT(Input_MostDesirableAttendee)='' )
      '' 
    #ELSE
        IF( le.Input_MostDesirableAttendee = (TYPEOF(le.Input_MostDesirableAttendee))'','',':MostDesirableAttendee')
    #END
+    #IF( #TEXT(Input_PROBLEM_EXPERIENCE)='' )
      '' 
    #ELSE
        IF( le.Input_PROBLEM_EXPERIENCE = (TYPEOF(le.Input_PROBLEM_EXPERIENCE))'','',':PROBLEM_EXPERIENCE')
    #END
+    #IF( #TEXT(Input_Agreement_ExhibitingLowersCostPerAcquisition)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ExhibitingLowersCostPerAcquisition = (TYPEOF(le.Input_Agreement_ExhibitingLowersCostPerAcquisition))'','',':Agreement_ExhibitingLowersCostPerAcquisition')
    #END
+    #IF( #TEXT(Input_Agreement_ExhibitingDeliversNewLeads)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ExhibitingDeliversNewLeads = (TYPEOF(le.Input_Agreement_ExhibitingDeliversNewLeads))'','',':Agreement_ExhibitingDeliversNewLeads')
    #END
+    #IF( #TEXT(Input_Agreement_ExhibitingDeliversQualityLeads)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ExhibitingDeliversQualityLeads = (TYPEOF(le.Input_Agreement_ExhibitingDeliversQualityLeads))'','',':Agreement_ExhibitingDeliversQualityLeads')
    #END
+    #IF( #TEXT(Input_Agreement_ExhibitingDeliversQualityBuyers)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ExhibitingDeliversQualityBuyers = (TYPEOF(le.Input_Agreement_ExhibitingDeliversQualityBuyers))'','',':Agreement_ExhibitingDeliversQualityBuyers')
    #END
+    #IF( #TEXT(Input_Agreement_HighLevelCustomerService)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_HighLevelCustomerService = (TYPEOF(le.Input_Agreement_HighLevelCustomerService))'','',':Agreement_HighLevelCustomerService')
    #END
+    #IF( #TEXT(Input_Agreement_ShowFloorHasHighEnergy)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ShowFloorHasHighEnergy = (TYPEOF(le.Input_Agreement_ShowFloorHasHighEnergy))'','',':Agreement_ShowFloorHasHighEnergy')
    #END
+    #IF( #TEXT(Input_Agreement_ImportantEventInIndustry)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_ImportantEventInIndustry = (TYPEOF(le.Input_Agreement_ImportantEventInIndustry))'','',':Agreement_ImportantEventInIndustry')
    #END
+    #IF( #TEXT(Input_Agreement_EventGrowsMyBusiness)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_EventGrowsMyBusiness = (TYPEOF(le.Input_Agreement_EventGrowsMyBusiness))'','',':Agreement_EventGrowsMyBusiness')
    #END
+    #IF( #TEXT(Input_Agreement_EventHelpsLaunchNewProducts)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_EventHelpsLaunchNewProducts = (TYPEOF(le.Input_Agreement_EventHelpsLaunchNewProducts))'','',':Agreement_EventHelpsLaunchNewProducts')
    #END
+    #IF( #TEXT(Input_Agreement_EventDeliversWantedEndUsers)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_EventDeliversWantedEndUsers = (TYPEOF(le.Input_Agreement_EventDeliversWantedEndUsers))'','',':Agreement_EventDeliversWantedEndUsers')
    #END
+    #IF( #TEXT(Input_Agreement_EventDeliversWantedDealersInstallers)='' )
      '' 
    #ELSE
        IF( le.Input_Agreement_EventDeliversWantedDealersInstallers = (TYPEOF(le.Input_Agreement_EventDeliversWantedDealersInstallers))'','',':Agreement_EventDeliversWantedDealersInstallers')
    #END
;
  END;
  #uniquename(op)
  %op% := PROJECT(infile,%ot%(LEFT));
  #uniquename(ort)
  %ort% := RECORD
    %op%.fields;
    UNSIGNED cnt := COUNT(GROUP);
  END;
  outfile := TOPN( TABLE( %op%, %ort%, fields, FEW ), 1000, -cnt );
ENDMACRO;
