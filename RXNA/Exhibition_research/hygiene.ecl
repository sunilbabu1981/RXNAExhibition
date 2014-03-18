import ut,SALT28;
export hygiene(dataset(layout_research	) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_Record_ID_pcnt := AVE(GROUP,IF(h.Record_ID = (TYPEOF(h.Record_ID))'',0,100));
    maxlength_Record_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Record_ID)));
    avelength_Record_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Record_ID)),h.Record_ID<>(typeof(h.Record_ID))'');
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_Event_pcnt := AVE(GROUP,IF(h.Event = (TYPEOF(h.Event))'',0,100));
    maxlength_Event := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)));
    avelength_Event := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)),h.Event<>(typeof(h.Event))'');
    populated_Edition_pcnt := AVE(GROUP,IF(h.Edition = (TYPEOF(h.Edition))'',0,100));
    maxlength_Edition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)));
    avelength_Edition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)),h.Edition<>(typeof(h.Edition))'');
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_Satisfaction_pcnt := AVE(GROUP,IF(h.Satisfaction = (TYPEOF(h.Satisfaction))'',0,100));
    maxlength_Satisfaction := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction)));
    avelength_Satisfaction := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction)),h.Satisfaction<>(typeof(h.Satisfaction))'');
    populated_Loyalty_pcnt := AVE(GROUP,IF(h.Loyalty = (TYPEOF(h.Loyalty))'',0,100));
    maxlength_Loyalty := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Loyalty)));
    avelength_Loyalty := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Loyalty)),h.Loyalty<>(typeof(h.Loyalty))'');
    populated_NPS_pcnt := AVE(GROUP,IF(h.NPS = (TYPEOF(h.NPS))'',0,100));
    maxlength_NPS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.NPS)));
    avelength_NPS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.NPS)),h.NPS<>(typeof(h.NPS))'');
    populated_Open_NPS_pcnt := AVE(GROUP,IF(h.Open_NPS = (TYPEOF(h.Open_NPS))'',0,100));
    maxlength_Open_NPS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Open_NPS)));
    avelength_Open_NPS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Open_NPS)),h.Open_NPS<>(typeof(h.Open_NPS))'');
    populated_NeedToExhibit_pcnt := AVE(GROUP,IF(h.NeedToExhibit = (TYPEOF(h.NeedToExhibit))'',0,100));
    maxlength_NeedToExhibit := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.NeedToExhibit)));
    avelength_NeedToExhibit := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.NeedToExhibit)),h.NeedToExhibit<>(typeof(h.NeedToExhibit))'');
    populated_Objective_AttractNewCustomers_pcnt := AVE(GROUP,IF(h.Objective_AttractNewCustomers = (TYPEOF(h.Objective_AttractNewCustomers))'',0,100));
    maxlength_Objective_AttractNewCustomers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_AttractNewCustomers)));
    avelength_Objective_AttractNewCustomers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_AttractNewCustomers)),h.Objective_AttractNewCustomers<>(typeof(h.Objective_AttractNewCustomers))'');
    populated_Objective_MeetCurrentCustomers_pcnt := AVE(GROUP,IF(h.Objective_MeetCurrentCustomers = (TYPEOF(h.Objective_MeetCurrentCustomers))'',0,100));
    maxlength_Objective_MeetCurrentCustomers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_MeetCurrentCustomers)));
    avelength_Objective_MeetCurrentCustomers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_MeetCurrentCustomers)),h.Objective_MeetCurrentCustomers<>(typeof(h.Objective_MeetCurrentCustomers))'');
    populated_Objective_PRExposureBranding_pcnt := AVE(GROUP,IF(h.Objective_PRExposureBranding = (TYPEOF(h.Objective_PRExposureBranding))'',0,100));
    maxlength_Objective_PRExposureBranding := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_PRExposureBranding)));
    avelength_Objective_PRExposureBranding := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_PRExposureBranding)),h.Objective_PRExposureBranding<>(typeof(h.Objective_PRExposureBranding))'');
    populated_Objective_PromoteCompanyBrand_pcnt := AVE(GROUP,IF(h.Objective_PromoteCompanyBrand = (TYPEOF(h.Objective_PromoteCompanyBrand))'',0,100));
    maxlength_Objective_PromoteCompanyBrand := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_PromoteCompanyBrand)));
    avelength_Objective_PromoteCompanyBrand := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_PromoteCompanyBrand)),h.Objective_PromoteCompanyBrand<>(typeof(h.Objective_PromoteCompanyBrand))'');
    populated_Objective_ShowCaseNewProduct_pcnt := AVE(GROUP,IF(h.Objective_ShowCaseNewProduct = (TYPEOF(h.Objective_ShowCaseNewProduct))'',0,100));
    maxlength_Objective_ShowCaseNewProduct := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_ShowCaseNewProduct)));
    avelength_Objective_ShowCaseNewProduct := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_ShowCaseNewProduct)),h.Objective_ShowCaseNewProduct<>(typeof(h.Objective_ShowCaseNewProduct))'');
    populated_Objective_GaugeCompitition_pcnt := AVE(GROUP,IF(h.Objective_GaugeCompitition = (TYPEOF(h.Objective_GaugeCompitition))'',0,100));
    maxlength_Objective_GaugeCompitition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_GaugeCompitition)));
    avelength_Objective_GaugeCompitition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_GaugeCompitition)),h.Objective_GaugeCompitition<>(typeof(h.Objective_GaugeCompitition))'');
    populated_Objective_ParticipateEventsFestivities_pcnt := AVE(GROUP,IF(h.Objective_ParticipateEventsFestivities = (TYPEOF(h.Objective_ParticipateEventsFestivities))'',0,100));
    maxlength_Objective_ParticipateEventsFestivities := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_ParticipateEventsFestivities)));
    avelength_Objective_ParticipateEventsFestivities := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_ParticipateEventsFestivities)),h.Objective_ParticipateEventsFestivities<>(typeof(h.Objective_ParticipateEventsFestivities))'');
    populated_Objective_VisionCouncilDiscount_pcnt := AVE(GROUP,IF(h.Objective_VisionCouncilDiscount = (TYPEOF(h.Objective_VisionCouncilDiscount))'',0,100));
    maxlength_Objective_VisionCouncilDiscount := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_VisionCouncilDiscount)));
    avelength_Objective_VisionCouncilDiscount := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_VisionCouncilDiscount)),h.Objective_VisionCouncilDiscount<>(typeof(h.Objective_VisionCouncilDiscount))'');
    populated_Objective_Other_pcnt := AVE(GROUP,IF(h.Objective_Other = (TYPEOF(h.Objective_Other))'',0,100));
    maxlength_Objective_Other := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_Other)));
    avelength_Objective_Other := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Objective_Other)),h.Objective_Other<>(typeof(h.Objective_Other))'');
    populated_PrimaryReason_pcnt := AVE(GROUP,IF(h.PrimaryReason = (TYPEOF(h.PrimaryReason))'',0,100));
    maxlength_PrimaryReason := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrimaryReason)));
    avelength_PrimaryReason := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrimaryReason)),h.PrimaryReason<>(typeof(h.PrimaryReason))'');
    populated_Satisfaction_AttractNewCustomers_pcnt := AVE(GROUP,IF(h.Satisfaction_AttractNewCustomers = (TYPEOF(h.Satisfaction_AttractNewCustomers))'',0,100));
    maxlength_Satisfaction_AttractNewCustomers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_AttractNewCustomers)));
    avelength_Satisfaction_AttractNewCustomers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_AttractNewCustomers)),h.Satisfaction_AttractNewCustomers<>(typeof(h.Satisfaction_AttractNewCustomers))'');
    populated_Satisfaction_MeetCurrentCustomers_pcnt := AVE(GROUP,IF(h.Satisfaction_MeetCurrentCustomers = (TYPEOF(h.Satisfaction_MeetCurrentCustomers))'',0,100));
    maxlength_Satisfaction_MeetCurrentCustomers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_MeetCurrentCustomers)));
    avelength_Satisfaction_MeetCurrentCustomers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_MeetCurrentCustomers)),h.Satisfaction_MeetCurrentCustomers<>(typeof(h.Satisfaction_MeetCurrentCustomers))'');
    populated_Satisfaction_PRExposureBranding_pcnt := AVE(GROUP,IF(h.Satisfaction_PRExposureBranding = (TYPEOF(h.Satisfaction_PRExposureBranding))'',0,100));
    maxlength_Satisfaction_PRExposureBranding := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_PRExposureBranding)));
    avelength_Satisfaction_PRExposureBranding := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_PRExposureBranding)),h.Satisfaction_PRExposureBranding<>(typeof(h.Satisfaction_PRExposureBranding))'');
    populated_Satisfaction_PromoteCompanyBrand_pcnt := AVE(GROUP,IF(h.Satisfaction_PromoteCompanyBrand = (TYPEOF(h.Satisfaction_PromoteCompanyBrand))'',0,100));
    maxlength_Satisfaction_PromoteCompanyBrand := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_PromoteCompanyBrand)));
    avelength_Satisfaction_PromoteCompanyBrand := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_PromoteCompanyBrand)),h.Satisfaction_PromoteCompanyBrand<>(typeof(h.Satisfaction_PromoteCompanyBrand))'');
    populated_Satisfaction_ShowCaseNewProduct_pcnt := AVE(GROUP,IF(h.Satisfaction_ShowCaseNewProduct = (TYPEOF(h.Satisfaction_ShowCaseNewProduct))'',0,100));
    maxlength_Satisfaction_ShowCaseNewProduct := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ShowCaseNewProduct)));
    avelength_Satisfaction_ShowCaseNewProduct := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ShowCaseNewProduct)),h.Satisfaction_ShowCaseNewProduct<>(typeof(h.Satisfaction_ShowCaseNewProduct))'');
    populated_Satisfaction_GaugeCompitition_pcnt := AVE(GROUP,IF(h.Satisfaction_GaugeCompitition = (TYPEOF(h.Satisfaction_GaugeCompitition))'',0,100));
    maxlength_Satisfaction_GaugeCompitition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_GaugeCompitition)));
    avelength_Satisfaction_GaugeCompitition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_GaugeCompitition)),h.Satisfaction_GaugeCompitition<>(typeof(h.Satisfaction_GaugeCompitition))'');
    populated_Satisfaction_ParticipateEventsFestivities_pcnt := AVE(GROUP,IF(h.Satisfaction_ParticipateEventsFestivities = (TYPEOF(h.Satisfaction_ParticipateEventsFestivities))'',0,100));
    maxlength_Satisfaction_ParticipateEventsFestivities := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ParticipateEventsFestivities)));
    avelength_Satisfaction_ParticipateEventsFestivities := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ParticipateEventsFestivities)),h.Satisfaction_ParticipateEventsFestivities<>(typeof(h.Satisfaction_ParticipateEventsFestivities))'');
    populated_Satisfaction_VisionCouncilDiscount_pcnt := AVE(GROUP,IF(h.Satisfaction_VisionCouncilDiscount = (TYPEOF(h.Satisfaction_VisionCouncilDiscount))'',0,100));
    maxlength_Satisfaction_VisionCouncilDiscount := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_VisionCouncilDiscount)));
    avelength_Satisfaction_VisionCouncilDiscount := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_VisionCouncilDiscount)),h.Satisfaction_VisionCouncilDiscount<>(typeof(h.Satisfaction_VisionCouncilDiscount))'');
    populated_Satisfaction_Other_pcnt := AVE(GROUP,IF(h.Satisfaction_Other = (TYPEOF(h.Satisfaction_Other))'',0,100));
    maxlength_Satisfaction_Other := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Other)));
    avelength_Satisfaction_Other := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Other)),h.Satisfaction_Other<>(typeof(h.Satisfaction_Other))'');
    populated_Satisfaction_Overall_pcnt := AVE(GROUP,IF(h.Satisfaction_Overall = (TYPEOF(h.Satisfaction_Overall))'',0,100));
    maxlength_Satisfaction_Overall := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Overall)));
    avelength_Satisfaction_Overall := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Overall)),h.Satisfaction_Overall<>(typeof(h.Satisfaction_Overall))'');
    populated_OverallPerformance_Traffic_pcnt := AVE(GROUP,IF(h.OverallPerformance_Traffic = (TYPEOF(h.OverallPerformance_Traffic))'',0,100));
    maxlength_OverallPerformance_Traffic := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OverallPerformance_Traffic)));
    avelength_OverallPerformance_Traffic := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OverallPerformance_Traffic)),h.OverallPerformance_Traffic<>(typeof(h.OverallPerformance_Traffic))'');
    populated_OverallPerformance_QualityOfBuyers_pcnt := AVE(GROUP,IF(h.OverallPerformance_QualityOfBuyers = (TYPEOF(h.OverallPerformance_QualityOfBuyers))'',0,100));
    maxlength_OverallPerformance_QualityOfBuyers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OverallPerformance_QualityOfBuyers)));
    avelength_OverallPerformance_QualityOfBuyers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OverallPerformance_QualityOfBuyers)),h.OverallPerformance_QualityOfBuyers<>(typeof(h.OverallPerformance_QualityOfBuyers))'');
    populated_CompetitiveEvents_VisionWest_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_VisionWest = (TYPEOF(h.CompetitiveEvents_VisionWest))'',0,100));
    maxlength_CompetitiveEvents_VisionWest := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_VisionWest)));
    avelength_CompetitiveEvents_VisionWest := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_VisionWest)),h.CompetitiveEvents_VisionWest<>(typeof(h.CompetitiveEvents_VisionWest))'');
    populated_CompetitiveEvents_VisionEast_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_VisionEast = (TYPEOF(h.CompetitiveEvents_VisionEast))'',0,100));
    maxlength_CompetitiveEvents_VisionEast := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_VisionEast)));
    avelength_CompetitiveEvents_VisionEast := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_VisionEast)),h.CompetitiveEvents_VisionEast<>(typeof(h.CompetitiveEvents_VisionEast))'');
    populated_CompetitiveEvents_AOA_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_AOA = (TYPEOF(h.CompetitiveEvents_AOA))'',0,100));
    maxlength_CompetitiveEvents_AOA := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_AOA)));
    avelength_CompetitiveEvents_AOA := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_AOA)),h.CompetitiveEvents_AOA<>(typeof(h.CompetitiveEvents_AOA))'');
    populated_CompetitiveEvents_SECO_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_SECO = (TYPEOF(h.CompetitiveEvents_SECO))'',0,100));
    maxlength_CompetitiveEvents_SECO := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_SECO)));
    avelength_CompetitiveEvents_SECO := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_SECO)),h.CompetitiveEvents_SECO<>(typeof(h.CompetitiveEvents_SECO))'');
    populated_CompetitiveEvents_MIDO_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_MIDO = (TYPEOF(h.CompetitiveEvents_MIDO))'',0,100));
    maxlength_CompetitiveEvents_MIDO := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_MIDO)));
    avelength_CompetitiveEvents_MIDO := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_MIDO)),h.CompetitiveEvents_MIDO<>(typeof(h.CompetitiveEvents_MIDO))'');
    populated_CompetitiveEvents_SILMO_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_SILMO = (TYPEOF(h.CompetitiveEvents_SILMO))'',0,100));
    maxlength_CompetitiveEvents_SILMO := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_SILMO)));
    avelength_CompetitiveEvents_SILMO := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_SILMO)),h.CompetitiveEvents_SILMO<>(typeof(h.CompetitiveEvents_SILMO))'');
    populated_CompetitiveEvents_LocalEvent_pcnt := AVE(GROUP,IF(h.CompetitiveEvents_LocalEvent = (TYPEOF(h.CompetitiveEvents_LocalEvent))'',0,100));
    maxlength_CompetitiveEvents_LocalEvent := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_LocalEvent)));
    avelength_CompetitiveEvents_LocalEvent := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompetitiveEvents_LocalEvent)),h.CompetitiveEvents_LocalEvent<>(typeof(h.CompetitiveEvents_LocalEvent))'');
    populated_ValueOfNext12MonthsOrdersExpected_pcnt := AVE(GROUP,IF(h.ValueOfNext12MonthsOrdersExpected = (TYPEOF(h.ValueOfNext12MonthsOrdersExpected))'',0,100));
    maxlength_ValueOfNext12MonthsOrdersExpected := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ValueOfNext12MonthsOrdersExpected)));
    avelength_ValueOfNext12MonthsOrdersExpected := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ValueOfNext12MonthsOrdersExpected)),h.ValueOfNext12MonthsOrdersExpected<>(typeof(h.ValueOfNext12MonthsOrdersExpected))'');
    populated_Satisfaction_CustomerService_pcnt := AVE(GROUP,IF(h.Satisfaction_CustomerService = (TYPEOF(h.Satisfaction_CustomerService))'',0,100));
    maxlength_Satisfaction_CustomerService := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_CustomerService)));
    avelength_Satisfaction_CustomerService := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_CustomerService)),h.Satisfaction_CustomerService<>(typeof(h.Satisfaction_CustomerService))'');
    populated_Satisfaction_FreemanLabor_pcnt := AVE(GROUP,IF(h.Satisfaction_FreemanLabor = (TYPEOF(h.Satisfaction_FreemanLabor))'',0,100));
    maxlength_Satisfaction_FreemanLabor := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_FreemanLabor)));
    avelength_Satisfaction_FreemanLabor := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_FreemanLabor)),h.Satisfaction_FreemanLabor<>(typeof(h.Satisfaction_FreemanLabor))'');
    populated_Satisfaction_RX800Number_pcnt := AVE(GROUP,IF(h.Satisfaction_RX800Number = (TYPEOF(h.Satisfaction_RX800Number))'',0,100));
    maxlength_Satisfaction_RX800Number := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_RX800Number)));
    avelength_Satisfaction_RX800Number := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_RX800Number)),h.Satisfaction_RX800Number<>(typeof(h.Satisfaction_RX800Number))'');
    populated_Satisfaction_ElectriciansCatering_pcnt := AVE(GROUP,IF(h.Satisfaction_ElectriciansCatering = (TYPEOF(h.Satisfaction_ElectriciansCatering))'',0,100));
    maxlength_Satisfaction_ElectriciansCatering := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ElectriciansCatering)));
    avelength_Satisfaction_ElectriciansCatering := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_ElectriciansCatering)),h.Satisfaction_ElectriciansCatering<>(typeof(h.Satisfaction_ElectriciansCatering))'');
    populated_Satisfaction_TravelDesk_pcnt := AVE(GROUP,IF(h.Satisfaction_TravelDesk = (TYPEOF(h.Satisfaction_TravelDesk))'',0,100));
    maxlength_Satisfaction_TravelDesk := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_TravelDesk)));
    avelength_Satisfaction_TravelDesk := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_TravelDesk)),h.Satisfaction_TravelDesk<>(typeof(h.Satisfaction_TravelDesk))'');
    populated_Satisfaction_Registration_pcnt := AVE(GROUP,IF(h.Satisfaction_Registration = (TYPEOF(h.Satisfaction_Registration))'',0,100));
    maxlength_Satisfaction_Registration := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Registration)));
    avelength_Satisfaction_Registration := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_Registration)),h.Satisfaction_Registration<>(typeof(h.Satisfaction_Registration))'');
    populated_Satisfaction_HotelShuttles_pcnt := AVE(GROUP,IF(h.Satisfaction_HotelShuttles = (TYPEOF(h.Satisfaction_HotelShuttles))'',0,100));
    maxlength_Satisfaction_HotelShuttles := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_HotelShuttles)));
    avelength_Satisfaction_HotelShuttles := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_HotelShuttles)),h.Satisfaction_HotelShuttles<>(typeof(h.Satisfaction_HotelShuttles))'');
    populated_Satisfaction_FreeAirportShuttles_pcnt := AVE(GROUP,IF(h.Satisfaction_FreeAirportShuttles = (TYPEOF(h.Satisfaction_FreeAirportShuttles))'',0,100));
    maxlength_Satisfaction_FreeAirportShuttles := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_FreeAirportShuttles)));
    avelength_Satisfaction_FreeAirportShuttles := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Satisfaction_FreeAirportShuttles)),h.Satisfaction_FreeAirportShuttles<>(typeof(h.Satisfaction_FreeAirportShuttles))'');
    populated_MostDesirableAttendee_pcnt := AVE(GROUP,IF(h.MostDesirableAttendee = (TYPEOF(h.MostDesirableAttendee))'',0,100));
    maxlength_MostDesirableAttendee := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MostDesirableAttendee)));
    avelength_MostDesirableAttendee := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MostDesirableAttendee)),h.MostDesirableAttendee<>(typeof(h.MostDesirableAttendee))'');
    populated_PROBLEM_EXPERIENCE_pcnt := AVE(GROUP,IF(h.PROBLEM_EXPERIENCE = (TYPEOF(h.PROBLEM_EXPERIENCE))'',0,100));
    maxlength_PROBLEM_EXPERIENCE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROBLEM_EXPERIENCE)));
    avelength_PROBLEM_EXPERIENCE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROBLEM_EXPERIENCE)),h.PROBLEM_EXPERIENCE<>(typeof(h.PROBLEM_EXPERIENCE))'');
    populated_Agreement_ExhibitingLowersCostPerAcquisition_pcnt := AVE(GROUP,IF(h.Agreement_ExhibitingLowersCostPerAcquisition = (TYPEOF(h.Agreement_ExhibitingLowersCostPerAcquisition))'',0,100));
    maxlength_Agreement_ExhibitingLowersCostPerAcquisition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingLowersCostPerAcquisition)));
    avelength_Agreement_ExhibitingLowersCostPerAcquisition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingLowersCostPerAcquisition)),h.Agreement_ExhibitingLowersCostPerAcquisition<>(typeof(h.Agreement_ExhibitingLowersCostPerAcquisition))'');
    populated_Agreement_ExhibitingDeliversNewLeads_pcnt := AVE(GROUP,IF(h.Agreement_ExhibitingDeliversNewLeads = (TYPEOF(h.Agreement_ExhibitingDeliversNewLeads))'',0,100));
    maxlength_Agreement_ExhibitingDeliversNewLeads := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversNewLeads)));
    avelength_Agreement_ExhibitingDeliversNewLeads := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversNewLeads)),h.Agreement_ExhibitingDeliversNewLeads<>(typeof(h.Agreement_ExhibitingDeliversNewLeads))'');
    populated_Agreement_ExhibitingDeliversQualityLeads_pcnt := AVE(GROUP,IF(h.Agreement_ExhibitingDeliversQualityLeads = (TYPEOF(h.Agreement_ExhibitingDeliversQualityLeads))'',0,100));
    maxlength_Agreement_ExhibitingDeliversQualityLeads := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversQualityLeads)));
    avelength_Agreement_ExhibitingDeliversQualityLeads := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversQualityLeads)),h.Agreement_ExhibitingDeliversQualityLeads<>(typeof(h.Agreement_ExhibitingDeliversQualityLeads))'');
    populated_Agreement_ExhibitingDeliversQualityBuyers_pcnt := AVE(GROUP,IF(h.Agreement_ExhibitingDeliversQualityBuyers = (TYPEOF(h.Agreement_ExhibitingDeliversQualityBuyers))'',0,100));
    maxlength_Agreement_ExhibitingDeliversQualityBuyers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversQualityBuyers)));
    avelength_Agreement_ExhibitingDeliversQualityBuyers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ExhibitingDeliversQualityBuyers)),h.Agreement_ExhibitingDeliversQualityBuyers<>(typeof(h.Agreement_ExhibitingDeliversQualityBuyers))'');
    populated_Agreement_HighLevelCustomerService_pcnt := AVE(GROUP,IF(h.Agreement_HighLevelCustomerService = (TYPEOF(h.Agreement_HighLevelCustomerService))'',0,100));
    maxlength_Agreement_HighLevelCustomerService := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_HighLevelCustomerService)));
    avelength_Agreement_HighLevelCustomerService := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_HighLevelCustomerService)),h.Agreement_HighLevelCustomerService<>(typeof(h.Agreement_HighLevelCustomerService))'');
    populated_Agreement_ShowFloorHasHighEnergy_pcnt := AVE(GROUP,IF(h.Agreement_ShowFloorHasHighEnergy = (TYPEOF(h.Agreement_ShowFloorHasHighEnergy))'',0,100));
    maxlength_Agreement_ShowFloorHasHighEnergy := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ShowFloorHasHighEnergy)));
    avelength_Agreement_ShowFloorHasHighEnergy := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ShowFloorHasHighEnergy)),h.Agreement_ShowFloorHasHighEnergy<>(typeof(h.Agreement_ShowFloorHasHighEnergy))'');
    populated_Agreement_ImportantEventInIndustry_pcnt := AVE(GROUP,IF(h.Agreement_ImportantEventInIndustry = (TYPEOF(h.Agreement_ImportantEventInIndustry))'',0,100));
    maxlength_Agreement_ImportantEventInIndustry := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ImportantEventInIndustry)));
    avelength_Agreement_ImportantEventInIndustry := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_ImportantEventInIndustry)),h.Agreement_ImportantEventInIndustry<>(typeof(h.Agreement_ImportantEventInIndustry))'');
    populated_Agreement_EventGrowsMyBusiness_pcnt := AVE(GROUP,IF(h.Agreement_EventGrowsMyBusiness = (TYPEOF(h.Agreement_EventGrowsMyBusiness))'',0,100));
    maxlength_Agreement_EventGrowsMyBusiness := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventGrowsMyBusiness)));
    avelength_Agreement_EventGrowsMyBusiness := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventGrowsMyBusiness)),h.Agreement_EventGrowsMyBusiness<>(typeof(h.Agreement_EventGrowsMyBusiness))'');
    populated_Agreement_EventHelpsLaunchNewProducts_pcnt := AVE(GROUP,IF(h.Agreement_EventHelpsLaunchNewProducts = (TYPEOF(h.Agreement_EventHelpsLaunchNewProducts))'',0,100));
    maxlength_Agreement_EventHelpsLaunchNewProducts := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventHelpsLaunchNewProducts)));
    avelength_Agreement_EventHelpsLaunchNewProducts := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventHelpsLaunchNewProducts)),h.Agreement_EventHelpsLaunchNewProducts<>(typeof(h.Agreement_EventHelpsLaunchNewProducts))'');
    populated_Agreement_EventDeliversWantedEndUsers_pcnt := AVE(GROUP,IF(h.Agreement_EventDeliversWantedEndUsers = (TYPEOF(h.Agreement_EventDeliversWantedEndUsers))'',0,100));
    maxlength_Agreement_EventDeliversWantedEndUsers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventDeliversWantedEndUsers)));
    avelength_Agreement_EventDeliversWantedEndUsers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventDeliversWantedEndUsers)),h.Agreement_EventDeliversWantedEndUsers<>(typeof(h.Agreement_EventDeliversWantedEndUsers))'');
    populated_Agreement_EventDeliversWantedDealersInstallers_pcnt := AVE(GROUP,IF(h.Agreement_EventDeliversWantedDealersInstallers = (TYPEOF(h.Agreement_EventDeliversWantedDealersInstallers))'',0,100));
    maxlength_Agreement_EventDeliversWantedDealersInstallers := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventDeliversWantedDealersInstallers)));
    avelength_Agreement_EventDeliversWantedDealersInstallers := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Agreement_EventDeliversWantedDealersInstallers)),h.Agreement_EventDeliversWantedDealersInstallers<>(typeof(h.Agreement_EventDeliversWantedDealersInstallers))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Record_ID),TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.Satisfaction),TRIM((SALT28.StrType)le.Loyalty),TRIM((SALT28.StrType)le.NPS),TRIM((SALT28.StrType)le.Open_NPS),TRIM((SALT28.StrType)le.NeedToExhibit),TRIM((SALT28.StrType)le.Objective_AttractNewCustomers),TRIM((SALT28.StrType)le.Objective_MeetCurrentCustomers),TRIM((SALT28.StrType)le.Objective_PRExposureBranding),TRIM((SALT28.StrType)le.Objective_PromoteCompanyBrand),TRIM((SALT28.StrType)le.Objective_ShowCaseNewProduct),TRIM((SALT28.StrType)le.Objective_GaugeCompitition),TRIM((SALT28.StrType)le.Objective_ParticipateEventsFestivities),TRIM((SALT28.StrType)le.Objective_VisionCouncilDiscount),TRIM((SALT28.StrType)le.Objective_Other),TRIM((SALT28.StrType)le.PrimaryReason),TRIM((SALT28.StrType)le.Satisfaction_AttractNewCustomers),TRIM((SALT28.StrType)le.Satisfaction_MeetCurrentCustomers),TRIM((SALT28.StrType)le.Satisfaction_PRExposureBranding),TRIM((SALT28.StrType)le.Satisfaction_PromoteCompanyBrand),TRIM((SALT28.StrType)le.Satisfaction_ShowCaseNewProduct),TRIM((SALT28.StrType)le.Satisfaction_GaugeCompitition),TRIM((SALT28.StrType)le.Satisfaction_ParticipateEventsFestivities),TRIM((SALT28.StrType)le.Satisfaction_VisionCouncilDiscount),TRIM((SALT28.StrType)le.Satisfaction_Other),TRIM((SALT28.StrType)le.Satisfaction_Overall),TRIM((SALT28.StrType)le.OverallPerformance_Traffic),TRIM((SALT28.StrType)le.OverallPerformance_QualityOfBuyers),TRIM((SALT28.StrType)le.CompetitiveEvents_VisionWest),TRIM((SALT28.StrType)le.CompetitiveEvents_VisionEast),TRIM((SALT28.StrType)le.CompetitiveEvents_AOA),TRIM((SALT28.StrType)le.CompetitiveEvents_SECO),TRIM((SALT28.StrType)le.CompetitiveEvents_MIDO),TRIM((SALT28.StrType)le.CompetitiveEvents_SILMO),TRIM((SALT28.StrType)le.CompetitiveEvents_LocalEvent),TRIM((SALT28.StrType)le.ValueOfNext12MonthsOrdersExpected),TRIM((SALT28.StrType)le.Satisfaction_CustomerService),TRIM((SALT28.StrType)le.Satisfaction_FreemanLabor),TRIM((SALT28.StrType)le.Satisfaction_RX800Number),TRIM((SALT28.StrType)le.Satisfaction_ElectriciansCatering),TRIM((SALT28.StrType)le.Satisfaction_TravelDesk),TRIM((SALT28.StrType)le.Satisfaction_Registration),TRIM((SALT28.StrType)le.Satisfaction_HotelShuttles),TRIM((SALT28.StrType)le.Satisfaction_FreeAirportShuttles),TRIM((SALT28.StrType)le.MostDesirableAttendee),TRIM((SALT28.StrType)le.PROBLEM_EXPERIENCE),TRIM((SALT28.StrType)le.Agreement_ExhibitingLowersCostPerAcquisition),TRIM((SALT28.StrType)le.Agreement_ExhibitingDeliversNewLeads),TRIM((SALT28.StrType)le.Agreement_ExhibitingDeliversQualityLeads),TRIM((SALT28.StrType)le.Agreement_ExhibitingDeliversQualityBuyers),TRIM((SALT28.StrType)le.Agreement_HighLevelCustomerService),TRIM((SALT28.StrType)le.Agreement_ShowFloorHasHighEnergy),TRIM((SALT28.StrType)le.Agreement_ImportantEventInIndustry),TRIM((SALT28.StrType)le.Agreement_EventGrowsMyBusiness),TRIM((SALT28.StrType)le.Agreement_EventHelpsLaunchNewProducts),TRIM((SALT28.StrType)le.Agreement_EventDeliversWantedEndUsers),TRIM((SALT28.StrType)le.Agreement_EventDeliversWantedDealersInstallers)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,61,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Record_ID'}
      ,{2,'CustomerID'}
      ,{3,'Event'}
      ,{4,'Edition'}
      ,{5,'Booth'}
      ,{6,'Satisfaction'}
      ,{7,'Loyalty'}
      ,{8,'NPS'}
      ,{9,'Open_NPS'}
      ,{10,'NeedToExhibit'}
      ,{11,'Objective_AttractNewCustomers'}
      ,{12,'Objective_MeetCurrentCustomers'}
      ,{13,'Objective_PRExposureBranding'}
      ,{14,'Objective_PromoteCompanyBrand'}
      ,{15,'Objective_ShowCaseNewProduct'}
      ,{16,'Objective_GaugeCompitition'}
      ,{17,'Objective_ParticipateEventsFestivities'}
      ,{18,'Objective_VisionCouncilDiscount'}
      ,{19,'Objective_Other'}
      ,{20,'PrimaryReason'}
      ,{21,'Satisfaction_AttractNewCustomers'}
      ,{22,'Satisfaction_MeetCurrentCustomers'}
      ,{23,'Satisfaction_PRExposureBranding'}
      ,{24,'Satisfaction_PromoteCompanyBrand'}
      ,{25,'Satisfaction_ShowCaseNewProduct'}
      ,{26,'Satisfaction_GaugeCompitition'}
      ,{27,'Satisfaction_ParticipateEventsFestivities'}
      ,{28,'Satisfaction_VisionCouncilDiscount'}
      ,{29,'Satisfaction_Other'}
      ,{30,'Satisfaction_Overall'}
      ,{31,'OverallPerformance_Traffic'}
      ,{32,'OverallPerformance_QualityOfBuyers'}
      ,{33,'CompetitiveEvents_VisionWest'}
      ,{34,'CompetitiveEvents_VisionEast'}
      ,{35,'CompetitiveEvents_AOA'}
      ,{36,'CompetitiveEvents_SECO'}
      ,{37,'CompetitiveEvents_MIDO'}
      ,{38,'CompetitiveEvents_SILMO'}
      ,{39,'CompetitiveEvents_LocalEvent'}
      ,{40,'ValueOfNext12MonthsOrdersExpected'}
      ,{41,'Satisfaction_CustomerService'}
      ,{42,'Satisfaction_FreemanLabor'}
      ,{43,'Satisfaction_RX800Number'}
      ,{44,'Satisfaction_ElectriciansCatering'}
      ,{45,'Satisfaction_TravelDesk'}
      ,{46,'Satisfaction_Registration'}
      ,{47,'Satisfaction_HotelShuttles'}
      ,{48,'Satisfaction_FreeAirportShuttles'}
      ,{49,'MostDesirableAttendee'}
      ,{50,'PROBLEM_EXPERIENCE'}
      ,{51,'Agreement_ExhibitingLowersCostPerAcquisition'}
      ,{52,'Agreement_ExhibitingDeliversNewLeads'}
      ,{53,'Agreement_ExhibitingDeliversQualityLeads'}
      ,{54,'Agreement_ExhibitingDeliversQualityBuyers'}
      ,{55,'Agreement_HighLevelCustomerService'}
      ,{56,'Agreement_ShowFloorHasHighEnergy'}
      ,{57,'Agreement_ImportantEventInIndustry'}
      ,{58,'Agreement_EventGrowsMyBusiness'}
      ,{59,'Agreement_EventHelpsLaunchNewProducts'}
      ,{60,'Agreement_EventDeliversWantedEndUsers'}
      ,{61,'Agreement_EventDeliversWantedDealersInstallers'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_Record_ID((SALT28.StrType)le.Record_ID),
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_Event((SALT28.StrType)le.Event),
    Fields.InValid_Edition((SALT28.StrType)le.Edition),
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_Satisfaction((SALT28.StrType)le.Satisfaction),
    Fields.InValid_Loyalty((SALT28.StrType)le.Loyalty),
    Fields.InValid_NPS((SALT28.StrType)le.NPS),
    Fields.InValid_Open_NPS((SALT28.StrType)le.Open_NPS),
    Fields.InValid_NeedToExhibit((SALT28.StrType)le.NeedToExhibit),
    Fields.InValid_Objective_AttractNewCustomers((SALT28.StrType)le.Objective_AttractNewCustomers),
    Fields.InValid_Objective_MeetCurrentCustomers((SALT28.StrType)le.Objective_MeetCurrentCustomers),
    Fields.InValid_Objective_PRExposureBranding((SALT28.StrType)le.Objective_PRExposureBranding),
    Fields.InValid_Objective_PromoteCompanyBrand((SALT28.StrType)le.Objective_PromoteCompanyBrand),
    Fields.InValid_Objective_ShowCaseNewProduct((SALT28.StrType)le.Objective_ShowCaseNewProduct),
    Fields.InValid_Objective_GaugeCompitition((SALT28.StrType)le.Objective_GaugeCompitition),
    Fields.InValid_Objective_ParticipateEventsFestivities((SALT28.StrType)le.Objective_ParticipateEventsFestivities),
    Fields.InValid_Objective_VisionCouncilDiscount((SALT28.StrType)le.Objective_VisionCouncilDiscount),
    Fields.InValid_Objective_Other((SALT28.StrType)le.Objective_Other),
    Fields.InValid_PrimaryReason((SALT28.StrType)le.PrimaryReason),
    Fields.InValid_Satisfaction_AttractNewCustomers((SALT28.StrType)le.Satisfaction_AttractNewCustomers),
    Fields.InValid_Satisfaction_MeetCurrentCustomers((SALT28.StrType)le.Satisfaction_MeetCurrentCustomers),
    Fields.InValid_Satisfaction_PRExposureBranding((SALT28.StrType)le.Satisfaction_PRExposureBranding),
    Fields.InValid_Satisfaction_PromoteCompanyBrand((SALT28.StrType)le.Satisfaction_PromoteCompanyBrand),
    Fields.InValid_Satisfaction_ShowCaseNewProduct((SALT28.StrType)le.Satisfaction_ShowCaseNewProduct),
    Fields.InValid_Satisfaction_GaugeCompitition((SALT28.StrType)le.Satisfaction_GaugeCompitition),
    Fields.InValid_Satisfaction_ParticipateEventsFestivities((SALT28.StrType)le.Satisfaction_ParticipateEventsFestivities),
    Fields.InValid_Satisfaction_VisionCouncilDiscount((SALT28.StrType)le.Satisfaction_VisionCouncilDiscount),
    Fields.InValid_Satisfaction_Other((SALT28.StrType)le.Satisfaction_Other),
    Fields.InValid_Satisfaction_Overall((SALT28.StrType)le.Satisfaction_Overall),
    Fields.InValid_OverallPerformance_Traffic((SALT28.StrType)le.OverallPerformance_Traffic),
    Fields.InValid_OverallPerformance_QualityOfBuyers((SALT28.StrType)le.OverallPerformance_QualityOfBuyers),
    Fields.InValid_CompetitiveEvents_VisionWest((SALT28.StrType)le.CompetitiveEvents_VisionWest),
    Fields.InValid_CompetitiveEvents_VisionEast((SALT28.StrType)le.CompetitiveEvents_VisionEast),
    Fields.InValid_CompetitiveEvents_AOA((SALT28.StrType)le.CompetitiveEvents_AOA),
    Fields.InValid_CompetitiveEvents_SECO((SALT28.StrType)le.CompetitiveEvents_SECO),
    Fields.InValid_CompetitiveEvents_MIDO((SALT28.StrType)le.CompetitiveEvents_MIDO),
    Fields.InValid_CompetitiveEvents_SILMO((SALT28.StrType)le.CompetitiveEvents_SILMO),
    Fields.InValid_CompetitiveEvents_LocalEvent((SALT28.StrType)le.CompetitiveEvents_LocalEvent),
    Fields.InValid_ValueOfNext12MonthsOrdersExpected((SALT28.StrType)le.ValueOfNext12MonthsOrdersExpected),
    Fields.InValid_Satisfaction_CustomerService((SALT28.StrType)le.Satisfaction_CustomerService),
    Fields.InValid_Satisfaction_FreemanLabor((SALT28.StrType)le.Satisfaction_FreemanLabor),
    Fields.InValid_Satisfaction_RX800Number((SALT28.StrType)le.Satisfaction_RX800Number),
    Fields.InValid_Satisfaction_ElectriciansCatering((SALT28.StrType)le.Satisfaction_ElectriciansCatering),
    Fields.InValid_Satisfaction_TravelDesk((SALT28.StrType)le.Satisfaction_TravelDesk),
    Fields.InValid_Satisfaction_Registration((SALT28.StrType)le.Satisfaction_Registration),
    Fields.InValid_Satisfaction_HotelShuttles((SALT28.StrType)le.Satisfaction_HotelShuttles),
    Fields.InValid_Satisfaction_FreeAirportShuttles((SALT28.StrType)le.Satisfaction_FreeAirportShuttles),
    Fields.InValid_MostDesirableAttendee((SALT28.StrType)le.MostDesirableAttendee),
    Fields.InValid_PROBLEM_EXPERIENCE((SALT28.StrType)le.PROBLEM_EXPERIENCE),
    Fields.InValid_Agreement_ExhibitingLowersCostPerAcquisition((SALT28.StrType)le.Agreement_ExhibitingLowersCostPerAcquisition),
    Fields.InValid_Agreement_ExhibitingDeliversNewLeads((SALT28.StrType)le.Agreement_ExhibitingDeliversNewLeads),
    Fields.InValid_Agreement_ExhibitingDeliversQualityLeads((SALT28.StrType)le.Agreement_ExhibitingDeliversQualityLeads),
    Fields.InValid_Agreement_ExhibitingDeliversQualityBuyers((SALT28.StrType)le.Agreement_ExhibitingDeliversQualityBuyers),
    Fields.InValid_Agreement_HighLevelCustomerService((SALT28.StrType)le.Agreement_HighLevelCustomerService),
    Fields.InValid_Agreement_ShowFloorHasHighEnergy((SALT28.StrType)le.Agreement_ShowFloorHasHighEnergy),
    Fields.InValid_Agreement_ImportantEventInIndustry((SALT28.StrType)le.Agreement_ImportantEventInIndustry),
    Fields.InValid_Agreement_EventGrowsMyBusiness((SALT28.StrType)le.Agreement_EventGrowsMyBusiness),
    Fields.InValid_Agreement_EventHelpsLaunchNewProducts((SALT28.StrType)le.Agreement_EventHelpsLaunchNewProducts),
    Fields.InValid_Agreement_EventDeliversWantedEndUsers((SALT28.StrType)le.Agreement_EventDeliversWantedEndUsers),
    Fields.InValid_Agreement_EventDeliversWantedDealersInstallers((SALT28.StrType)le.Agreement_EventDeliversWantedDealersInstallers),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,61,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Record_ID(TotalErrors.ErrorNum),Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction(TotalErrors.ErrorNum),Fields.InValidMessage_Loyalty(TotalErrors.ErrorNum),Fields.InValidMessage_NPS(TotalErrors.ErrorNum),Fields.InValidMessage_Open_NPS(TotalErrors.ErrorNum),Fields.InValidMessage_NeedToExhibit(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_AttractNewCustomers(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_MeetCurrentCustomers(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_PRExposureBranding(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_PromoteCompanyBrand(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_ShowCaseNewProduct(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_GaugeCompitition(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_ParticipateEventsFestivities(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_VisionCouncilDiscount(TotalErrors.ErrorNum),Fields.InValidMessage_Objective_Other(TotalErrors.ErrorNum),Fields.InValidMessage_PrimaryReason(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_AttractNewCustomers(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_MeetCurrentCustomers(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_PRExposureBranding(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_PromoteCompanyBrand(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_ShowCaseNewProduct(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_GaugeCompitition(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_ParticipateEventsFestivities(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_VisionCouncilDiscount(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_Other(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_Overall(TotalErrors.ErrorNum),Fields.InValidMessage_OverallPerformance_Traffic(TotalErrors.ErrorNum),Fields.InValidMessage_OverallPerformance_QualityOfBuyers(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_VisionWest(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_VisionEast(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_AOA(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_SECO(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_MIDO(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_SILMO(TotalErrors.ErrorNum),Fields.InValidMessage_CompetitiveEvents_LocalEvent(TotalErrors.ErrorNum),Fields.InValidMessage_ValueOfNext12MonthsOrdersExpected(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_CustomerService(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_FreemanLabor(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_RX800Number(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_ElectriciansCatering(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_TravelDesk(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_Registration(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_HotelShuttles(TotalErrors.ErrorNum),Fields.InValidMessage_Satisfaction_FreeAirportShuttles(TotalErrors.ErrorNum),Fields.InValidMessage_MostDesirableAttendee(TotalErrors.ErrorNum),Fields.InValidMessage_PROBLEM_EXPERIENCE(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ExhibitingLowersCostPerAcquisition(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ExhibitingDeliversNewLeads(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ExhibitingDeliversQualityLeads(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ExhibitingDeliversQualityBuyers(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_HighLevelCustomerService(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ShowFloorHasHighEnergy(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_ImportantEventInIndustry(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_EventGrowsMyBusiness(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_EventHelpsLaunchNewProducts(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_EventDeliversWantedEndUsers(TotalErrors.ErrorNum),Fields.InValidMessage_Agreement_EventDeliversWantedDealersInstallers(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
