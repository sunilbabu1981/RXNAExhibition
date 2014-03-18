import ut,SALT28;
export hygiene(dataset(layout_MYSProductS) h) := MODULE
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
    populated_PROD_ID_pcnt := AVE(GROUP,IF(h.PROD_ID = (TYPEOF(h.PROD_ID))'',0,100));
    maxlength_PROD_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROD_ID)));
    avelength_PROD_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PROD_ID)),h.PROD_ID<>(typeof(h.PROD_ID))'');
    populated_PARENT_PRODUCT_pcnt := AVE(GROUP,IF(h.PARENT_PRODUCT = (TYPEOF(h.PARENT_PRODUCT))'',0,100));
    maxlength_PARENT_PRODUCT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PARENT_PRODUCT)));
    avelength_PARENT_PRODUCT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PARENT_PRODUCT)),h.PARENT_PRODUCT<>(typeof(h.PARENT_PRODUCT))'');
    populated_PRODUCT_pcnt := AVE(GROUP,IF(h.PRODUCT = (TYPEOF(h.PRODUCT))'',0,100));
    maxlength_PRODUCT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRODUCT)));
    avelength_PRODUCT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRODUCT)),h.PRODUCT<>(typeof(h.PRODUCT))'');
    populated_EXHIBITORID_pcnt := AVE(GROUP,IF(h.EXHIBITORID = (TYPEOF(h.EXHIBITORID))'',0,100));
    maxlength_EXHIBITORID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)));
    avelength_EXHIBITORID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)),h.EXHIBITORID<>(typeof(h.EXHIBITORID))'');
    populated_EXHIBITOR_pcnt := AVE(GROUP,IF(h.EXHIBITOR = (TYPEOF(h.EXHIBITOR))'',0,100));
    maxlength_EXHIBITOR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)));
    avelength_EXHIBITOR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)),h.EXHIBITOR<>(typeof(h.EXHIBITOR))'');
    populated_BOOTH_pcnt := AVE(GROUP,IF(h.BOOTH = (TYPEOF(h.BOOTH))'',0,100));
    maxlength_BOOTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)));
    avelength_BOOTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)),h.BOOTH<>(typeof(h.BOOTH))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.PROD_ID),TRIM((SALT28.StrType)le.PARENT_PRODUCT),TRIM((SALT28.StrType)le.PRODUCT),TRIM((SALT28.StrType)le.EXHIBITORID),TRIM((SALT28.StrType)le.EXHIBITOR),TRIM((SALT28.StrType)le.BOOTH)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,8,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'PROD_ID'}
      ,{4,'PARENT_PRODUCT'}
      ,{5,'PRODUCT'}
      ,{6,'EXHIBITORID'}
      ,{7,'EXHIBITOR'}
      ,{8,'BOOTH'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_PROD_ID((SALT28.StrType)le.PROD_ID),
    Fields.InValid_PARENT_PRODUCT((SALT28.StrType)le.PARENT_PRODUCT),
    Fields.InValid_PRODUCT((SALT28.StrType)le.PRODUCT),
    Fields.InValid_EXHIBITORID((SALT28.StrType)le.EXHIBITORID),
    Fields.InValid_EXHIBITOR((SALT28.StrType)le.EXHIBITOR),
    Fields.InValid_BOOTH((SALT28.StrType)le.BOOTH),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,8,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_PROD_ID(TotalErrors.ErrorNum),Fields.InValidMessage_PARENT_PRODUCT(TotalErrors.ErrorNum),Fields.InValidMessage_PRODUCT(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITORID(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
