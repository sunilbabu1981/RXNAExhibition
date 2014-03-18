import ut,SALT28;
export hygiene(dataset(layout_MYSPressRelease) h) := MODULE
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
    populated_ID_pcnt := AVE(GROUP,IF(h.ID = (TYPEOF(h.ID))'',0,100));
    maxlength_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ID)));
    avelength_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ID)),h.ID<>(typeof(h.ID))'');
    populated_EXHIBITOR_pcnt := AVE(GROUP,IF(h.EXHIBITOR = (TYPEOF(h.EXHIBITOR))'',0,100));
    maxlength_EXHIBITOR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)));
    avelength_EXHIBITOR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EXHIBITOR)),h.EXHIBITOR<>(typeof(h.EXHIBITOR))'');
    populated_ALTERNATE_NAME_pcnt := AVE(GROUP,IF(h.ALTERNATE_NAME = (TYPEOF(h.ALTERNATE_NAME))'',0,100));
    maxlength_ALTERNATE_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ALTERNATE_NAME)));
    avelength_ALTERNATE_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ALTERNATE_NAME)),h.ALTERNATE_NAME<>(typeof(h.ALTERNATE_NAME))'');
    populated_SORT_pcnt := AVE(GROUP,IF(h.SORT = (TYPEOF(h.SORT))'',0,100));
    maxlength_SORT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SORT)));
    avelength_SORT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SORT)),h.SORT<>(typeof(h.SORT))'');
    populated_ADDRESS1_pcnt := AVE(GROUP,IF(h.ADDRESS1 = (TYPEOF(h.ADDRESS1))'',0,100));
    maxlength_ADDRESS1 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS1)));
    avelength_ADDRESS1 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS1)),h.ADDRESS1<>(typeof(h.ADDRESS1))'');
    populated_ADDRESS2_pcnt := AVE(GROUP,IF(h.ADDRESS2 = (TYPEOF(h.ADDRESS2))'',0,100));
    maxlength_ADDRESS2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS2)));
    avelength_ADDRESS2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS2)),h.ADDRESS2<>(typeof(h.ADDRESS2))'');
    populated_ADDRESS3_pcnt := AVE(GROUP,IF(h.ADDRESS3 = (TYPEOF(h.ADDRESS3))'',0,100));
    maxlength_ADDRESS3 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS3)));
    avelength_ADDRESS3 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADDRESS3)),h.ADDRESS3<>(typeof(h.ADDRESS3))'');
    populated_CITY_pcnt := AVE(GROUP,IF(h.CITY = (TYPEOF(h.CITY))'',0,100));
    maxlength_CITY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CITY)));
    avelength_CITY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CITY)),h.CITY<>(typeof(h.CITY))'');
    populated_STATE_pcnt := AVE(GROUP,IF(h.STATE = (TYPEOF(h.STATE))'',0,100));
    maxlength_STATE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATE)));
    avelength_STATE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.STATE)),h.STATE<>(typeof(h.STATE))'');
    populated_ZIP_pcnt := AVE(GROUP,IF(h.ZIP = (TYPEOF(h.ZIP))'',0,100));
    maxlength_ZIP := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ZIP)));
    avelength_ZIP := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ZIP)),h.ZIP<>(typeof(h.ZIP))'');
    populated_COUNTRY_pcnt := AVE(GROUP,IF(h.COUNTRY = (TYPEOF(h.COUNTRY))'',0,100));
    maxlength_COUNTRY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY)));
    avelength_COUNTRY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COUNTRY)),h.COUNTRY<>(typeof(h.COUNTRY))'');
    populated_PHONE_pcnt := AVE(GROUP,IF(h.PHONE = (TYPEOF(h.PHONE))'',0,100));
    maxlength_PHONE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE)));
    avelength_PHONE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE)),h.PHONE<>(typeof(h.PHONE))'');
    populated_PHONE2_pcnt := AVE(GROUP,IF(h.PHONE2 = (TYPEOF(h.PHONE2))'',0,100));
    maxlength_PHONE2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE2)));
    avelength_PHONE2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE2)),h.PHONE2<>(typeof(h.PHONE2))'');
    populated_FAX_pcnt := AVE(GROUP,IF(h.FAX = (TYPEOF(h.FAX))'',0,100));
    maxlength_FAX := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX)));
    avelength_FAX := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX)),h.FAX<>(typeof(h.FAX))'');
    populated_FAX2_pcnt := AVE(GROUP,IF(h.FAX2 = (TYPEOF(h.FAX2))'',0,100));
    maxlength_FAX2 := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX2)));
    avelength_FAX2 := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX2)),h.FAX2<>(typeof(h.FAX2))'');
    populated_WEBSITE_pcnt := AVE(GROUP,IF(h.WEBSITE = (TYPEOF(h.WEBSITE))'',0,100));
    maxlength_WEBSITE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.WEBSITE)));
    avelength_WEBSITE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.WEBSITE)),h.WEBSITE<>(typeof(h.WEBSITE))'');
    populated_BOOTH_pcnt := AVE(GROUP,IF(h.BOOTH = (TYPEOF(h.BOOTH))'',0,100));
    maxlength_BOOTH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)));
    avelength_BOOTH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH)),h.BOOTH<>(typeof(h.BOOTH))'');
    populated_DESCRIPTION_pcnt := AVE(GROUP,IF(h.DESCRIPTION = (TYPEOF(h.DESCRIPTION))'',0,100));
    maxlength_DESCRIPTION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)));
    avelength_DESCRIPTION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)),h.DESCRIPTION<>(typeof(h.DESCRIPTION))'');
    populated_PR_CONTACT_FIRST_NAME_pcnt := AVE(GROUP,IF(h.PR_CONTACT_FIRST_NAME = (TYPEOF(h.PR_CONTACT_FIRST_NAME))'',0,100));
    maxlength_PR_CONTACT_FIRST_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_FIRST_NAME)));
    avelength_PR_CONTACT_FIRST_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_FIRST_NAME)),h.PR_CONTACT_FIRST_NAME<>(typeof(h.PR_CONTACT_FIRST_NAME))'');
    populated_PR_CONTACT_LAST_NAME_pcnt := AVE(GROUP,IF(h.PR_CONTACT_LAST_NAME = (TYPEOF(h.PR_CONTACT_LAST_NAME))'',0,100));
    maxlength_PR_CONTACT_LAST_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_LAST_NAME)));
    avelength_PR_CONTACT_LAST_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_LAST_NAME)),h.PR_CONTACT_LAST_NAME<>(typeof(h.PR_CONTACT_LAST_NAME))'');
    populated_PR_CONTACT_EMAIL_pcnt := AVE(GROUP,IF(h.PR_CONTACT_EMAIL = (TYPEOF(h.PR_CONTACT_EMAIL))'',0,100));
    maxlength_PR_CONTACT_EMAIL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_EMAIL)));
    avelength_PR_CONTACT_EMAIL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PR_CONTACT_EMAIL)),h.PR_CONTACT_EMAIL<>(typeof(h.PR_CONTACT_EMAIL))'');
    populated_TITLE_pcnt := AVE(GROUP,IF(h.TITLE = (TYPEOF(h.TITLE))'',0,100));
    maxlength_TITLE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TITLE)));
    avelength_TITLE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TITLE)),h.TITLE<>(typeof(h.TITLE))'');
    populated_AUTHOR_pcnt := AVE(GROUP,IF(h.AUTHOR = (TYPEOF(h.AUTHOR))'',0,100));
    maxlength_AUTHOR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.AUTHOR)));
    avelength_AUTHOR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.AUTHOR)),h.AUTHOR<>(typeof(h.AUTHOR))'');
    populated_AUTHOR_EMAIL_pcnt := AVE(GROUP,IF(h.AUTHOR_EMAIL = (TYPEOF(h.AUTHOR_EMAIL))'',0,100));
    maxlength_AUTHOR_EMAIL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.AUTHOR_EMAIL)));
    avelength_AUTHOR_EMAIL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.AUTHOR_EMAIL)),h.AUTHOR_EMAIL<>(typeof(h.AUTHOR_EMAIL))'');
    populated_RELEASE_DATE_pcnt := AVE(GROUP,IF(h.RELEASE_DATE = (TYPEOF(h.RELEASE_DATE))'',0,100));
    maxlength_RELEASE_DATE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RELEASE_DATE)));
    avelength_RELEASE_DATE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RELEASE_DATE)),h.RELEASE_DATE<>(typeof(h.RELEASE_DATE))'');
    populated_FILE_pcnt := AVE(GROUP,IF(h.FILE = (TYPEOF(h.FILE))'',0,100));
    maxlength_FILE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FILE)));
    avelength_FILE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FILE)),h.FILE<>(typeof(h.FILE))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.ID),TRIM((SALT28.StrType)le.EXHIBITOR),TRIM((SALT28.StrType)le.ALTERNATE_NAME),TRIM((SALT28.StrType)le.SORT),TRIM((SALT28.StrType)le.ADDRESS1),TRIM((SALT28.StrType)le.ADDRESS2),TRIM((SALT28.StrType)le.ADDRESS3),TRIM((SALT28.StrType)le.CITY),TRIM((SALT28.StrType)le.STATE),TRIM((SALT28.StrType)le.ZIP),TRIM((SALT28.StrType)le.COUNTRY),TRIM((SALT28.StrType)le.PHONE),TRIM((SALT28.StrType)le.PHONE2),TRIM((SALT28.StrType)le.FAX),TRIM((SALT28.StrType)le.FAX2),TRIM((SALT28.StrType)le.WEBSITE),TRIM((SALT28.StrType)le.BOOTH),TRIM((SALT28.StrType)le.DESCRIPTION),TRIM((SALT28.StrType)le.PR_CONTACT_FIRST_NAME),TRIM((SALT28.StrType)le.PR_CONTACT_LAST_NAME),TRIM((SALT28.StrType)le.PR_CONTACT_EMAIL),TRIM((SALT28.StrType)le.TITLE),TRIM((SALT28.StrType)le.AUTHOR),TRIM((SALT28.StrType)le.AUTHOR_EMAIL),TRIM((SALT28.StrType)le.RELEASE_DATE),TRIM((SALT28.StrType)le.FILE)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,28,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'ID'}
      ,{4,'EXHIBITOR'}
      ,{5,'ALTERNATE_NAME'}
      ,{6,'SORT'}
      ,{7,'ADDRESS1'}
      ,{8,'ADDRESS2'}
      ,{9,'ADDRESS3'}
      ,{10,'CITY'}
      ,{11,'STATE'}
      ,{12,'ZIP'}
      ,{13,'COUNTRY'}
      ,{14,'PHONE'}
      ,{15,'PHONE2'}
      ,{16,'FAX'}
      ,{17,'FAX2'}
      ,{18,'WEBSITE'}
      ,{19,'BOOTH'}
      ,{20,'DESCRIPTION'}
      ,{21,'PR_CONTACT_FIRST_NAME'}
      ,{22,'PR_CONTACT_LAST_NAME'}
      ,{23,'PR_CONTACT_EMAIL'}
      ,{24,'TITLE'}
      ,{25,'AUTHOR'}
      ,{26,'AUTHOR_EMAIL'}
      ,{27,'RELEASE_DATE'}
      ,{28,'FILE'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_ID((SALT28.StrType)le.ID),
    Fields.InValid_EXHIBITOR((SALT28.StrType)le.EXHIBITOR),
    Fields.InValid_ALTERNATE_NAME((SALT28.StrType)le.ALTERNATE_NAME),
    Fields.InValid_SORT((SALT28.StrType)le.SORT),
    Fields.InValid_ADDRESS1((SALT28.StrType)le.ADDRESS1),
    Fields.InValid_ADDRESS2((SALT28.StrType)le.ADDRESS2),
    Fields.InValid_ADDRESS3((SALT28.StrType)le.ADDRESS3),
    Fields.InValid_CITY((SALT28.StrType)le.CITY),
    Fields.InValid_STATE((SALT28.StrType)le.STATE),
    Fields.InValid_ZIP((SALT28.StrType)le.ZIP),
    Fields.InValid_COUNTRY((SALT28.StrType)le.COUNTRY),
    Fields.InValid_PHONE((SALT28.StrType)le.PHONE),
    Fields.InValid_PHONE2((SALT28.StrType)le.PHONE2),
    Fields.InValid_FAX((SALT28.StrType)le.FAX),
    Fields.InValid_FAX2((SALT28.StrType)le.FAX2),
    Fields.InValid_WEBSITE((SALT28.StrType)le.WEBSITE),
    Fields.InValid_BOOTH((SALT28.StrType)le.BOOTH),
    Fields.InValid_DESCRIPTION((SALT28.StrType)le.DESCRIPTION),
    Fields.InValid_PR_CONTACT_FIRST_NAME((SALT28.StrType)le.PR_CONTACT_FIRST_NAME),
    Fields.InValid_PR_CONTACT_LAST_NAME((SALT28.StrType)le.PR_CONTACT_LAST_NAME),
    Fields.InValid_PR_CONTACT_EMAIL((SALT28.StrType)le.PR_CONTACT_EMAIL),
    Fields.InValid_TITLE((SALT28.StrType)le.TITLE),
    Fields.InValid_AUTHOR((SALT28.StrType)le.AUTHOR),
    Fields.InValid_AUTHOR_EMAIL((SALT28.StrType)le.AUTHOR_EMAIL),
    Fields.InValid_RELEASE_DATE((SALT28.StrType)le.RELEASE_DATE),
    Fields.InValid_FILE((SALT28.StrType)le.FILE),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,28,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_ID(TotalErrors.ErrorNum),Fields.InValidMessage_EXHIBITOR(TotalErrors.ErrorNum),Fields.InValidMessage_ALTERNATE_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_SORT(TotalErrors.ErrorNum),Fields.InValidMessage_ADDRESS1(TotalErrors.ErrorNum),Fields.InValidMessage_ADDRESS2(TotalErrors.ErrorNum),Fields.InValidMessage_ADDRESS3(TotalErrors.ErrorNum),Fields.InValidMessage_CITY(TotalErrors.ErrorNum),Fields.InValidMessage_STATE(TotalErrors.ErrorNum),Fields.InValidMessage_ZIP(TotalErrors.ErrorNum),Fields.InValidMessage_COUNTRY(TotalErrors.ErrorNum),Fields.InValidMessage_PHONE(TotalErrors.ErrorNum),Fields.InValidMessage_PHONE2(TotalErrors.ErrorNum),Fields.InValidMessage_FAX(TotalErrors.ErrorNum),Fields.InValidMessage_FAX2(TotalErrors.ErrorNum),Fields.InValidMessage_WEBSITE(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH(TotalErrors.ErrorNum),Fields.InValidMessage_DESCRIPTION(TotalErrors.ErrorNum),Fields.InValidMessage_PR_CONTACT_FIRST_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_PR_CONTACT_LAST_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_PR_CONTACT_EMAIL(TotalErrors.ErrorNum),Fields.InValidMessage_TITLE(TotalErrors.ErrorNum),Fields.InValidMessage_AUTHOR(TotalErrors.ErrorNum),Fields.InValidMessage_AUTHOR_EMAIL(TotalErrors.ErrorNum),Fields.InValidMessage_RELEASE_DATE(TotalErrors.ErrorNum),Fields.InValidMessage_FILE(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
