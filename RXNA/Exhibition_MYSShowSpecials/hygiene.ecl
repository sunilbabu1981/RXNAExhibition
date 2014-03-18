import ut,SALT28;
export hygiene(dataset(layout_MYSShowSpecials) h) := MODULE
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
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_Title_pcnt := AVE(GROUP,IF(h.Title = (TYPEOF(h.Title))'',0,100));
    maxlength_Title := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Title)));
    avelength_Title := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Title)),h.Title<>(typeof(h.Title))'');
    populated_Category_pcnt := AVE(GROUP,IF(h.Category = (TYPEOF(h.Category))'',0,100));
    maxlength_Category := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Category)));
    avelength_Category := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Category)),h.Category<>(typeof(h.Category))'');
    populated_Description_pcnt := AVE(GROUP,IF(h.Description = (TYPEOF(h.Description))'',0,100));
    maxlength_Description := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Description)));
    avelength_Description := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Description)),h.Description<>(typeof(h.Description))'');
    populated_Filename_pcnt := AVE(GROUP,IF(h.Filename = (TYPEOF(h.Filename))'',0,100));
    maxlength_Filename := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Filename)));
    avelength_Filename := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Filename)),h.Filename<>(typeof(h.Filename))'');
    populated_Date_Added_pcnt := AVE(GROUP,IF(h.Date_Added = (TYPEOF(h.Date_Added))'',0,100));
    maxlength_Date_Added := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Date_Added)));
    avelength_Date_Added := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Date_Added)),h.Date_Added<>(typeof(h.Date_Added))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.Company_Name),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.Title),TRIM((SALT28.StrType)le.Category),TRIM((SALT28.StrType)le.Description),TRIM((SALT28.StrType)le.Filename),TRIM((SALT28.StrType)le.Date_Added)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,10,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'ExhibitorID'}
      ,{4,'Company_Name'}
      ,{5,'Booth'}
      ,{6,'Title'}
      ,{7,'Category'}
      ,{8,'Description'}
      ,{9,'Filename'}
      ,{10,'Date_Added'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_Title((SALT28.StrType)le.Title),
    Fields.InValid_Category((SALT28.StrType)le.Category),
    Fields.InValid_Description((SALT28.StrType)le.Description),
    Fields.InValid_Filename((SALT28.StrType)le.Filename),
    Fields.InValid_Date_Added((SALT28.StrType)le.Date_Added),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,10,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_Company_Name(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_Title(TotalErrors.ErrorNum),Fields.InValidMessage_Category(TotalErrors.ErrorNum),Fields.InValidMessage_Description(TotalErrors.ErrorNum),Fields.InValidMessage_Filename(TotalErrors.ErrorNum),Fields.InValidMessage_Date_Added(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
