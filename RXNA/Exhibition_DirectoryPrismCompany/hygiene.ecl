import ut,SALT28;
export hygiene(dataset(layout_DirectoryPrismCompany) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_CompanyID_pcnt := AVE(GROUP,IF(h.CompanyID = (TYPEOF(h.CompanyID))'',0,100));
    maxlength_CompanyID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyID)));
    avelength_CompanyID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CompanyID)),h.CompanyID<>(typeof(h.CompanyID))'');
    populated_vchCompanyName_pcnt := AVE(GROUP,IF(h.vchCompanyName = (TYPEOF(h.vchCompanyName))'',0,100));
    maxlength_vchCompanyName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCompanyName)));
    avelength_vchCompanyName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCompanyName)),h.vchCompanyName<>(typeof(h.vchCompanyName))'');
    populated_vchAddress1_pcnt := AVE(GROUP,IF(h.vchAddress1 = (TYPEOF(h.vchAddress1))'',0,100));
    maxlength_vchAddress1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress1)));
    avelength_vchAddress1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress1)),h.vchAddress1<>(typeof(h.vchAddress1))'');
    populated_vchAddress2_pcnt := AVE(GROUP,IF(h.vchAddress2 = (TYPEOF(h.vchAddress2))'',0,100));
    maxlength_vchAddress2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress2)));
    avelength_vchAddress2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress2)),h.vchAddress2<>(typeof(h.vchAddress2))'');
    populated_vchAddress3_pcnt := AVE(GROUP,IF(h.vchAddress3 = (TYPEOF(h.vchAddress3))'',0,100));
    maxlength_vchAddress3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress3)));
    avelength_vchAddress3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchAddress3)),h.vchAddress3<>(typeof(h.vchAddress3))'');
    populated_vchCity_pcnt := AVE(GROUP,IF(h.vchCity = (TYPEOF(h.vchCity))'',0,100));
    maxlength_vchCity := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCity)));
    avelength_vchCity := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCity)),h.vchCity<>(typeof(h.vchCity))'');
    populated_vchRegionName_pcnt := AVE(GROUP,IF(h.vchRegionName = (TYPEOF(h.vchRegionName))'',0,100));
    maxlength_vchRegionName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchRegionName)));
    avelength_vchRegionName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchRegionName)),h.vchRegionName<>(typeof(h.vchRegionName))'');
    populated_vchCountry_pcnt := AVE(GROUP,IF(h.vchCountry = (TYPEOF(h.vchCountry))'',0,100));
    maxlength_vchCountry := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCountry)));
    avelength_vchCountry := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCountry)),h.vchCountry<>(typeof(h.vchCountry))'');
    populated_vchPostCode_pcnt := AVE(GROUP,IF(h.vchPostCode = (TYPEOF(h.vchPostCode))'',0,100));
    maxlength_vchPostCode := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPostCode)));
    avelength_vchPostCode := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPostCode)),h.vchPostCode<>(typeof(h.vchPostCode))'');
    populated_vchPhone_pcnt := AVE(GROUP,IF(h.vchPhone = (TYPEOF(h.vchPhone))'',0,100));
    maxlength_vchPhone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPhone)));
    avelength_vchPhone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPhone)),h.vchPhone<>(typeof(h.vchPhone))'');
    populated_vchFax_pcnt := AVE(GROUP,IF(h.vchFax = (TYPEOF(h.vchFax))'',0,100));
    maxlength_vchFax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchFax)));
    avelength_vchFax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchFax)),h.vchFax<>(typeof(h.vchFax))'');
    populated_vchEmailAddress_pcnt := AVE(GROUP,IF(h.vchEmailAddress = (TYPEOF(h.vchEmailAddress))'',0,100));
    maxlength_vchEmailAddress := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchEmailAddress)));
    avelength_vchEmailAddress := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchEmailAddress)),h.vchEmailAddress<>(typeof(h.vchEmailAddress))'');
    populated_vchContactFirstName_pcnt := AVE(GROUP,IF(h.vchContactFirstName = (TYPEOF(h.vchContactFirstName))'',0,100));
    maxlength_vchContactFirstName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchContactFirstName)));
    avelength_vchContactFirstName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchContactFirstName)),h.vchContactFirstName<>(typeof(h.vchContactFirstName))'');
    populated_vchContactLastName_pcnt := AVE(GROUP,IF(h.vchContactLastName = (TYPEOF(h.vchContactLastName))'',0,100));
    maxlength_vchContactLastName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchContactLastName)));
    avelength_vchContactLastName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchContactLastName)),h.vchContactLastName<>(typeof(h.vchContactLastName))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.CompanyID),TRIM((SALT28.StrType)le.vchCompanyName),TRIM((SALT28.StrType)le.vchAddress1),TRIM((SALT28.StrType)le.vchAddress2),TRIM((SALT28.StrType)le.vchAddress3),TRIM((SALT28.StrType)le.vchCity),TRIM((SALT28.StrType)le.vchRegionName),TRIM((SALT28.StrType)le.vchCountry),TRIM((SALT28.StrType)le.vchPostCode),TRIM((SALT28.StrType)le.vchPhone),TRIM((SALT28.StrType)le.vchFax),TRIM((SALT28.StrType)le.vchEmailAddress),TRIM((SALT28.StrType)le.vchContactFirstName),TRIM((SALT28.StrType)le.vchContactLastName)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,14,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'CompanyID'}
      ,{2,'vchCompanyName'}
      ,{3,'vchAddress1'}
      ,{4,'vchAddress2'}
      ,{5,'vchAddress3'}
      ,{6,'vchCity'}
      ,{7,'vchRegionName'}
      ,{8,'vchCountry'}
      ,{9,'vchPostCode'}
      ,{10,'vchPhone'}
      ,{11,'vchFax'}
      ,{12,'vchEmailAddress'}
      ,{13,'vchContactFirstName'}
      ,{14,'vchContactLastName'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_CompanyID((SALT28.StrType)le.CompanyID),
    Fields.InValid_vchCompanyName((SALT28.StrType)le.vchCompanyName),
    Fields.InValid_vchAddress1((SALT28.StrType)le.vchAddress1),
    Fields.InValid_vchAddress2((SALT28.StrType)le.vchAddress2),
    Fields.InValid_vchAddress3((SALT28.StrType)le.vchAddress3),
    Fields.InValid_vchCity((SALT28.StrType)le.vchCity),
    Fields.InValid_vchRegionName((SALT28.StrType)le.vchRegionName),
    Fields.InValid_vchCountry((SALT28.StrType)le.vchCountry),
    Fields.InValid_vchPostCode((SALT28.StrType)le.vchPostCode),
    Fields.InValid_vchPhone((SALT28.StrType)le.vchPhone),
    Fields.InValid_vchFax((SALT28.StrType)le.vchFax),
    Fields.InValid_vchEmailAddress((SALT28.StrType)le.vchEmailAddress),
    Fields.InValid_vchContactFirstName((SALT28.StrType)le.vchContactFirstName),
    Fields.InValid_vchContactLastName((SALT28.StrType)le.vchContactLastName),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,14,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_CompanyID(TotalErrors.ErrorNum),Fields.InValidMessage_vchCompanyName(TotalErrors.ErrorNum),Fields.InValidMessage_vchAddress1(TotalErrors.ErrorNum),Fields.InValidMessage_vchAddress2(TotalErrors.ErrorNum),Fields.InValidMessage_vchAddress3(TotalErrors.ErrorNum),Fields.InValidMessage_vchCity(TotalErrors.ErrorNum),Fields.InValidMessage_vchRegionName(TotalErrors.ErrorNum),Fields.InValidMessage_vchCountry(TotalErrors.ErrorNum),Fields.InValidMessage_vchPostCode(TotalErrors.ErrorNum),Fields.InValidMessage_vchPhone(TotalErrors.ErrorNum),Fields.InValidMessage_vchFax(TotalErrors.ErrorNum),Fields.InValidMessage_vchEmailAddress(TotalErrors.ErrorNum),Fields.InValidMessage_vchContactFirstName(TotalErrors.ErrorNum),Fields.InValidMessage_vchContactLastName(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
