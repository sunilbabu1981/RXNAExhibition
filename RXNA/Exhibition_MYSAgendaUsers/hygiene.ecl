import ut,SALT28;
export hygiene(dataset(layout_MYSAgendaUsers) h) := MODULE
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
    populated_DATEINSERTED_pcnt := AVE(GROUP,IF(h.DATEINSERTED = (TYPEOF(h.DATEINSERTED))'',0,100));
    maxlength_DATEINSERTED := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DATEINSERTED)));
    avelength_DATEINSERTED := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DATEINSERTED)),h.DATEINSERTED<>(typeof(h.DATEINSERTED))'');
    populated_FULLNAME_pcnt := AVE(GROUP,IF(h.FULLNAME = (TYPEOF(h.FULLNAME))'',0,100));
    maxlength_FULLNAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FULLNAME)));
    avelength_FULLNAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FULLNAME)),h.FULLNAME<>(typeof(h.FULLNAME))'');
    populated_COMPANY_pcnt := AVE(GROUP,IF(h.COMPANY = (TYPEOF(h.COMPANY))'',0,100));
    maxlength_COMPANY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPANY)));
    avelength_COMPANY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPANY)),h.COMPANY<>(typeof(h.COMPANY))'');
    populated_EMAIL_pcnt := AVE(GROUP,IF(h.EMAIL = (TYPEOF(h.EMAIL))'',0,100));
    maxlength_EMAIL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)));
    avelength_EMAIL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)),h.EMAIL<>(typeof(h.EMAIL))'');
    populated_CITY_pcnt := AVE(GROUP,IF(h.CITY = (TYPEOF(h.CITY))'',0,100));
    maxlength_CITY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CITY)));
    avelength_CITY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CITY)),h.CITY<>(typeof(h.CITY))'');
    populated_STATE_pcnt := AVE(GROUP,IF(h.STATE = (TYPEOF(h.STATE))'',0,100));
    maxlength_STATE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATE)));
    avelength_STATE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATE)),h.STATE<>(typeof(h.STATE))'');
    populated_COUNTRY_pcnt := AVE(GROUP,IF(h.COUNTRY = (TYPEOF(h.COUNTRY))'',0,100));
    maxlength_COUNTRY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY)));
    avelength_COUNTRY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY)),h.COUNTRY<>(typeof(h.COUNTRY))'');
    populated_PASSWORD_pcnt := AVE(GROUP,IF(h.PASSWORD = (TYPEOF(h.PASSWORD))'',0,100));
    maxlength_PASSWORD := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PASSWORD)));
    avelength_PASSWORD := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PASSWORD)),h.PASSWORD<>(typeof(h.PASSWORD))'');
    populated_EXHCOUNT_pcnt := AVE(GROUP,IF(h.EXHCOUNT = (TYPEOF(h.EXHCOUNT))'',0,100));
    maxlength_EXHCOUNT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHCOUNT)));
    avelength_EXHCOUNT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHCOUNT)),h.EXHCOUNT<>(typeof(h.EXHCOUNT))'');
    populated_TIMESON_pcnt := AVE(GROUP,IF(h.TIMESON = (TYPEOF(h.TIMESON))'',0,100));
    maxlength_TIMESON := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TIMESON)));
    avelength_TIMESON := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TIMESON)),h.TIMESON<>(typeof(h.TIMESON))'');
    populated_LASTON_pcnt := AVE(GROUP,IF(h.LASTON = (TYPEOF(h.LASTON))'',0,100));
    maxlength_LASTON := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LASTON)));
    avelength_LASTON := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LASTON)),h.LASTON<>(typeof(h.LASTON))'');
    populated_ALLOWEXHCONTACT_pcnt := AVE(GROUP,IF(h.ALLOWEXHCONTACT = (TYPEOF(h.ALLOWEXHCONTACT))'',0,100));
    maxlength_ALLOWEXHCONTACT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ALLOWEXHCONTACT)));
    avelength_ALLOWEXHCONTACT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ALLOWEXHCONTACT)),h.ALLOWEXHCONTACT<>(typeof(h.ALLOWEXHCONTACT))'');
    populated_EXHNAME_pcnt := AVE(GROUP,IF(h.EXHNAME = (TYPEOF(h.EXHNAME))'',0,100));
    maxlength_EXHNAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHNAME)));
    avelength_EXHNAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHNAME)),h.EXHNAME<>(typeof(h.EXHNAME))'');
    populated_ITEMCOUNT_pcnt := AVE(GROUP,IF(h.ITEMCOUNT = (TYPEOF(h.ITEMCOUNT))'',0,100));
    maxlength_ITEMCOUNT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ITEMCOUNT)));
    avelength_ITEMCOUNT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ITEMCOUNT)),h.ITEMCOUNT<>(typeof(h.ITEMCOUNT))'');
    populated_SPEAKERCOUNT_pcnt := AVE(GROUP,IF(h.SPEAKERCOUNT = (TYPEOF(h.SPEAKERCOUNT))'',0,100));
    maxlength_SPEAKERCOUNT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPEAKERCOUNT)));
    avelength_SPEAKERCOUNT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPEAKERCOUNT)),h.SPEAKERCOUNT<>(typeof(h.SPEAKERCOUNT))'');
    populated_ITEMS_pcnt := AVE(GROUP,IF(h.ITEMS = (TYPEOF(h.ITEMS))'',0,100));
    maxlength_ITEMS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ITEMS)));
    avelength_ITEMS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ITEMS)),h.ITEMS<>(typeof(h.ITEMS))'');
    populated_SPEAKERS_pcnt := AVE(GROUP,IF(h.SPEAKERS = (TYPEOF(h.SPEAKERS))'',0,100));
    maxlength_SPEAKERS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPEAKERS)));
    avelength_SPEAKERS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPEAKERS)),h.SPEAKERS<>(typeof(h.SPEAKERS))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.DATEINSERTED),TRIM((SALT28.StrType)le.FULLNAME),TRIM((SALT28.StrType)le.COMPANY),TRIM((SALT28.StrType)le.EMAIL),TRIM((SALT28.StrType)le.CITY),TRIM((SALT28.StrType)le.STATE),TRIM((SALT28.StrType)le.COUNTRY),TRIM((SALT28.StrType)le.PASSWORD),TRIM((SALT28.StrType)le.EXHCOUNT),TRIM((SALT28.StrType)le.TIMESON),TRIM((SALT28.StrType)le.LASTON),TRIM((SALT28.StrType)le.ALLOWEXHCONTACT),TRIM((SALT28.StrType)le.EXHNAME),TRIM((SALT28.StrType)le.ITEMCOUNT),TRIM((SALT28.StrType)le.SPEAKERCOUNT),TRIM((SALT28.StrType)le.ITEMS),TRIM((SALT28.StrType)le.SPEAKERS)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,19,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'DATEINSERTED'}
      ,{4,'FULLNAME'}
      ,{5,'COMPANY'}
      ,{6,'EMAIL'}
      ,{7,'CITY'}
      ,{8,'STATE'}
      ,{9,'COUNTRY'}
      ,{10,'PASSWORD'}
      ,{11,'EXHCOUNT'}
      ,{12,'TIMESON'}
      ,{13,'LASTON'}
      ,{14,'ALLOWEXHCONTACT'}
      ,{15,'EXHNAME'}
      ,{16,'ITEMCOUNT'}
      ,{17,'SPEAKERCOUNT'}
      ,{18,'ITEMS'}
      ,{19,'SPEAKERS'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_DATEINSERTED((SALT28.StrType)le.DATEINSERTED),
    Fields.InValid_FULLNAME((SALT28.StrType)le.FULLNAME),
    Fields.InValid_COMPANY((SALT28.StrType)le.COMPANY),
    Fields.InValid_EMAIL((SALT28.StrType)le.EMAIL),
    Fields.InValid_CITY((SALT28.StrType)le.CITY),
    Fields.InValid_STATE((SALT28.StrType)le.STATE),
    Fields.InValid_COUNTRY((SALT28.StrType)le.COUNTRY),
    Fields.InValid_PASSWORD((SALT28.StrType)le.PASSWORD),
    Fields.InValid_EXHCOUNT((SALT28.StrType)le.EXHCOUNT),
    Fields.InValid_TIMESON((SALT28.StrType)le.TIMESON),
    Fields.InValid_LASTON((SALT28.StrType)le.LASTON),
    Fields.InValid_ALLOWEXHCONTACT((SALT28.StrType)le.ALLOWEXHCONTACT),
    Fields.InValid_EXHNAME((SALT28.StrType)le.EXHNAME),
    Fields.InValid_ITEMCOUNT((SALT28.StrType)le.ITEMCOUNT),
    Fields.InValid_SPEAKERCOUNT((SALT28.StrType)le.SPEAKERCOUNT),
    Fields.InValid_ITEMS((SALT28.StrType)le.ITEMS),
    Fields.InValid_SPEAKERS((SALT28.StrType)le.SPEAKERS),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,19,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_DATEINSERTED(TotalErrors.ErrorNum),Fields.InValidMessage_FULLNAME(TotalErrors.ErrorNum),Fields.InValidMessage_COMPANY(TotalErrors.ErrorNum),Fields.InValidMessage_EMAIL(TotalErrors.ErrorNum),Fields.InValidMessage_CITY(TotalErrors.ErrorNum),Fields.InValidMessage_STATE(TotalErrors.ErrorNum),Fields.InValidMessage_COUNTRY(TotalErrors.ErrorNum),Fields.InValidMessage_PASSWORD(TotalErrors.ErrorNum),Fields.InValidMessage_EXHCOUNT(TotalErrors.ErrorNum),Fields.InValidMessage_TIMESON(TotalErrors.ErrorNum),Fields.InValidMessage_LASTON(TotalErrors.ErrorNum),Fields.InValidMessage_ALLOWEXHCONTACT(TotalErrors.ErrorNum),Fields.InValidMessage_EXHNAME(TotalErrors.ErrorNum),Fields.InValidMessage_ITEMCOUNT(TotalErrors.ErrorNum),Fields.InValidMessage_SPEAKERCOUNT(TotalErrors.ErrorNum),Fields.InValidMessage_ITEMS(TotalErrors.ErrorNum),Fields.InValidMessage_SPEAKERS(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
