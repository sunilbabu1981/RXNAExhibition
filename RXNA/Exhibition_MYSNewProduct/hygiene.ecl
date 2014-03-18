import ut,SALT28;
export hygiene(dataset(layout_MYSNewProduct) h) := MODULE
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
    populated_ExhibitorID_pcnt := AVE(GROUP,IF(h.ExhibitorID = (TYPEOF(h.ExhibitorID))'',0,100));
    maxlength_ExhibitorID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)));
    avelength_ExhibitorID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)),h.ExhibitorID<>(typeof(h.ExhibitorID))'');
    populated_Company_Name_pcnt := AVE(GROUP,IF(h.Company_Name = (TYPEOF(h.Company_Name))'',0,100));
    maxlength_Company_Name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_Name)));
    avelength_Company_Name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Company_Name)),h.Company_Name<>(typeof(h.Company_Name))'');
    populated_Product_Description_pcnt := AVE(GROUP,IF(h.Product_Description = (TYPEOF(h.Product_Description))'',0,100));
    maxlength_Product_Description := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Product_Description)));
    avelength_Product_Description := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Product_Description)),h.Product_Description<>(typeof(h.Product_Description))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.Company_Name),TRIM((SALT28.StrType)le.Product_Description)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,5,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'ExhibitorID'}
      ,{4,'Company_Name'}
      ,{5,'Product_Description'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_ExhibitorID((SALT28.StrType)le.ExhibitorID),
    Fields.InValid_Company_Name((SALT28.StrType)le.Company_Name),
    Fields.InValid_Product_Description((SALT28.StrType)le.Product_Description),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,5,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_Company_Name(TotalErrors.ErrorNum),Fields.InValidMessage_Product_Description(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
