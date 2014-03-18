import ut,SALT28;
export hygiene(dataset(layout_MYSPrintedDir) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_Event_pcnt := AVE(GROUP,IF(h.Event = (TYPEOF(h.Event))'',0,100));
    maxlength_Event := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)));
    avelength_Event := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Event)),h.Event<>(typeof(h.Event))'');
    populated_Edition_pcnt := AVE(GROUP,IF(h.Edition = (TYPEOF(h.Edition))'',0,100));
    maxlength_Edition := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)));
    avelength_Edition := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Edition)),h.Edition<>(typeof(h.Edition))'');
    populated_Exhibitor_ID_pcnt := AVE(GROUP,IF(h.Exhibitor_ID = (TYPEOF(h.Exhibitor_ID))'',0,100));
    maxlength_Exhibitor_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_ID)));
    avelength_Exhibitor_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_ID)),h.Exhibitor_ID<>(typeof(h.Exhibitor_ID))'');
    populated_Company_ID_pcnt := AVE(GROUP,IF(h.Company_ID = (TYPEOF(h.Company_ID))'',0,100));
    maxlength_Company_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_ID)));
    avelength_Company_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_ID)),h.Company_ID<>(typeof(h.Company_ID))'');
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_Company_Name_pcnt := AVE(GROUP,IF(h.Company_Name = (TYPEOF(h.Company_Name))'',0,100));
    maxlength_Company_Name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_Name)));
    avelength_Company_Name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_Name)),h.Company_Name<>(typeof(h.Company_Name))'');
    populated_Alternate_Name_pcnt := AVE(GROUP,IF(h.Alternate_Name = (TYPEOF(h.Alternate_Name))'',0,100));
    maxlength_Alternate_Name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Alternate_Name)));
    avelength_Alternate_Name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Alternate_Name)),h.Alternate_Name<>(typeof(h.Alternate_Name))'');
    populated_Address_pcnt := AVE(GROUP,IF(h.Address = (TYPEOF(h.Address))'',0,100));
    maxlength_Address := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address)));
    avelength_Address := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address)),h.Address<>(typeof(h.Address))'');
    populated_Address_2_pcnt := AVE(GROUP,IF(h.Address_2 = (TYPEOF(h.Address_2))'',0,100));
    maxlength_Address_2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address_2)));
    avelength_Address_2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address_2)),h.Address_2<>(typeof(h.Address_2))'');
    populated_Address_3_pcnt := AVE(GROUP,IF(h.Address_3 = (TYPEOF(h.Address_3))'',0,100));
    maxlength_Address_3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address_3)));
    avelength_Address_3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address_3)),h.Address_3<>(typeof(h.Address_3))'');
    populated_City_pcnt := AVE(GROUP,IF(h.City = (TYPEOF(h.City))'',0,100));
    maxlength_City := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)));
    avelength_City := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)),h.City<>(typeof(h.City))'');
    populated_State_pcnt := AVE(GROUP,IF(h.State = (TYPEOF(h.State))'',0,100));
    maxlength_State := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)));
    avelength_State := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)),h.State<>(typeof(h.State))'');
    populated_Zip_pcnt := AVE(GROUP,IF(h.Zip = (TYPEOF(h.Zip))'',0,100));
    maxlength_Zip := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Zip)));
    avelength_Zip := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Zip)),h.Zip<>(typeof(h.Zip))'');
    populated_Phone_pcnt := AVE(GROUP,IF(h.Phone = (TYPEOF(h.Phone))'',0,100));
    maxlength_Phone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Phone)));
    avelength_Phone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Phone)),h.Phone<>(typeof(h.Phone))'');
    populated_Toll_Free_Phone_pcnt := AVE(GROUP,IF(h.Toll_Free_Phone = (TYPEOF(h.Toll_Free_Phone))'',0,100));
    maxlength_Toll_Free_Phone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Toll_Free_Phone)));
    avelength_Toll_Free_Phone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Toll_Free_Phone)),h.Toll_Free_Phone<>(typeof(h.Toll_Free_Phone))'');
    populated_Fax1_pcnt := AVE(GROUP,IF(h.Fax1 = (TYPEOF(h.Fax1))'',0,100));
    maxlength_Fax1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax1)));
    avelength_Fax1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax1)),h.Fax1<>(typeof(h.Fax1))'');
    populated_Fax2_pcnt := AVE(GROUP,IF(h.Fax2 = (TYPEOF(h.Fax2))'',0,100));
    maxlength_Fax2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax2)));
    avelength_Fax2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax2)),h.Fax2<>(typeof(h.Fax2))'');
    populated_Toll_Free_Fax_pcnt := AVE(GROUP,IF(h.Toll_Free_Fax = (TYPEOF(h.Toll_Free_Fax))'',0,100));
    maxlength_Toll_Free_Fax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Toll_Free_Fax)));
    avelength_Toll_Free_Fax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Toll_Free_Fax)),h.Toll_Free_Fax<>(typeof(h.Toll_Free_Fax))'');
    populated_Website_pcnt := AVE(GROUP,IF(h.Website = (TYPEOF(h.Website))'',0,100));
    maxlength_Website := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Website)));
    avelength_Website := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Website)),h.Website<>(typeof(h.Website))'');
    populated_Description_pcnt := AVE(GROUP,IF(h.Description = (TYPEOF(h.Description))'',0,100));
    maxlength_Description := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Description)));
    avelength_Description := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Description)),h.Description<>(typeof(h.Description))'');
    populated_Product_Categories_pcnt := AVE(GROUP,IF(h.Product_Categories = (TYPEOF(h.Product_Categories))'',0,100));
    maxlength_Product_Categories := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Product_Categories)));
    avelength_Product_Categories := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Product_Categories)),h.Product_Categories<>(typeof(h.Product_Categories))'');
    populated_New_Exhibitor_pcnt := AVE(GROUP,IF(h.New_Exhibitor = (TYPEOF(h.New_Exhibitor))'',0,100));
    maxlength_New_Exhibitor := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Exhibitor)));
    avelength_New_Exhibitor := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Exhibitor)),h.New_Exhibitor<>(typeof(h.New_Exhibitor))'');
    populated_SIA_Member_pcnt := AVE(GROUP,IF(h.SIA_Member = (TYPEOF(h.SIA_Member))'',0,100));
    maxlength_SIA_Member := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIA_Member)));
    avelength_SIA_Member := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SIA_Member)),h.SIA_Member<>(typeof(h.SIA_Member))'');
    populated_Facebook_pcnt := AVE(GROUP,IF(h.Facebook = (TYPEOF(h.Facebook))'',0,100));
    maxlength_Facebook := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Facebook)));
    avelength_Facebook := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Facebook)),h.Facebook<>(typeof(h.Facebook))'');
    populated_Twitter_pcnt := AVE(GROUP,IF(h.Twitter = (TYPEOF(h.Twitter))'',0,100));
    maxlength_Twitter := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Twitter)));
    avelength_Twitter := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Twitter)),h.Twitter<>(typeof(h.Twitter))'');
    populated_LinkedIn_pcnt := AVE(GROUP,IF(h.LinkedIn = (TYPEOF(h.LinkedIn))'',0,100));
    maxlength_LinkedIn := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LinkedIn)));
    avelength_LinkedIn := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LinkedIn)),h.LinkedIn<>(typeof(h.LinkedIn))'');
    populated_Print_Status_pcnt := AVE(GROUP,IF(h.Print_Status = (TYPEOF(h.Print_Status))'',0,100));
    maxlength_Print_Status := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Print_Status)));
    avelength_Print_Status := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Print_Status)),h.Print_Status<>(typeof(h.Print_Status))'');
    populated_Show_Specials_pcnt := AVE(GROUP,IF(h.Show_Specials = (TYPEOF(h.Show_Specials))'',0,100));
    maxlength_Show_Specials := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Show_Specials)));
    avelength_Show_Specials := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Show_Specials)),h.Show_Specials<>(typeof(h.Show_Specials))'');
    populated_New_Products_pcnt := AVE(GROUP,IF(h.New_Products = (TYPEOF(h.New_Products))'',0,100));
    maxlength_New_Products := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Products)));
    avelength_New_Products := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Products)),h.New_Products<>(typeof(h.New_Products))'');
    populated_New_Product_Gallery_pcnt := AVE(GROUP,IF(h.New_Product_Gallery = (TYPEOF(h.New_Product_Gallery))'',0,100));
    maxlength_New_Product_Gallery := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Product_Gallery)));
    avelength_New_Product_Gallery := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.New_Product_Gallery)),h.New_Product_Gallery<>(typeof(h.New_Product_Gallery))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Exhibitor_ID),TRIM((SALT28.StrType)le.Company_ID),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.Company_Name),TRIM((SALT28.StrType)le.Alternate_Name),TRIM((SALT28.StrType)le.Address),TRIM((SALT28.StrType)le.Address_2),TRIM((SALT28.StrType)le.Address_3),TRIM((SALT28.StrType)le.City),TRIM((SALT28.StrType)le.State),TRIM((SALT28.StrType)le.Zip),TRIM((SALT28.StrType)le.Phone),TRIM((SALT28.StrType)le.Toll_Free_Phone),TRIM((SALT28.StrType)le.Fax1),TRIM((SALT28.StrType)le.Fax2),TRIM((SALT28.StrType)le.Toll_Free_Fax),TRIM((SALT28.StrType)le.Website),TRIM((SALT28.StrType)le.Description),TRIM((SALT28.StrType)le.Product_Categories),TRIM((SALT28.StrType)le.New_Exhibitor),TRIM((SALT28.StrType)le.SIA_Member),TRIM((SALT28.StrType)le.Facebook),TRIM((SALT28.StrType)le.Twitter),TRIM((SALT28.StrType)le.LinkedIn),TRIM((SALT28.StrType)le.Print_Status),TRIM((SALT28.StrType)le.Show_Specials),TRIM((SALT28.StrType)le.New_Products),TRIM((SALT28.StrType)le.New_Product_Gallery)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,30,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'Exhibitor_ID'}
      ,{4,'Company_ID'}
      ,{5,'Booth'}
      ,{6,'Company_Name'}
      ,{7,'Alternate_Name'}
      ,{8,'Address'}
      ,{9,'Address_2'}
      ,{10,'Address_3'}
      ,{11,'City'}
      ,{12,'State'}
      ,{13,'Zip'}
      ,{14,'Phone'}
      ,{15,'Toll_Free_Phone'}
      ,{16,'Fax1'}
      ,{17,'Fax2'}
      ,{18,'Toll_Free_Fax'}
      ,{19,'Website'}
      ,{20,'Description'}
      ,{21,'Product_Categories'}
      ,{22,'New_Exhibitor'}
      ,{23,'SIA_Member'}
      ,{24,'Facebook'}
      ,{25,'Twitter'}
      ,{26,'LinkedIn'}
      ,{27,'Print_Status'}
      ,{28,'Show_Specials'}
      ,{29,'New_Products'}
      ,{30,'New_Product_Gallery'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_Event((SALT28.StrType)le.Event),
    Fields.InValid_Edition((SALT28.StrType)le.Edition),
    Fields.InValid_Exhibitor_ID((SALT28.StrType)le.Exhibitor_ID),
    Fields.InValid_Company_ID((SALT28.StrType)le.Company_ID),
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_Company_Name((SALT28.StrType)le.Company_Name),
    Fields.InValid_Alternate_Name((SALT28.StrType)le.Alternate_Name),
    Fields.InValid_Address((SALT28.StrType)le.Address),
    Fields.InValid_Address_2((SALT28.StrType)le.Address_2),
    Fields.InValid_Address_3((SALT28.StrType)le.Address_3),
    Fields.InValid_City((SALT28.StrType)le.City),
    Fields.InValid_State((SALT28.StrType)le.State),
    Fields.InValid_Zip((SALT28.StrType)le.Zip),
    Fields.InValid_Phone((SALT28.StrType)le.Phone),
    Fields.InValid_Toll_Free_Phone((SALT28.StrType)le.Toll_Free_Phone),
    Fields.InValid_Fax1((SALT28.StrType)le.Fax1),
    Fields.InValid_Fax2((SALT28.StrType)le.Fax2),
    Fields.InValid_Toll_Free_Fax((SALT28.StrType)le.Toll_Free_Fax),
    Fields.InValid_Website((SALT28.StrType)le.Website),
    Fields.InValid_Description((SALT28.StrType)le.Description),
    Fields.InValid_Product_Categories((SALT28.StrType)le.Product_Categories),
    Fields.InValid_New_Exhibitor((SALT28.StrType)le.New_Exhibitor),
    Fields.InValid_SIA_Member((SALT28.StrType)le.SIA_Member),
    Fields.InValid_Facebook((SALT28.StrType)le.Facebook),
    Fields.InValid_Twitter((SALT28.StrType)le.Twitter),
    Fields.InValid_LinkedIn((SALT28.StrType)le.LinkedIn),
    Fields.InValid_Print_Status((SALT28.StrType)le.Print_Status),
    Fields.InValid_Show_Specials((SALT28.StrType)le.Show_Specials),
    Fields.InValid_New_Products((SALT28.StrType)le.New_Products),
    Fields.InValid_New_Product_Gallery((SALT28.StrType)le.New_Product_Gallery),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,30,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor_ID(TotalErrors.ErrorNum),Fields.InValidMessage_Company_ID(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_Company_Name(TotalErrors.ErrorNum),Fields.InValidMessage_Alternate_Name(TotalErrors.ErrorNum),Fields.InValidMessage_Address(TotalErrors.ErrorNum),Fields.InValidMessage_Address_2(TotalErrors.ErrorNum),Fields.InValidMessage_Address_3(TotalErrors.ErrorNum),Fields.InValidMessage_City(TotalErrors.ErrorNum),Fields.InValidMessage_State(TotalErrors.ErrorNum),Fields.InValidMessage_Zip(TotalErrors.ErrorNum),Fields.InValidMessage_Phone(TotalErrors.ErrorNum),Fields.InValidMessage_Toll_Free_Phone(TotalErrors.ErrorNum),Fields.InValidMessage_Fax1(TotalErrors.ErrorNum),Fields.InValidMessage_Fax2(TotalErrors.ErrorNum),Fields.InValidMessage_Toll_Free_Fax(TotalErrors.ErrorNum),Fields.InValidMessage_Website(TotalErrors.ErrorNum),Fields.InValidMessage_Description(TotalErrors.ErrorNum),Fields.InValidMessage_Product_Categories(TotalErrors.ErrorNum),Fields.InValidMessage_New_Exhibitor(TotalErrors.ErrorNum),Fields.InValidMessage_SIA_Member(TotalErrors.ErrorNum),Fields.InValidMessage_Facebook(TotalErrors.ErrorNum),Fields.InValidMessage_Twitter(TotalErrors.ErrorNum),Fields.InValidMessage_LinkedIn(TotalErrors.ErrorNum),Fields.InValidMessage_Print_Status(TotalErrors.ErrorNum),Fields.InValidMessage_Show_Specials(TotalErrors.ErrorNum),Fields.InValidMessage_New_Products(TotalErrors.ErrorNum),Fields.InValidMessage_New_Product_Gallery(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
