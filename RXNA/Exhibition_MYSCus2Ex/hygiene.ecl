import ut,SALT28;
export hygiene(dataset(layout_MYSCus2Ex) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_ExhibitorID_pcnt := AVE(GROUP,IF(h.ExhibitorID = (TYPEOF(h.ExhibitorID))'',0,100));
    maxlength_ExhibitorID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)));
    avelength_ExhibitorID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ExhibitorID)),h.ExhibitorID<>(typeof(h.ExhibitorID))'');
    populated_CUSTOMERID_pcnt := AVE(GROUP,IF(h.CUSTOMERID = (TYPEOF(h.CUSTOMERID))'',0,100));
    maxlength_CUSTOMERID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMERID)));
    avelength_CUSTOMERID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMERID)),h.CUSTOMERID<>(typeof(h.CUSTOMERID))'');
    populated_EVENT_pcnt := AVE(GROUP,IF(h.EVENT = (TYPEOF(h.EVENT))'',0,100));
    maxlength_EVENT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EVENT)));
    avelength_EVENT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EVENT)),h.EVENT<>(typeof(h.EVENT))'');
    populated_EDITION_pcnt := AVE(GROUP,IF(h.EDITION = (TYPEOF(h.EDITION))'',0,100));
    maxlength_EDITION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EDITION)));
    avelength_EDITION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EDITION)),h.EDITION<>(typeof(h.EDITION))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.ExhibitorID),TRIM((SALT28.StrType)le.CUSTOMERID),TRIM((SALT28.StrType)le.EVENT),TRIM((SALT28.StrType)le.EDITION)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,4,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'ExhibitorID'}
      ,{2,'CUSTOMERID'}
      ,{3,'EVENT'}
      ,{4,'EDITION'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_ExhibitorID((SALT28.StrType)le.ExhibitorID),
    Fields.InValid_CUSTOMERID((SALT28.StrType)le.CUSTOMERID),
    Fields.InValid_EVENT((SALT28.StrType)le.EVENT),
    Fields.InValid_EDITION((SALT28.StrType)le.EDITION),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_ExhibitorID(TotalErrors.ErrorNum),Fields.InValidMessage_CUSTOMERID(TotalErrors.ErrorNum),Fields.InValidMessage_EVENT(TotalErrors.ErrorNum),Fields.InValidMessage_EDITION(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
