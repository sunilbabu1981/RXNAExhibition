import ut,SALT28;
export hygiene(dataset(layout_DirectoryExProductCategory) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_CustomerID_pcnt := AVE(GROUP,IF(h.CustomerID = (TYPEOF(h.CustomerID))'',0,100));
    maxlength_CustomerID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)));
    avelength_CustomerID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CustomerID)),h.CustomerID<>(typeof(h.CustomerID))'');
    populated_iProductCategoryId_pcnt := AVE(GROUP,IF(h.iProductCategoryId = (TYPEOF(h.iProductCategoryId))'',0,100));
    maxlength_iProductCategoryId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iProductCategoryId)));
    avelength_iProductCategoryId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iProductCategoryId)),h.iProductCategoryId<>(typeof(h.iProductCategoryId))'');
    populated_ProductDesc_pcnt := AVE(GROUP,IF(h.ProductDesc = (TYPEOF(h.ProductDesc))'',0,100));
    maxlength_ProductDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ProductDesc)));
    avelength_ProductDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ProductDesc)),h.ProductDesc<>(typeof(h.ProductDesc))'');
    populated_HeadingDesc_pcnt := AVE(GROUP,IF(h.HeadingDesc = (TYPEOF(h.HeadingDesc))'',0,100));
    maxlength_HeadingDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.HeadingDesc)));
    avelength_HeadingDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.HeadingDesc)),h.HeadingDesc<>(typeof(h.HeadingDesc))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.CustomerID),TRIM((SALT28.StrType)le.iProductCategoryId),TRIM((SALT28.StrType)le.ProductDesc),TRIM((SALT28.StrType)le.HeadingDesc)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,4,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'CustomerID'}
      ,{2,'iProductCategoryId'}
      ,{3,'ProductDesc'}
      ,{4,'HeadingDesc'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_CustomerID((SALT28.StrType)le.CustomerID),
    Fields.InValid_iProductCategoryId((SALT28.StrType)le.iProductCategoryId),
    Fields.InValid_ProductDesc((SALT28.StrType)le.ProductDesc),
    Fields.InValid_HeadingDesc((SALT28.StrType)le.HeadingDesc),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,4,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_CustomerID(TotalErrors.ErrorNum),Fields.InValidMessage_iProductCategoryId(TotalErrors.ErrorNum),Fields.InValidMessage_ProductDesc(TotalErrors.ErrorNum),Fields.InValidMessage_HeadingDesc(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
