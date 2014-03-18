import ut,SALT28;
export hygiene(dataset(layout_DirectoryExhibitorData) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_iExhibitorId_pcnt := AVE(GROUP,IF(h.iExhibitorId = (TYPEOF(h.iExhibitorId))'',0,100));
    maxlength_iExhibitorId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iExhibitorId)));
    avelength_iExhibitorId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iExhibitorId)),h.iExhibitorId<>(typeof(h.iExhibitorId))'');
    populated_iPrismCompanyId_pcnt := AVE(GROUP,IF(h.iPrismCompanyId = (TYPEOF(h.iPrismCompanyId))'',0,100));
    maxlength_iPrismCompanyId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iPrismCompanyId)));
    avelength_iPrismCompanyId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iPrismCompanyId)),h.iPrismCompanyId<>(typeof(h.iPrismCompanyId))'');
    populated_chShowCd_pcnt := AVE(GROUP,IF(h.chShowCd = (TYPEOF(h.chShowCd))'',0,100));
    maxlength_chShowCd := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.chShowCd)));
    avelength_chShowCd := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.chShowCd)),h.chShowCd<>(typeof(h.chShowCd))'');
    populated_iShowYear_pcnt := AVE(GROUP,IF(h.iShowYear = (TYPEOF(h.iShowYear))'',0,100));
    maxlength_iShowYear := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iShowYear)));
    avelength_iShowYear := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iShowYear)),h.iShowYear<>(typeof(h.iShowYear))'');
    populated_vchBooth_pcnt := AVE(GROUP,IF(h.vchBooth = (TYPEOF(h.vchBooth))'',0,100));
    maxlength_vchBooth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchBooth)));
    avelength_vchBooth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchBooth)),h.vchBooth<>(typeof(h.vchBooth))'');
    populated_chAssocMemberFlag_pcnt := AVE(GROUP,IF(h.chAssocMemberFlag = (TYPEOF(h.chAssocMemberFlag))'',0,100));
    maxlength_chAssocMemberFlag := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.chAssocMemberFlag)));
    avelength_chAssocMemberFlag := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.chAssocMemberFlag)),h.chAssocMemberFlag<>(typeof(h.chAssocMemberFlag))'');
    populated_vchExhibitorName1_pcnt := AVE(GROUP,IF(h.vchExhibitorName1 = (TYPEOF(h.vchExhibitorName1))'',0,100));
    maxlength_vchExhibitorName1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName1)));
    avelength_vchExhibitorName1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName1)),h.vchExhibitorName1<>(typeof(h.vchExhibitorName1))'');
    populated_vchExhibitorName2_pcnt := AVE(GROUP,IF(h.vchExhibitorName2 = (TYPEOF(h.vchExhibitorName2))'',0,100));
    maxlength_vchExhibitorName2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName2)));
    avelength_vchExhibitorName2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName2)),h.vchExhibitorName2<>(typeof(h.vchExhibitorName2))'');
    populated_vchExhibitorName3_pcnt := AVE(GROUP,IF(h.vchExhibitorName3 = (TYPEOF(h.vchExhibitorName3))'',0,100));
    maxlength_vchExhibitorName3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName3)));
    avelength_vchExhibitorName3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExhibitorName3)),h.vchExhibitorName3<>(typeof(h.vchExhibitorName3))'');
    populated_Address1_pcnt := AVE(GROUP,IF(h.Address1 = (TYPEOF(h.Address1))'',0,100));
    maxlength_Address1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address1)));
    avelength_Address1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address1)),h.Address1<>(typeof(h.Address1))'');
    populated_Address2_pcnt := AVE(GROUP,IF(h.Address2 = (TYPEOF(h.Address2))'',0,100));
    maxlength_Address2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address2)));
    avelength_Address2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address2)),h.Address2<>(typeof(h.Address2))'');
    populated_Address3_pcnt := AVE(GROUP,IF(h.Address3 = (TYPEOF(h.Address3))'',0,100));
    maxlength_Address3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address3)));
    avelength_Address3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Address3)),h.Address3<>(typeof(h.Address3))'');
    populated_City_pcnt := AVE(GROUP,IF(h.City = (TYPEOF(h.City))'',0,100));
    maxlength_City := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)));
    avelength_City := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.City)),h.City<>(typeof(h.City))'');
    populated_RegionName_pcnt := AVE(GROUP,IF(h.RegionName = (TYPEOF(h.RegionName))'',0,100));
    maxlength_RegionName := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RegionName)));
    avelength_RegionName := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RegionName)),h.RegionName<>(typeof(h.RegionName))'');
    populated_Country_pcnt := AVE(GROUP,IF(h.Country = (TYPEOF(h.Country))'',0,100));
    maxlength_Country := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Country)));
    avelength_Country := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Country)),h.Country<>(typeof(h.Country))'');
    populated_PostalCode_pcnt := AVE(GROUP,IF(h.PostalCode = (TYPEOF(h.PostalCode))'',0,100));
    maxlength_PostalCode := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PostalCode)));
    avelength_PostalCode := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PostalCode)),h.PostalCode<>(typeof(h.PostalCode))'');
    populated_MainPhone_pcnt := AVE(GROUP,IF(h.MainPhone = (TYPEOF(h.MainPhone))'',0,100));
    maxlength_MainPhone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MainPhone)));
    avelength_MainPhone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MainPhone)),h.MainPhone<>(typeof(h.MainPhone))'');
    populated_TollFreePhone_pcnt := AVE(GROUP,IF(h.TollFreePhone = (TYPEOF(h.TollFreePhone))'',0,100));
    maxlength_TollFreePhone := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TollFreePhone)));
    avelength_TollFreePhone := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TollFreePhone)),h.TollFreePhone<>(typeof(h.TollFreePhone))'');
    populated_Fax_pcnt := AVE(GROUP,IF(h.Fax = (TYPEOF(h.Fax))'',0,100));
    maxlength_Fax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax)));
    avelength_Fax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Fax)),h.Fax<>(typeof(h.Fax))'');
    populated_vchTollFreeFax_pcnt := AVE(GROUP,IF(h.vchTollFreeFax = (TYPEOF(h.vchTollFreeFax))'',0,100));
    maxlength_vchTollFreeFax := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchTollFreeFax)));
    avelength_vchTollFreeFax := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchTollFreeFax)),h.vchTollFreeFax<>(typeof(h.vchTollFreeFax))'');
    populated_Email_pcnt := AVE(GROUP,IF(h.Email = (TYPEOF(h.Email))'',0,100));
    maxlength_Email := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Email)));
    avelength_Email := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Email)),h.Email<>(typeof(h.Email))'');
    populated_WebAddress_pcnt := AVE(GROUP,IF(h.WebAddress = (TYPEOF(h.WebAddress))'',0,100));
    maxlength_WebAddress := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.WebAddress)));
    avelength_WebAddress := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.WebAddress)),h.WebAddress<>(typeof(h.WebAddress))'');
    populated_txtProductDesc_pcnt := AVE(GROUP,IF(h.txtProductDesc = (TYPEOF(h.txtProductDesc))'',0,100));
    maxlength_txtProductDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtProductDesc)));
    avelength_txtProductDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtProductDesc)),h.txtProductDesc<>(typeof(h.txtProductDesc))'');
    populated_vchPavillion_pcnt := AVE(GROUP,IF(h.vchPavillion = (TYPEOF(h.vchPavillion))'',0,100));
    maxlength_vchPavillion := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPavillion)));
    avelength_vchPavillion := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPavillion)),h.vchPavillion<>(typeof(h.vchPavillion))'');
    populated_vchHall_pcnt := AVE(GROUP,IF(h.vchHall = (TYPEOF(h.vchHall))'',0,100));
    maxlength_vchHall := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchHall)));
    avelength_vchHall := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchHall)),h.vchHall<>(typeof(h.vchHall))'');
    populated_vchPage_pcnt := AVE(GROUP,IF(h.vchPage = (TYPEOF(h.vchPage))'',0,100));
    maxlength_vchPage := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPage)));
    avelength_vchPage := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchPage)),h.vchPage<>(typeof(h.vchPage))'');
    populated_txtSpecials_pcnt := AVE(GROUP,IF(h.txtSpecials = (TYPEOF(h.txtSpecials))'',0,100));
    maxlength_txtSpecials := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtSpecials)));
    avelength_txtSpecials := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtSpecials)),h.txtSpecials<>(typeof(h.txtSpecials))'');
    populated_txtRepresentatives_pcnt := AVE(GROUP,IF(h.txtRepresentatives = (TYPEOF(h.txtRepresentatives))'',0,100));
    maxlength_txtRepresentatives := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtRepresentatives)));
    avelength_txtRepresentatives := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtRepresentatives)),h.txtRepresentatives<>(typeof(h.txtRepresentatives))'');
    populated_txtNewProducts_pcnt := AVE(GROUP,IF(h.txtNewProducts = (TYPEOF(h.txtNewProducts))'',0,100));
    maxlength_txtNewProducts := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtNewProducts)));
    avelength_txtNewProducts := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.txtNewProducts)),h.txtNewProducts<>(typeof(h.txtNewProducts))'');
    populated_vchExporting_pcnt := AVE(GROUP,IF(h.vchExporting = (TYPEOF(h.vchExporting))'',0,100));
    maxlength_vchExporting := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExporting)));
    avelength_vchExporting := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchExporting)),h.vchExporting<>(typeof(h.vchExporting))'');
    populated_vchBusinessInterest_pcnt := AVE(GROUP,IF(h.vchBusinessInterest = (TYPEOF(h.vchBusinessInterest))'',0,100));
    maxlength_vchBusinessInterest := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchBusinessInterest)));
    avelength_vchBusinessInterest := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchBusinessInterest)),h.vchBusinessInterest<>(typeof(h.vchBusinessInterest))'');
    populated_vchCrossRef1_pcnt := AVE(GROUP,IF(h.vchCrossRef1 = (TYPEOF(h.vchCrossRef1))'',0,100));
    maxlength_vchCrossRef1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef1)));
    avelength_vchCrossRef1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef1)),h.vchCrossRef1<>(typeof(h.vchCrossRef1))'');
    populated_vchCrossRef2_pcnt := AVE(GROUP,IF(h.vchCrossRef2 = (TYPEOF(h.vchCrossRef2))'',0,100));
    maxlength_vchCrossRef2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef2)));
    avelength_vchCrossRef2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef2)),h.vchCrossRef2<>(typeof(h.vchCrossRef2))'');
    populated_vchCrossRef3_pcnt := AVE(GROUP,IF(h.vchCrossRef3 = (TYPEOF(h.vchCrossRef3))'',0,100));
    maxlength_vchCrossRef3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef3)));
    avelength_vchCrossRef3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef3)),h.vchCrossRef3<>(typeof(h.vchCrossRef3))'');
    populated_vchCrossRef4_pcnt := AVE(GROUP,IF(h.vchCrossRef4 = (TYPEOF(h.vchCrossRef4))'',0,100));
    maxlength_vchCrossRef4 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef4)));
    avelength_vchCrossRef4 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchCrossRef4)),h.vchCrossRef4<>(typeof(h.vchCrossRef4))'');
    populated_iParentCompanyId_pcnt := AVE(GROUP,IF(h.iParentCompanyId = (TYPEOF(h.iParentCompanyId))'',0,100));
    maxlength_iParentCompanyId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iParentCompanyId)));
    avelength_iParentCompanyId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iParentCompanyId)),h.iParentCompanyId<>(typeof(h.iParentCompanyId))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.iExhibitorId),TRIM((SALT28.StrType)le.iPrismCompanyId),TRIM((SALT28.StrType)le.chShowCd),TRIM((SALT28.StrType)le.iShowYear),TRIM((SALT28.StrType)le.vchBooth),TRIM((SALT28.StrType)le.chAssocMemberFlag),TRIM((SALT28.StrType)le.vchExhibitorName1),TRIM((SALT28.StrType)le.vchExhibitorName2),TRIM((SALT28.StrType)le.vchExhibitorName3),TRIM((SALT28.StrType)le.Address1),TRIM((SALT28.StrType)le.Address2),TRIM((SALT28.StrType)le.Address3),TRIM((SALT28.StrType)le.City),TRIM((SALT28.StrType)le.RegionName),TRIM((SALT28.StrType)le.Country),TRIM((SALT28.StrType)le.PostalCode),TRIM((SALT28.StrType)le.MainPhone),TRIM((SALT28.StrType)le.TollFreePhone),TRIM((SALT28.StrType)le.Fax),TRIM((SALT28.StrType)le.vchTollFreeFax),TRIM((SALT28.StrType)le.Email),TRIM((SALT28.StrType)le.WebAddress),TRIM((SALT28.StrType)le.txtProductDesc),TRIM((SALT28.StrType)le.vchPavillion),TRIM((SALT28.StrType)le.vchHall),TRIM((SALT28.StrType)le.vchPage),TRIM((SALT28.StrType)le.txtSpecials),TRIM((SALT28.StrType)le.txtRepresentatives),TRIM((SALT28.StrType)le.txtNewProducts),TRIM((SALT28.StrType)le.vchExporting),TRIM((SALT28.StrType)le.vchBusinessInterest),TRIM((SALT28.StrType)le.vchCrossRef1),TRIM((SALT28.StrType)le.vchCrossRef2),TRIM((SALT28.StrType)le.vchCrossRef3),TRIM((SALT28.StrType)le.vchCrossRef4),TRIM((SALT28.StrType)le.iParentCompanyId)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,36,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'iExhibitorId'}
      ,{2,'iPrismCompanyId'}
      ,{3,'chShowCd'}
      ,{4,'iShowYear'}
      ,{5,'vchBooth'}
      ,{6,'chAssocMemberFlag'}
      ,{7,'vchExhibitorName1'}
      ,{8,'vchExhibitorName2'}
      ,{9,'vchExhibitorName3'}
      ,{10,'Address1'}
      ,{11,'Address2'}
      ,{12,'Address3'}
      ,{13,'City'}
      ,{14,'RegionName'}
      ,{15,'Country'}
      ,{16,'PostalCode'}
      ,{17,'MainPhone'}
      ,{18,'TollFreePhone'}
      ,{19,'Fax'}
      ,{20,'vchTollFreeFax'}
      ,{21,'Email'}
      ,{22,'WebAddress'}
      ,{23,'txtProductDesc'}
      ,{24,'vchPavillion'}
      ,{25,'vchHall'}
      ,{26,'vchPage'}
      ,{27,'txtSpecials'}
      ,{28,'txtRepresentatives'}
      ,{29,'txtNewProducts'}
      ,{30,'vchExporting'}
      ,{31,'vchBusinessInterest'}
      ,{32,'vchCrossRef1'}
      ,{33,'vchCrossRef2'}
      ,{34,'vchCrossRef3'}
      ,{35,'vchCrossRef4'}
      ,{36,'iParentCompanyId'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_iExhibitorId((SALT28.StrType)le.iExhibitorId),
    Fields.InValid_iPrismCompanyId((SALT28.StrType)le.iPrismCompanyId),
    Fields.InValid_chShowCd((SALT28.StrType)le.chShowCd),
    Fields.InValid_iShowYear((SALT28.StrType)le.iShowYear),
    Fields.InValid_vchBooth((SALT28.StrType)le.vchBooth),
    Fields.InValid_chAssocMemberFlag((SALT28.StrType)le.chAssocMemberFlag),
    Fields.InValid_vchExhibitorName1((SALT28.StrType)le.vchExhibitorName1),
    Fields.InValid_vchExhibitorName2((SALT28.StrType)le.vchExhibitorName2),
    Fields.InValid_vchExhibitorName3((SALT28.StrType)le.vchExhibitorName3),
    Fields.InValid_Address1((SALT28.StrType)le.Address1),
    Fields.InValid_Address2((SALT28.StrType)le.Address2),
    Fields.InValid_Address3((SALT28.StrType)le.Address3),
    Fields.InValid_City((SALT28.StrType)le.City),
    Fields.InValid_RegionName((SALT28.StrType)le.RegionName),
    Fields.InValid_Country((SALT28.StrType)le.Country),
    Fields.InValid_PostalCode((SALT28.StrType)le.PostalCode),
    Fields.InValid_MainPhone((SALT28.StrType)le.MainPhone),
    Fields.InValid_TollFreePhone((SALT28.StrType)le.TollFreePhone),
    Fields.InValid_Fax((SALT28.StrType)le.Fax),
    Fields.InValid_vchTollFreeFax((SALT28.StrType)le.vchTollFreeFax),
    Fields.InValid_Email((SALT28.StrType)le.Email),
    Fields.InValid_WebAddress((SALT28.StrType)le.WebAddress),
    Fields.InValid_txtProductDesc((SALT28.StrType)le.txtProductDesc),
    Fields.InValid_vchPavillion((SALT28.StrType)le.vchPavillion),
    Fields.InValid_vchHall((SALT28.StrType)le.vchHall),
    Fields.InValid_vchPage((SALT28.StrType)le.vchPage),
    Fields.InValid_txtSpecials((SALT28.StrType)le.txtSpecials),
    Fields.InValid_txtRepresentatives((SALT28.StrType)le.txtRepresentatives),
    Fields.InValid_txtNewProducts((SALT28.StrType)le.txtNewProducts),
    Fields.InValid_vchExporting((SALT28.StrType)le.vchExporting),
    Fields.InValid_vchBusinessInterest((SALT28.StrType)le.vchBusinessInterest),
    Fields.InValid_vchCrossRef1((SALT28.StrType)le.vchCrossRef1),
    Fields.InValid_vchCrossRef2((SALT28.StrType)le.vchCrossRef2),
    Fields.InValid_vchCrossRef3((SALT28.StrType)le.vchCrossRef3),
    Fields.InValid_vchCrossRef4((SALT28.StrType)le.vchCrossRef4),
    Fields.InValid_iParentCompanyId((SALT28.StrType)le.iParentCompanyId),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,36,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_iExhibitorId(TotalErrors.ErrorNum),Fields.InValidMessage_iPrismCompanyId(TotalErrors.ErrorNum),Fields.InValidMessage_chShowCd(TotalErrors.ErrorNum),Fields.InValidMessage_iShowYear(TotalErrors.ErrorNum),Fields.InValidMessage_vchBooth(TotalErrors.ErrorNum),Fields.InValidMessage_chAssocMemberFlag(TotalErrors.ErrorNum),Fields.InValidMessage_vchExhibitorName1(TotalErrors.ErrorNum),Fields.InValidMessage_vchExhibitorName2(TotalErrors.ErrorNum),Fields.InValidMessage_vchExhibitorName3(TotalErrors.ErrorNum),Fields.InValidMessage_Address1(TotalErrors.ErrorNum),Fields.InValidMessage_Address2(TotalErrors.ErrorNum),Fields.InValidMessage_Address3(TotalErrors.ErrorNum),Fields.InValidMessage_City(TotalErrors.ErrorNum),Fields.InValidMessage_RegionName(TotalErrors.ErrorNum),Fields.InValidMessage_Country(TotalErrors.ErrorNum),Fields.InValidMessage_PostalCode(TotalErrors.ErrorNum),Fields.InValidMessage_MainPhone(TotalErrors.ErrorNum),Fields.InValidMessage_TollFreePhone(TotalErrors.ErrorNum),Fields.InValidMessage_Fax(TotalErrors.ErrorNum),Fields.InValidMessage_vchTollFreeFax(TotalErrors.ErrorNum),Fields.InValidMessage_Email(TotalErrors.ErrorNum),Fields.InValidMessage_WebAddress(TotalErrors.ErrorNum),Fields.InValidMessage_txtProductDesc(TotalErrors.ErrorNum),Fields.InValidMessage_vchPavillion(TotalErrors.ErrorNum),Fields.InValidMessage_vchHall(TotalErrors.ErrorNum),Fields.InValidMessage_vchPage(TotalErrors.ErrorNum),Fields.InValidMessage_txtSpecials(TotalErrors.ErrorNum),Fields.InValidMessage_txtRepresentatives(TotalErrors.ErrorNum),Fields.InValidMessage_txtNewProducts(TotalErrors.ErrorNum),Fields.InValidMessage_vchExporting(TotalErrors.ErrorNum),Fields.InValidMessage_vchBusinessInterest(TotalErrors.ErrorNum),Fields.InValidMessage_vchCrossRef1(TotalErrors.ErrorNum),Fields.InValidMessage_vchCrossRef2(TotalErrors.ErrorNum),Fields.InValidMessage_vchCrossRef3(TotalErrors.ErrorNum),Fields.InValidMessage_vchCrossRef4(TotalErrors.ErrorNum),Fields.InValidMessage_iParentCompanyId(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
