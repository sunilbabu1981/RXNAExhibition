import ut,SALT28;
export hygiene(dataset(layout_TravelDataCombined) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_Show_pcnt := AVE(GROUP,IF(h.Show = (TYPEOF(h.Show))'',0,100));
    maxlength_Show := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Show)));
    avelength_Show := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Show)),h.Show<>(typeof(h.Show))'');
    populated_Year_pcnt := AVE(GROUP,IF(h.Year = (TYPEOF(h.Year))'',0,100));
    maxlength_Year := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Year)));
    avelength_Year := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Year)),h.Year<>(typeof(h.Year))'');
    populated_Category_pcnt := AVE(GROUP,IF(h.Category = (TYPEOF(h.Category))'',0,100));
    maxlength_Category := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Category)));
    avelength_Category := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Category)),h.Category<>(typeof(h.Category))'');
    populated_Attendance_Id_pcnt := AVE(GROUP,IF(h.Attendance_Id = (TYPEOF(h.Attendance_Id))'',0,100));
    maxlength_Attendance_Id := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Attendance_Id)));
    avelength_Attendance_Id := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Attendance_Id)),h.Attendance_Id<>(typeof(h.Attendance_Id))'');
    populated_Group_Id_pcnt := AVE(GROUP,IF(h.Group_Id = (TYPEOF(h.Group_Id))'',0,100));
    maxlength_Group_Id := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Group_Id)));
    avelength_Group_Id := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Group_Id)),h.Group_Id<>(typeof(h.Group_Id))'');
    populated_Last_name_pcnt := AVE(GROUP,IF(h.Last_name = (TYPEOF(h.Last_name))'',0,100));
    maxlength_Last_name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Last_name)));
    avelength_Last_name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Last_name)),h.Last_name<>(typeof(h.Last_name))'');
    populated_First_name_pcnt := AVE(GROUP,IF(h.First_name = (TYPEOF(h.First_name))'',0,100));
    maxlength_First_name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.First_name)));
    avelength_First_name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.First_name)),h.First_name<>(typeof(h.First_name))'');
    populated_Company_pcnt := AVE(GROUP,IF(h.Company = (TYPEOF(h.Company))'',0,100));
    maxlength_Company := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company)));
    avelength_Company := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company)),h.Company<>(typeof(h.Company))'');
    populated_Address1_pcnt := AVE(GROUP,IF(h.Address1 = (TYPEOF(h.Address1))'',0,100));
    maxlength_Address1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address1)));
    avelength_Address1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address1)),h.Address1<>(typeof(h.Address1))'');
    populated_Address2_pcnt := AVE(GROUP,IF(h.Address2 = (TYPEOF(h.Address2))'',0,100));
    maxlength_Address2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address2)));
    avelength_Address2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address2)),h.Address2<>(typeof(h.Address2))'');
    populated_City_pcnt := AVE(GROUP,IF(h.City = (TYPEOF(h.City))'',0,100));
    maxlength_City := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)));
    avelength_City := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)),h.City<>(typeof(h.City))'');
    populated_State_pcnt := AVE(GROUP,IF(h.State = (TYPEOF(h.State))'',0,100));
    maxlength_State := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)));
    avelength_State := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)),h.State<>(typeof(h.State))'');
    populated_Postal_Code_pcnt := AVE(GROUP,IF(h.Postal_Code = (TYPEOF(h.Postal_Code))'',0,100));
    maxlength_Postal_Code := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Postal_Code)));
    avelength_Postal_Code := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Postal_Code)),h.Postal_Code<>(typeof(h.Postal_Code))'');
    populated_Country_pcnt := AVE(GROUP,IF(h.Country = (TYPEOF(h.Country))'',0,100));
    maxlength_Country := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Country)));
    avelength_Country := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Country)),h.Country<>(typeof(h.Country))'');
    populated_Email_pcnt := AVE(GROUP,IF(h.Email = (TYPEOF(h.Email))'',0,100));
    maxlength_Email := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Email)));
    avelength_Email := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Email)),h.Email<>(typeof(h.Email))'');
    populated_Phone_pcnt := AVE(GROUP,IF(h.Phone = (TYPEOF(h.Phone))'',0,100));
    maxlength_Phone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Phone)));
    avelength_Phone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Phone)),h.Phone<>(typeof(h.Phone))'');
    populated_Method_of_Housing_pcnt := AVE(GROUP,IF(h.Method_of_Housing = (TYPEOF(h.Method_of_Housing))'',0,100));
    maxlength_Method_of_Housing := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Method_of_Housing)));
    avelength_Method_of_Housing := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Method_of_Housing)),h.Method_of_Housing<>(typeof(h.Method_of_Housing))'');
    populated_Hotel_pcnt := AVE(GROUP,IF(h.Hotel = (TYPEOF(h.Hotel))'',0,100));
    maxlength_Hotel := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Hotel)));
    avelength_Hotel := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Hotel)),h.Hotel<>(typeof(h.Hotel))'');
    populated_Arrive_pcnt := AVE(GROUP,IF(h.Arrive = (TYPEOF(h.Arrive))'',0,100));
    maxlength_Arrive := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Arrive)));
    avelength_Arrive := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Arrive)),h.Arrive<>(typeof(h.Arrive))'');
    populated_Depart_pcnt := AVE(GROUP,IF(h.Depart = (TYPEOF(h.Depart))'',0,100));
    maxlength_Depart := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Depart)));
    avelength_Depart := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Depart)),h.Depart<>(typeof(h.Depart))'');
    populated_Hotel_Confirmation_pcnt := AVE(GROUP,IF(h.Hotel_Confirmation = (TYPEOF(h.Hotel_Confirmation))'',0,100));
    maxlength_Hotel_Confirmation := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Hotel_Confirmation)));
    avelength_Hotel_Confirmation := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Hotel_Confirmation)),h.Hotel_Confirmation<>(typeof(h.Hotel_Confirmation))'');
    populated_Payment_type_pcnt := AVE(GROUP,IF(h.Payment_type = (TYPEOF(h.Payment_type))'',0,100));
    maxlength_Payment_type := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Payment_type)));
    avelength_Payment_type := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Payment_type)),h.Payment_type<>(typeof(h.Payment_type))'');
    populated_Room_type_pcnt := AVE(GROUP,IF(h.Room_type = (TYPEOF(h.Room_type))'',0,100));
    maxlength_Room_type := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Room_type)));
    avelength_Room_type := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Room_type)),h.Room_type<>(typeof(h.Room_type))'');
    populated_Cost_pcnt := AVE(GROUP,IF(h.Cost = (TYPEOF(h.Cost))'',0,100));
    maxlength_Cost := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Cost)));
    avelength_Cost := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Cost)),h.Cost<>(typeof(h.Cost))'');
    populated_Comments_pcnt := AVE(GROUP,IF(h.Comments = (TYPEOF(h.Comments))'',0,100));
    maxlength_Comments := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Comments)));
    avelength_Comments := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Comments)),h.Comments<>(typeof(h.Comments))'');
    populated_Special_requests_pcnt := AVE(GROUP,IF(h.Special_requests = (TYPEOF(h.Special_requests))'',0,100));
    maxlength_Special_requests := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Special_requests)));
    avelength_Special_requests := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Special_requests)),h.Special_requests<>(typeof(h.Special_requests))'');
    populated_Share_With_pcnt := AVE(GROUP,IF(h.Share_With = (TYPEOF(h.Share_With))'',0,100));
    maxlength_Share_With := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Share_With)));
    avelength_Share_With := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Share_With)),h.Share_With<>(typeof(h.Share_With))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Show),TRIM((SALT28.StrType)le.Year),TRIM((SALT28.StrType)le.Category),TRIM((SALT28.StrType)le.Attendance_Id),TRIM((SALT28.StrType)le.Group_Id),TRIM((SALT28.StrType)le.Last_name),TRIM((SALT28.StrType)le.First_name),TRIM((SALT28.StrType)le.Company),TRIM((SALT28.StrType)le.Address1),TRIM((SALT28.StrType)le.Address2),TRIM((SALT28.StrType)le.City),TRIM((SALT28.StrType)le.State),TRIM((SALT28.StrType)le.Postal_Code),TRIM((SALT28.StrType)le.Country),TRIM((SALT28.StrType)le.Email),TRIM((SALT28.StrType)le.Phone),TRIM((SALT28.StrType)le.Method_of_Housing),TRIM((SALT28.StrType)le.Hotel),TRIM((SALT28.StrType)le.Arrive),TRIM((SALT28.StrType)le.Depart),TRIM((SALT28.StrType)le.Hotel_Confirmation),TRIM((SALT28.StrType)le.Payment_type),TRIM((SALT28.StrType)le.Room_type),TRIM((SALT28.StrType)le.Cost),TRIM((SALT28.StrType)le.Comments),TRIM((SALT28.StrType)le.Special_requests),TRIM((SALT28.StrType)le.Share_With)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,27,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Show'}
      ,{2,'Year'}
      ,{3,'Category'}
      ,{4,'Attendance_Id'}
      ,{5,'Group_Id'}
      ,{6,'Last_name'}
      ,{7,'First_name'}
      ,{8,'Company'}
      ,{9,'Address1'}
      ,{10,'Address2'}
      ,{11,'City'}
      ,{12,'State'}
      ,{13,'Postal_Code'}
      ,{14,'Country'}
      ,{15,'Email'}
      ,{16,'Phone'}
      ,{17,'Method_of_Housing'}
      ,{18,'Hotel'}
      ,{19,'Arrive'}
      ,{20,'Depart'}
      ,{21,'Hotel_Confirmation'}
      ,{22,'Payment_type'}
      ,{23,'Room_type'}
      ,{24,'Cost'}
      ,{25,'Comments'}
      ,{26,'Special_requests'}
      ,{27,'Share_With'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_Show((SALT28.StrType)le.Show),
    Fields.InValid_Year((SALT28.StrType)le.Year),
    Fields.InValid_Category((SALT28.StrType)le.Category),
    Fields.InValid_Attendance_Id((SALT28.StrType)le.Attendance_Id),
    Fields.InValid_Group_Id((SALT28.StrType)le.Group_Id),
    Fields.InValid_Last_name((SALT28.StrType)le.Last_name),
    Fields.InValid_First_name((SALT28.StrType)le.First_name),
    Fields.InValid_Company((SALT28.StrType)le.Company),
    Fields.InValid_Address1((SALT28.StrType)le.Address1),
    Fields.InValid_Address2((SALT28.StrType)le.Address2),
    Fields.InValid_City((SALT28.StrType)le.City),
    Fields.InValid_State((SALT28.StrType)le.State),
    Fields.InValid_Postal_Code((SALT28.StrType)le.Postal_Code),
    Fields.InValid_Country((SALT28.StrType)le.Country),
    Fields.InValid_Email((SALT28.StrType)le.Email),
    Fields.InValid_Phone((SALT28.StrType)le.Phone),
    Fields.InValid_Method_of_Housing((SALT28.StrType)le.Method_of_Housing),
    Fields.InValid_Hotel((SALT28.StrType)le.Hotel),
    Fields.InValid_Arrive((SALT28.StrType)le.Arrive),
    Fields.InValid_Depart((SALT28.StrType)le.Depart),
    Fields.InValid_Hotel_Confirmation((SALT28.StrType)le.Hotel_Confirmation),
    Fields.InValid_Payment_type((SALT28.StrType)le.Payment_type),
    Fields.InValid_Room_type((SALT28.StrType)le.Room_type),
    Fields.InValid_Cost((SALT28.StrType)le.Cost),
    Fields.InValid_Comments((SALT28.StrType)le.Comments),
    Fields.InValid_Special_requests((SALT28.StrType)le.Special_requests),
    Fields.InValid_Share_With((SALT28.StrType)le.Share_With),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,27,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Show(TotalErrors.ErrorNum),Fields.InValidMessage_Year(TotalErrors.ErrorNum),Fields.InValidMessage_Category(TotalErrors.ErrorNum),Fields.InValidMessage_Attendance_Id(TotalErrors.ErrorNum),Fields.InValidMessage_Group_Id(TotalErrors.ErrorNum),Fields.InValidMessage_Last_name(TotalErrors.ErrorNum),Fields.InValidMessage_First_name(TotalErrors.ErrorNum),Fields.InValidMessage_Company(TotalErrors.ErrorNum),Fields.InValidMessage_Address1(TotalErrors.ErrorNum),Fields.InValidMessage_Address2(TotalErrors.ErrorNum),Fields.InValidMessage_City(TotalErrors.ErrorNum),Fields.InValidMessage_State(TotalErrors.ErrorNum),Fields.InValidMessage_Postal_Code(TotalErrors.ErrorNum),Fields.InValidMessage_Country(TotalErrors.ErrorNum),Fields.InValidMessage_Email(TotalErrors.ErrorNum),Fields.InValidMessage_Phone(TotalErrors.ErrorNum),Fields.InValidMessage_Method_of_Housing(TotalErrors.ErrorNum),Fields.InValidMessage_Hotel(TotalErrors.ErrorNum),Fields.InValidMessage_Arrive(TotalErrors.ErrorNum),Fields.InValidMessage_Depart(TotalErrors.ErrorNum),Fields.InValidMessage_Hotel_Confirmation(TotalErrors.ErrorNum),Fields.InValidMessage_Payment_type(TotalErrors.ErrorNum),Fields.InValidMessage_Room_type(TotalErrors.ErrorNum),Fields.InValidMessage_Cost(TotalErrors.ErrorNum),Fields.InValidMessage_Comments(TotalErrors.ErrorNum),Fields.InValidMessage_Special_requests(TotalErrors.ErrorNum),Fields.InValidMessage_Share_With(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
