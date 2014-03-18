import ut,SALT28;
export hygiene(dataset(layout_ShowExtractContacts) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_IndividualID_pcnt := AVE(GROUP,IF(h.IndividualID = (TYPEOF(h.IndividualID))'',0,100));
    maxlength_IndividualID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.IndividualID)));
    avelength_IndividualID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.IndividualID)),h.IndividualID<>(typeof(h.IndividualID))'');
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_Prefix_pcnt := AVE(GROUP,IF(h.Prefix = (TYPEOF(h.Prefix))'',0,100));
    maxlength_Prefix := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Prefix)));
    avelength_Prefix := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Prefix)),h.Prefix<>(typeof(h.Prefix))'');
    populated_FirstName_pcnt := AVE(GROUP,IF(h.FirstName = (TYPEOF(h.FirstName))'',0,100));
    maxlength_FirstName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FirstName)));
    avelength_FirstName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FirstName)),h.FirstName<>(typeof(h.FirstName))'');
    populated_MiddleInitial_pcnt := AVE(GROUP,IF(h.MiddleInitial = (TYPEOF(h.MiddleInitial))'',0,100));
    maxlength_MiddleInitial := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MiddleInitial)));
    avelength_MiddleInitial := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MiddleInitial)),h.MiddleInitial<>(typeof(h.MiddleInitial))'');
    populated_LastName_pcnt := AVE(GROUP,IF(h.LastName = (TYPEOF(h.LastName))'',0,100));
    maxlength_LastName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LastName)));
    avelength_LastName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LastName)),h.LastName<>(typeof(h.LastName))'');
    populated_Suffix_pcnt := AVE(GROUP,IF(h.Suffix = (TYPEOF(h.Suffix))'',0,100));
    maxlength_Suffix := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Suffix)));
    avelength_Suffix := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Suffix)),h.Suffix<>(typeof(h.Suffix))'');
    populated_Title_pcnt := AVE(GROUP,IF(h.Title = (TYPEOF(h.Title))'',0,100));
    maxlength_Title := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Title)));
    avelength_Title := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Title)),h.Title<>(typeof(h.Title))'');
    populated_CompanyName_pcnt := AVE(GROUP,IF(h.CompanyName = (TYPEOF(h.CompanyName))'',0,100));
    maxlength_CompanyName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)));
    avelength_CompanyName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyName)),h.CompanyName<>(typeof(h.CompanyName))'');
    populated_Department_pcnt := AVE(GROUP,IF(h.Department = (TYPEOF(h.Department))'',0,100));
    maxlength_Department := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Department)));
    avelength_Department := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Department)),h.Department<>(typeof(h.Department))'');
    populated_Addr1_pcnt := AVE(GROUP,IF(h.Addr1 = (TYPEOF(h.Addr1))'',0,100));
    maxlength_Addr1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr1)));
    avelength_Addr1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr1)),h.Addr1<>(typeof(h.Addr1))'');
    populated_Addr2_pcnt := AVE(GROUP,IF(h.Addr2 = (TYPEOF(h.Addr2))'',0,100));
    maxlength_Addr2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr2)));
    avelength_Addr2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr2)),h.Addr2<>(typeof(h.Addr2))'');
    populated_Addr3_pcnt := AVE(GROUP,IF(h.Addr3 = (TYPEOF(h.Addr3))'',0,100));
    maxlength_Addr3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr3)));
    avelength_Addr3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Addr3)),h.Addr3<>(typeof(h.Addr3))'');
    populated_City_pcnt := AVE(GROUP,IF(h.City = (TYPEOF(h.City))'',0,100));
    maxlength_City := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)));
    avelength_City := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)),h.City<>(typeof(h.City))'');
    populated_State_pcnt := AVE(GROUP,IF(h.State = (TYPEOF(h.State))'',0,100));
    maxlength_State := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)));
    avelength_State := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.State)),h.State<>(typeof(h.State))'');
    populated_StateDesc_pcnt := AVE(GROUP,IF(h.StateDesc = (TYPEOF(h.StateDesc))'',0,100));
    maxlength_StateDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.StateDesc)));
    avelength_StateDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.StateDesc)),h.StateDesc<>(typeof(h.StateDesc))'');
    populated_CountryCode_pcnt := AVE(GROUP,IF(h.CountryCode = (TYPEOF(h.CountryCode))'',0,100));
    maxlength_CountryCode := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CountryCode)));
    avelength_CountryCode := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CountryCode)),h.CountryCode<>(typeof(h.CountryCode))'');
    populated_CountryDesc_pcnt := AVE(GROUP,IF(h.CountryDesc = (TYPEOF(h.CountryDesc))'',0,100));
    maxlength_CountryDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CountryDesc)));
    avelength_CountryDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CountryDesc)),h.CountryDesc<>(typeof(h.CountryDesc))'');
    populated_PostalCode_pcnt := AVE(GROUP,IF(h.PostalCode = (TYPEOF(h.PostalCode))'',0,100));
    maxlength_PostalCode := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PostalCode)));
    avelength_PostalCode := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PostalCode)),h.PostalCode<>(typeof(h.PostalCode))'');
    populated_PhoneMain_pcnt := AVE(GROUP,IF(h.PhoneMain = (TYPEOF(h.PhoneMain))'',0,100));
    maxlength_PhoneMain := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PhoneMain)));
    avelength_PhoneMain := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PhoneMain)),h.PhoneMain<>(typeof(h.PhoneMain))'');
    populated_FaxMain_pcnt := AVE(GROUP,IF(h.FaxMain = (TYPEOF(h.FaxMain))'',0,100));
    maxlength_FaxMain := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FaxMain)));
    avelength_FaxMain := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FaxMain)),h.FaxMain<>(typeof(h.FaxMain))'');
    populated_PhoneTollFree_pcnt := AVE(GROUP,IF(h.PhoneTollFree = (TYPEOF(h.PhoneTollFree))'',0,100));
    maxlength_PhoneTollFree := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PhoneTollFree)));
    avelength_PhoneTollFree := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PhoneTollFree)),h.PhoneTollFree<>(typeof(h.PhoneTollFree))'');
    populated_EmailCompany_pcnt := AVE(GROUP,IF(h.EmailCompany = (TYPEOF(h.EmailCompany))'',0,100));
    maxlength_EmailCompany := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EmailCompany)));
    avelength_EmailCompany := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EmailCompany)),h.EmailCompany<>(typeof(h.EmailCompany))'');
    populated_WebAddressCompany_pcnt := AVE(GROUP,IF(h.WebAddressCompany = (TYPEOF(h.WebAddressCompany))'',0,100));
    maxlength_WebAddressCompany := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.WebAddressCompany)));
    avelength_WebAddressCompany := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.WebAddressCompany)),h.WebAddressCompany<>(typeof(h.WebAddressCompany))'');
    populated_ValidAddrFlag_pcnt := AVE(GROUP,IF(h.ValidAddrFlag = (TYPEOF(h.ValidAddrFlag))'',0,100));
    maxlength_ValidAddrFlag := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ValidAddrFlag)));
    avelength_ValidAddrFlag := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ValidAddrFlag)),h.ValidAddrFlag<>(typeof(h.ValidAddrFlag))'');
    populated_PrivacyFlag_pcnt := AVE(GROUP,IF(h.PrivacyFlag = (TYPEOF(h.PrivacyFlag))'',0,100));
    maxlength_PrivacyFlag := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyFlag)));
    avelength_PrivacyFlag := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PrivacyFlag)),h.PrivacyFlag<>(typeof(h.PrivacyFlag))'');
    populated_CreateDate_pcnt := AVE(GROUP,IF(h.CreateDate = (TYPEOF(h.CreateDate))'',0,100));
    maxlength_CreateDate := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CreateDate)));
    avelength_CreateDate := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CreateDate)),h.CreateDate<>(typeof(h.CreateDate))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.IndividualID),TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.Prefix),TRIM((SALT28.StrType)le.FirstName),TRIM((SALT28.StrType)le.MiddleInitial),TRIM((SALT28.StrType)le.LastName),TRIM((SALT28.StrType)le.Suffix),TRIM((SALT28.StrType)le.Title),TRIM((SALT28.StrType)le.CompanyName),TRIM((SALT28.StrType)le.Department),TRIM((SALT28.StrType)le.Addr1),TRIM((SALT28.StrType)le.Addr2),TRIM((SALT28.StrType)le.Addr3),TRIM((SALT28.StrType)le.City),TRIM((SALT28.StrType)le.State),TRIM((SALT28.StrType)le.StateDesc),TRIM((SALT28.StrType)le.CountryCode),TRIM((SALT28.StrType)le.CountryDesc),TRIM((SALT28.StrType)le.PostalCode),TRIM((SALT28.StrType)le.PhoneMain),TRIM((SALT28.StrType)le.FaxMain),TRIM((SALT28.StrType)le.PhoneTollFree),TRIM((SALT28.StrType)le.EmailCompany),TRIM((SALT28.StrType)le.WebAddressCompany),TRIM((SALT28.StrType)le.ValidAddrFlag),TRIM((SALT28.StrType)le.PrivacyFlag),TRIM((SALT28.StrType)le.CreateDate)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,27,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'IndividualID'}
      ,{2,'CustomerID'}
      ,{3,'Prefix'}
      ,{4,'FirstName'}
      ,{5,'MiddleInitial'}
      ,{6,'LastName'}
      ,{7,'Suffix'}
      ,{8,'Title'}
      ,{9,'CompanyName'}
      ,{10,'Department'}
      ,{11,'Addr1'}
      ,{12,'Addr2'}
      ,{13,'Addr3'}
      ,{14,'City'}
      ,{15,'State'}
      ,{16,'StateDesc'}
      ,{17,'CountryCode'}
      ,{18,'CountryDesc'}
      ,{19,'PostalCode'}
      ,{20,'PhoneMain'}
      ,{21,'FaxMain'}
      ,{22,'PhoneTollFree'}
      ,{23,'EmailCompany'}
      ,{24,'WebAddressCompany'}
      ,{25,'ValidAddrFlag'}
      ,{26,'PrivacyFlag'}
      ,{27,'CreateDate'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_IndividualID((SALT28.StrType)le.IndividualID),
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_Prefix((SALT28.StrType)le.Prefix),
    Fields.InValid_FirstName((SALT28.StrType)le.FirstName),
    Fields.InValid_MiddleInitial((SALT28.StrType)le.MiddleInitial),
    Fields.InValid_LastName((SALT28.StrType)le.LastName),
    Fields.InValid_Suffix((SALT28.StrType)le.Suffix),
    Fields.InValid_Title((SALT28.StrType)le.Title),
    Fields.InValid_CompanyName((SALT28.StrType)le.CompanyName),
    Fields.InValid_Department((SALT28.StrType)le.Department),
    Fields.InValid_Addr1((SALT28.StrType)le.Addr1),
    Fields.InValid_Addr2((SALT28.StrType)le.Addr2),
    Fields.InValid_Addr3((SALT28.StrType)le.Addr3),
    Fields.InValid_City((SALT28.StrType)le.City),
    Fields.InValid_State((SALT28.StrType)le.State),
    Fields.InValid_StateDesc((SALT28.StrType)le.StateDesc),
    Fields.InValid_CountryCode((SALT28.StrType)le.CountryCode),
    Fields.InValid_CountryDesc((SALT28.StrType)le.CountryDesc),
    Fields.InValid_PostalCode((SALT28.StrType)le.PostalCode),
    Fields.InValid_PhoneMain((SALT28.StrType)le.PhoneMain),
    Fields.InValid_FaxMain((SALT28.StrType)le.FaxMain),
    Fields.InValid_PhoneTollFree((SALT28.StrType)le.PhoneTollFree),
    Fields.InValid_EmailCompany((SALT28.StrType)le.EmailCompany),
    Fields.InValid_WebAddressCompany((SALT28.StrType)le.WebAddressCompany),
    Fields.InValid_ValidAddrFlag((SALT28.StrType)le.ValidAddrFlag),
    Fields.InValid_PrivacyFlag((SALT28.StrType)le.PrivacyFlag),
    Fields.InValid_CreateDate((SALT28.StrType)le.CreateDate),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_IndividualID(TotalErrors.ErrorNum),Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_Prefix(TotalErrors.ErrorNum),Fields.InValidMessage_FirstName(TotalErrors.ErrorNum),Fields.InValidMessage_MiddleInitial(TotalErrors.ErrorNum),Fields.InValidMessage_LastName(TotalErrors.ErrorNum),Fields.InValidMessage_Suffix(TotalErrors.ErrorNum),Fields.InValidMessage_Title(TotalErrors.ErrorNum),Fields.InValidMessage_CompanyName(TotalErrors.ErrorNum),Fields.InValidMessage_Department(TotalErrors.ErrorNum),Fields.InValidMessage_Addr1(TotalErrors.ErrorNum),Fields.InValidMessage_Addr2(TotalErrors.ErrorNum),Fields.InValidMessage_Addr3(TotalErrors.ErrorNum),Fields.InValidMessage_City(TotalErrors.ErrorNum),Fields.InValidMessage_State(TotalErrors.ErrorNum),Fields.InValidMessage_StateDesc(TotalErrors.ErrorNum),Fields.InValidMessage_CountryCode(TotalErrors.ErrorNum),Fields.InValidMessage_CountryDesc(TotalErrors.ErrorNum),Fields.InValidMessage_PostalCode(TotalErrors.ErrorNum),Fields.InValidMessage_PhoneMain(TotalErrors.ErrorNum),Fields.InValidMessage_FaxMain(TotalErrors.ErrorNum),Fields.InValidMessage_PhoneTollFree(TotalErrors.ErrorNum),Fields.InValidMessage_EmailCompany(TotalErrors.ErrorNum),Fields.InValidMessage_WebAddressCompany(TotalErrors.ErrorNum),Fields.InValidMessage_ValidAddrFlag(TotalErrors.ErrorNum),Fields.InValidMessage_PrivacyFlag(TotalErrors.ErrorNum),Fields.InValidMessage_CreateDate(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
