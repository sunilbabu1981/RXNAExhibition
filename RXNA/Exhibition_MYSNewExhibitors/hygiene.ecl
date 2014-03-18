import ut,SALT28;
export hygiene(dataset(layout_MYSNewExhibitors	) h) := MODULE
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
    populated_EXHIBITORID_pcnt := AVE(GROUP,IF(h.EXHIBITORID = (TYPEOF(h.EXHIBITORID))'',0,100));
    maxlength_EXHIBITORID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)));
    avelength_EXHIBITORID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORID)),h.EXHIBITORID<>(typeof(h.EXHIBITORID))'');
    populated_EXHIBITORNAME_pcnt := AVE(GROUP,IF(h.EXHIBITORNAME = (TYPEOF(h.EXHIBITORNAME))'',0,100));
    maxlength_EXHIBITORNAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORNAME)));
    avelength_EXHIBITORNAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITORNAME)),h.EXHIBITORNAME<>(typeof(h.EXHIBITORNAME))'');
    populated_BOOTH_pcnt := AVE(GROUP,IF(h.BOOTH = (TYPEOF(h.BOOTH))'',0,100));
    maxlength_BOOTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)));
    avelength_BOOTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)),h.BOOTH<>(typeof(h.BOOTH))'');
    populated_IDSLINK_pcnt := AVE(GROUP,IF(h.IDSLINK = (TYPEOF(h.IDSLINK))'',0,100));
    maxlength_IDSLINK := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.IDSLINK)));
    avelength_IDSLINK := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.IDSLINK)),h.IDSLINK<>(typeof(h.IDSLINK))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.EXHIBITORID),TRIM((SALT28.StrType)le.EXHIBITORNAME),TRIM((SALT28.StrType)le.BOOTH),TRIM((SALT28.StrType)le.IDSLINK)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,6,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'EXHIBITORID'}
      ,{4,'EXHIBITORNAME'}
      ,{5,'BOOTH'}
      ,{6,'IDSLINK'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_EXHIBITORID((SALT28.StrType)le.EXHIBITORID),
    Fields.InValid_EXHIBITORNAME((SALT28.StrType)le.EXHIBITORNAME),
    Fields.InValid_BOOTH((SALT28.StrType)le.BOOTH),
    Fields.InValid_IDSLINK((SALT28.StrType)le.IDSLINK),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,6,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITORID(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITORNAME(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH(TotalErrors.ErrorNum),Fields.InValidMessage_IDSLINK(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
