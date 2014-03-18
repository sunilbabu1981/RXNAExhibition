import ut,SALT28;
export hygiene(dataset(layout_DirectoryProductCategory) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_iProductCategoryId_pcnt := AVE(GROUP,IF(h.iProductCategoryId = (TYPEOF(h.iProductCategoryId))'',0,100));
    maxlength_iProductCategoryId := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.iProductCategoryId)));
    avelength_iProductCategoryId := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.iProductCategoryId)),h.iProductCategoryId<>(typeof(h.iProductCategoryId))'');
    populated_vchProductCategoryDesc_pcnt := AVE(GROUP,IF(h.vchProductCategoryDesc = (TYPEOF(h.vchProductCategoryDesc))'',0,100));
    maxlength_vchProductCategoryDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchProductCategoryDesc)));
    avelength_vchProductCategoryDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchProductCategoryDesc)),h.vchProductCategoryDesc<>(typeof(h.vchProductCategoryDesc))'');
    populated_vchHeadingDesc_pcnt := AVE(GROUP,IF(h.vchHeadingDesc = (TYPEOF(h.vchHeadingDesc))'',0,100));
    maxlength_vchHeadingDesc := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchHeadingDesc)));
    avelength_vchHeadingDesc := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.vchHeadingDesc)),h.vchHeadingDesc<>(typeof(h.vchHeadingDesc))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.iProductCategoryId),TRIM((SALT28.StrType)le.vchProductCategoryDesc),TRIM((SALT28.StrType)le.vchHeadingDesc)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,3,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'iProductCategoryId'}
      ,{2,'vchProductCategoryDesc'}
      ,{3,'vchHeadingDesc'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_iProductCategoryId((SALT28.StrType)le.iProductCategoryId),
    Fields.InValid_vchProductCategoryDesc((SALT28.StrType)le.vchProductCategoryDesc),
    Fields.InValid_vchHeadingDesc((SALT28.StrType)le.vchHeadingDesc),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,3,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_iProductCategoryId(TotalErrors.ErrorNum),Fields.InValidMessage_vchProductCategoryDesc(TotalErrors.ErrorNum),Fields.InValidMessage_vchHeadingDesc(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
