import ut,SALT28;
export hygiene(dataset(layout_CESurveys) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_TSSBOOTHID_pcnt := AVE(GROUP,IF(h.TSSBOOTHID = (TYPEOF(h.TSSBOOTHID))'',0,100));
    maxlength_TSSBOOTHID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)));
    avelength_TSSBOOTHID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)),h.TSSBOOTHID<>(typeof(h.TSSBOOTHID))'');
    populated_QUESTION_NBR_pcnt := AVE(GROUP,IF(h.QUESTION_NBR = (TYPEOF(h.QUESTION_NBR))'',0,100));
    maxlength_QUESTION_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QUESTION_NBR)));
    avelength_QUESTION_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QUESTION_NBR)),h.QUESTION_NBR<>(typeof(h.QUESTION_NBR))'');
    populated_QUESTION_TEXT_pcnt := AVE(GROUP,IF(h.QUESTION_TEXT = (TYPEOF(h.QUESTION_TEXT))'',0,100));
    maxlength_QUESTION_TEXT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QUESTION_TEXT)));
    avelength_QUESTION_TEXT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QUESTION_TEXT)),h.QUESTION_TEXT<>(typeof(h.QUESTION_TEXT))'');
    populated_CREATED_DT_pcnt := AVE(GROUP,IF(h.CREATED_DT = (TYPEOF(h.CREATED_DT))'',0,100));
    maxlength_CREATED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)));
    avelength_CREATED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)),h.CREATED_DT<>(typeof(h.CREATED_DT))'');
    populated_SURVEY_NBR_pcnt := AVE(GROUP,IF(h.SURVEY_NBR = (TYPEOF(h.SURVEY_NBR))'',0,100));
    maxlength_SURVEY_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SURVEY_NBR)));
    avelength_SURVEY_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SURVEY_NBR)),h.SURVEY_NBR<>(typeof(h.SURVEY_NBR))'');
    populated_ANSWER_TEXT_pcnt := AVE(GROUP,IF(h.ANSWER_TEXT = (TYPEOF(h.ANSWER_TEXT))'',0,100));
    maxlength_ANSWER_TEXT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ANSWER_TEXT)));
    avelength_ANSWER_TEXT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ANSWER_TEXT)),h.ANSWER_TEXT<>(typeof(h.ANSWER_TEXT))'');
    populated_CONTACT_NAME_pcnt := AVE(GROUP,IF(h.CONTACT_NAME = (TYPEOF(h.CONTACT_NAME))'',0,100));
    maxlength_CONTACT_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_NAME)));
    avelength_CONTACT_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_NAME)),h.CONTACT_NAME<>(typeof(h.CONTACT_NAME))'');
    populated_WANT_TO_BE_CONTACTED_pcnt := AVE(GROUP,IF(h.WANT_TO_BE_CONTACTED = (TYPEOF(h.WANT_TO_BE_CONTACTED))'',0,100));
    maxlength_WANT_TO_BE_CONTACTED := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.WANT_TO_BE_CONTACTED)));
    avelength_WANT_TO_BE_CONTACTED := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.WANT_TO_BE_CONTACTED)),h.WANT_TO_BE_CONTACTED<>(typeof(h.WANT_TO_BE_CONTACTED))'');
    populated_CONTACT_PHONE_pcnt := AVE(GROUP,IF(h.CONTACT_PHONE = (TYPEOF(h.CONTACT_PHONE))'',0,100));
    maxlength_CONTACT_PHONE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_PHONE)));
    avelength_CONTACT_PHONE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CONTACT_PHONE)),h.CONTACT_PHONE<>(typeof(h.CONTACT_PHONE))'');
    populated_COUNTRY_CODE_pcnt := AVE(GROUP,IF(h.COUNTRY_CODE = (TYPEOF(h.COUNTRY_CODE))'',0,100));
    maxlength_COUNTRY_CODE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY_CODE)));
    avelength_COUNTRY_CODE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY_CODE)),h.COUNTRY_CODE<>(typeof(h.COUNTRY_CODE))'');
    populated_COMMENTS_pcnt := AVE(GROUP,IF(h.COMMENTS = (TYPEOF(h.COMMENTS))'',0,100));
    maxlength_COMMENTS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS)));
    avelength_COMMENTS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS)),h.COMMENTS<>(typeof(h.COMMENTS))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.TSSBOOTHID),TRIM((SALT28.StrType)le.QUESTION_NBR),TRIM((SALT28.StrType)le.QUESTION_TEXT),TRIM((SALT28.StrType)le.CREATED_DT),TRIM((SALT28.StrType)le.SURVEY_NBR),TRIM((SALT28.StrType)le.ANSWER_TEXT),TRIM((SALT28.StrType)le.CONTACT_NAME),TRIM((SALT28.StrType)le.WANT_TO_BE_CONTACTED),TRIM((SALT28.StrType)le.CONTACT_PHONE),TRIM((SALT28.StrType)le.COUNTRY_CODE),TRIM((SALT28.StrType)le.COMMENTS)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,12,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'SHOW_KEY'}
      ,{2,'TSSBOOTHID'}
      ,{3,'QUESTION_NBR'}
      ,{4,'QUESTION_TEXT'}
      ,{5,'CREATED_DT'}
      ,{6,'SURVEY_NBR'}
      ,{7,'ANSWER_TEXT'}
      ,{8,'CONTACT_NAME'}
      ,{9,'WANT_TO_BE_CONTACTED'}
      ,{10,'CONTACT_PHONE'}
      ,{11,'COUNTRY_CODE'}
      ,{12,'COMMENTS'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_TSSBOOTHID((SALT28.StrType)le.TSSBOOTHID),
    Fields.InValid_QUESTION_NBR((SALT28.StrType)le.QUESTION_NBR),
    Fields.InValid_QUESTION_TEXT((SALT28.StrType)le.QUESTION_TEXT),
    Fields.InValid_CREATED_DT((SALT28.StrType)le.CREATED_DT),
    Fields.InValid_SURVEY_NBR((SALT28.StrType)le.SURVEY_NBR),
    Fields.InValid_ANSWER_TEXT((SALT28.StrType)le.ANSWER_TEXT),
    Fields.InValid_CONTACT_NAME((SALT28.StrType)le.CONTACT_NAME),
    Fields.InValid_WANT_TO_BE_CONTACTED((SALT28.StrType)le.WANT_TO_BE_CONTACTED),
    Fields.InValid_CONTACT_PHONE((SALT28.StrType)le.CONTACT_PHONE),
    Fields.InValid_COUNTRY_CODE((SALT28.StrType)le.COUNTRY_CODE),
    Fields.InValid_COMMENTS((SALT28.StrType)le.COMMENTS),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,12,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_TSSBOOTHID(TotalErrors.ErrorNum),Fields.InValidMessage_QUESTION_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_QUESTION_TEXT(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_SURVEY_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_ANSWER_TEXT(TotalErrors.ErrorNum),Fields.InValidMessage_CONTACT_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_WANT_TO_BE_CONTACTED(TotalErrors.ErrorNum),Fields.InValidMessage_CONTACT_PHONE(TotalErrors.ErrorNum),Fields.InValidMessage_COUNTRY_CODE(TotalErrors.ErrorNum),Fields.InValidMessage_COMMENTS(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
