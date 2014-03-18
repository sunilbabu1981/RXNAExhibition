import ut,SALT28;
export hygiene(dataset(layout_floorPlan) h) := MODULE
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
    populated_Booth_pcnt := AVE(GROUP,IF(h.Booth = (TYPEOF(h.Booth))'',0,100));
    maxlength_Booth := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)));
    avelength_Booth := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth)),h.Booth<>(typeof(h.Booth))'');
    populated_Exhibitor_Name_pcnt := AVE(GROUP,IF(h.Exhibitor_Name = (TYPEOF(h.Exhibitor_Name))'',0,100));
    maxlength_Exhibitor_Name := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_Name)));
    avelength_Exhibitor_Name := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor_Name)),h.Exhibitor_Name<>(typeof(h.Exhibitor_Name))'');
    populated_Class_pcnt := AVE(GROUP,IF(h.Class = (TYPEOF(h.Class))'',0,100));
    maxlength_Class := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Class)));
    avelength_Class := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Class)),h.Class<>(typeof(h.Class))'');
    populated_Pavilion_pcnt := AVE(GROUP,IF(h.Pavilion = (TYPEOF(h.Pavilion))'',0,100));
    maxlength_Pavilion := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Pavilion)));
    avelength_Pavilion := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Pavilion)),h.Pavilion<>(typeof(h.Pavilion))'');
    populated_Booth_Area_pcnt := AVE(GROUP,IF(h.Booth_Area = (TYPEOF(h.Booth_Area))'',0,100));
    maxlength_Booth_Area := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth_Area)));
    avelength_Booth_Area := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Booth_Area)),h.Booth_Area<>(typeof(h.Booth_Area))'');
    populated_Short_Side_pcnt := AVE(GROUP,IF(h.Short_Side = (TYPEOF(h.Short_Side))'',0,100));
    maxlength_Short_Side := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Short_Side)));
    avelength_Short_Side := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Short_Side)),h.Short_Side<>(typeof(h.Short_Side))'');
    populated_Long_Side_pcnt := AVE(GROUP,IF(h.Long_Side = (TYPEOF(h.Long_Side))'',0,100));
    maxlength_Long_Side := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Long_Side)));
    avelength_Long_Side := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Long_Side)),h.Long_Side<>(typeof(h.Long_Side))'');
    populated_Open_Corners_pcnt := AVE(GROUP,IF(h.Open_Corners = (TYPEOF(h.Open_Corners))'',0,100));
    maxlength_Open_Corners := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Open_Corners)));
    avelength_Open_Corners := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Open_Corners)),h.Open_Corners<>(typeof(h.Open_Corners))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Booth),TRIM((SALT28.StrType)le.Exhibitor_Name),TRIM((SALT28.StrType)le.Class),TRIM((SALT28.StrType)le.Pavilion),TRIM((SALT28.StrType)le.Booth_Area),TRIM((SALT28.StrType)le.Short_Side),TRIM((SALT28.StrType)le.Long_Side),TRIM((SALT28.StrType)le.Open_Corners)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,10,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'Booth'}
      ,{4,'Exhibitor_Name'}
      ,{5,'Class'}
      ,{6,'Pavilion'}
      ,{7,'Booth_Area'}
      ,{8,'Short_Side'}
      ,{9,'Long_Side'}
      ,{10,'Open_Corners'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_Booth((SALT28.StrType)le.Booth),
    Fields.InValid_Exhibitor_Name((SALT28.StrType)le.Exhibitor_Name),
    Fields.InValid_Class((SALT28.StrType)le.Class),
    Fields.InValid_Pavilion((SALT28.StrType)le.Pavilion),
    Fields.InValid_Booth_Area((SALT28.StrType)le.Booth_Area),
    Fields.InValid_Short_Side((SALT28.StrType)le.Short_Side),
    Fields.InValid_Long_Side((SALT28.StrType)le.Long_Side),
    Fields.InValid_Open_Corners((SALT28.StrType)le.Open_Corners),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Booth(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor_Name(TotalErrors.ErrorNum),Fields.InValidMessage_Class(TotalErrors.ErrorNum),Fields.InValidMessage_Pavilion(TotalErrors.ErrorNum),Fields.InValidMessage_Booth_Area(TotalErrors.ErrorNum),Fields.InValidMessage_Short_Side(TotalErrors.ErrorNum),Fields.InValidMessage_Long_Side(TotalErrors.ErrorNum),Fields.InValidMessage_Open_Corners(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
