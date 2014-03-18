import ut,SALT28;
export hygiene(dataset(layout_CEContact) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_KEY_pcnt := AVE(GROUP,IF(h.KEY = (TYPEOF(h.KEY))'',0,100));
    maxlength_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)));
    avelength_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEY)),h.KEY<>(typeof(h.KEY))'');
    populated_CE_SHOW_KEY_pcnt := AVE(GROUP,IF(h.CE_SHOW_KEY = (TYPEOF(h.CE_SHOW_KEY))'',0,100));
    maxlength_CE_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)));
    avelength_CE_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_SHOW_KEY)),h.CE_SHOW_KEY<>(typeof(h.CE_SHOW_KEY))'');
    populated_CE_BOOTH_KEY_pcnt := AVE(GROUP,IF(h.CE_BOOTH_KEY = (TYPEOF(h.CE_BOOTH_KEY))'',0,100));
    maxlength_CE_BOOTH_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_BOOTH_KEY)));
    avelength_CE_BOOTH_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_BOOTH_KEY)),h.CE_BOOTH_KEY<>(typeof(h.CE_BOOTH_KEY))'');
    populated_CE_CUSTOMER_KEY_pcnt := AVE(GROUP,IF(h.CE_CUSTOMER_KEY = (TYPEOF(h.CE_CUSTOMER_KEY))'',0,100));
    maxlength_CE_CUSTOMER_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_CUSTOMER_KEY)));
    avelength_CE_CUSTOMER_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CE_CUSTOMER_KEY)),h.CE_CUSTOMER_KEY<>(typeof(h.CE_CUSTOMER_KEY))'');
    populated_FIRST_NAME_pcnt := AVE(GROUP,IF(h.FIRST_NAME = (TYPEOF(h.FIRST_NAME))'',0,100));
    maxlength_FIRST_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FIRST_NAME)));
    avelength_FIRST_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FIRST_NAME)),h.FIRST_NAME<>(typeof(h.FIRST_NAME))'');
    populated_LAST_NAME_pcnt := AVE(GROUP,IF(h.LAST_NAME = (TYPEOF(h.LAST_NAME))'',0,100));
    maxlength_LAST_NAME := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_NAME)));
    avelength_LAST_NAME := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_NAME)),h.LAST_NAME<>(typeof(h.LAST_NAME))'');
    populated_PHONE_pcnt := AVE(GROUP,IF(h.PHONE = (TYPEOF(h.PHONE))'',0,100));
    maxlength_PHONE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE)));
    avelength_PHONE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PHONE)),h.PHONE<>(typeof(h.PHONE))'');
    populated_FAX_pcnt := AVE(GROUP,IF(h.FAX = (TYPEOF(h.FAX))'',0,100));
    maxlength_FAX := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX)));
    avelength_FAX := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FAX)),h.FAX<>(typeof(h.FAX))'');
    populated_MOBILE_pcnt := AVE(GROUP,IF(h.MOBILE = (TYPEOF(h.MOBILE))'',0,100));
    maxlength_MOBILE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MOBILE)));
    avelength_MOBILE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MOBILE)),h.MOBILE<>(typeof(h.MOBILE))'');
    populated_EMAIL_pcnt := AVE(GROUP,IF(h.EMAIL = (TYPEOF(h.EMAIL))'',0,100));
    maxlength_EMAIL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)));
    avelength_EMAIL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL)),h.EMAIL<>(typeof(h.EMAIL))'');
    populated_SMS_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.SMS_NOTIFY_IND = (TYPEOF(h.SMS_NOTIFY_IND))'',0,100));
    maxlength_SMS_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SMS_NOTIFY_IND)));
    avelength_SMS_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SMS_NOTIFY_IND)),h.SMS_NOTIFY_IND<>(typeof(h.SMS_NOTIFY_IND))'');
    populated_EMAIL_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.EMAIL_NOTIFY_IND = (TYPEOF(h.EMAIL_NOTIFY_IND))'',0,100));
    maxlength_EMAIL_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL_NOTIFY_IND)));
    avelength_EMAIL_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMAIL_NOTIFY_IND)),h.EMAIL_NOTIFY_IND<>(typeof(h.EMAIL_NOTIFY_IND))'');
    populated_CREATED_DT_pcnt := AVE(GROUP,IF(h.CREATED_DT = (TYPEOF(h.CREATED_DT))'',0,100));
    maxlength_CREATED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)));
    avelength_CREATED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_DT)),h.CREATED_DT<>(typeof(h.CREATED_DT))'');
    populated_CREATED_BY_pcnt := AVE(GROUP,IF(h.CREATED_BY = (TYPEOF(h.CREATED_BY))'',0,100));
    maxlength_CREATED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_BY)));
    avelength_CREATED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREATED_BY)),h.CREATED_BY<>(typeof(h.CREATED_BY))'');
    populated_UPDATED_DT_pcnt := AVE(GROUP,IF(h.UPDATED_DT = (TYPEOF(h.UPDATED_DT))'',0,100));
    maxlength_UPDATED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_DT)));
    avelength_UPDATED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_DT)),h.UPDATED_DT<>(typeof(h.UPDATED_DT))'');
    populated_UPDATED_BY_pcnt := AVE(GROUP,IF(h.UPDATED_BY = (TYPEOF(h.UPDATED_BY))'',0,100));
    maxlength_UPDATED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_BY)));
    avelength_UPDATED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UPDATED_BY)),h.UPDATED_BY<>(typeof(h.UPDATED_BY))'');
    populated_PRIMARY_IND_pcnt := AVE(GROUP,IF(h.PRIMARY_IND = (TYPEOF(h.PRIMARY_IND))'',0,100));
    maxlength_PRIMARY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRIMARY_IND)));
    avelength_PRIMARY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRIMARY_IND)),h.PRIMARY_IND<>(typeof(h.PRIMARY_IND))'');
    populated_ADV_FREIGHT_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.ADV_FREIGHT_NOTIFY_IND = (TYPEOF(h.ADV_FREIGHT_NOTIFY_IND))'',0,100));
    maxlength_ADV_FREIGHT_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADV_FREIGHT_NOTIFY_IND)));
    avelength_ADV_FREIGHT_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ADV_FREIGHT_NOTIFY_IND)),h.ADV_FREIGHT_NOTIFY_IND<>(typeof(h.ADV_FREIGHT_NOTIFY_IND))'');
    populated_M_YARD_ARRIVAL_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.M_YARD_ARRIVAL_NOTIFY_IND = (TYPEOF(h.M_YARD_ARRIVAL_NOTIFY_IND))'',0,100));
    maxlength_M_YARD_ARRIVAL_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.M_YARD_ARRIVAL_NOTIFY_IND)));
    avelength_M_YARD_ARRIVAL_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.M_YARD_ARRIVAL_NOTIFY_IND)),h.M_YARD_ARRIVAL_NOTIFY_IND<>(typeof(h.M_YARD_ARRIVAL_NOTIFY_IND))'');
    populated_OUTBOUND_FREIGHT_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.OUTBOUND_FREIGHT_NOTIFY_IND = (TYPEOF(h.OUTBOUND_FREIGHT_NOTIFY_IND))'',0,100));
    maxlength_OUTBOUND_FREIGHT_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OUTBOUND_FREIGHT_NOTIFY_IND)));
    avelength_OUTBOUND_FREIGHT_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OUTBOUND_FREIGHT_NOTIFY_IND)),h.OUTBOUND_FREIGHT_NOTIFY_IND<>(typeof(h.OUTBOUND_FREIGHT_NOTIFY_IND))'');
    populated_DOCK_ARRIVAL_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.DOCK_ARRIVAL_NOTIFY_IND = (TYPEOF(h.DOCK_ARRIVAL_NOTIFY_IND))'',0,100));
    maxlength_DOCK_ARRIVAL_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DOCK_ARRIVAL_NOTIFY_IND)));
    avelength_DOCK_ARRIVAL_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DOCK_ARRIVAL_NOTIFY_IND)),h.DOCK_ARRIVAL_NOTIFY_IND<>(typeof(h.DOCK_ARRIVAL_NOTIFY_IND))'');
    populated_EMPTIES_AVAIL_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.EMPTIES_AVAIL_NOTIFY_IND = (TYPEOF(h.EMPTIES_AVAIL_NOTIFY_IND))'',0,100));
    maxlength_EMPTIES_AVAIL_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMPTIES_AVAIL_NOTIFY_IND)));
    avelength_EMPTIES_AVAIL_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.EMPTIES_AVAIL_NOTIFY_IND)),h.EMPTIES_AVAIL_NOTIFY_IND<>(typeof(h.EMPTIES_AVAIL_NOTIFY_IND))'');
    populated_PKG_SCANNED_NOTIFY_IND_pcnt := AVE(GROUP,IF(h.PKG_SCANNED_NOTIFY_IND = (TYPEOF(h.PKG_SCANNED_NOTIFY_IND))'',0,100));
    maxlength_PKG_SCANNED_NOTIFY_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PKG_SCANNED_NOTIFY_IND)));
    avelength_PKG_SCANNED_NOTIFY_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PKG_SCANNED_NOTIFY_IND)),h.PKG_SCANNED_NOTIFY_IND<>(typeof(h.PKG_SCANNED_NOTIFY_IND))'');
    populated_SOURCE_pcnt := AVE(GROUP,IF(h.SOURCE = (TYPEOF(h.SOURCE))'',0,100));
    maxlength_SOURCE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE)));
    avelength_SOURCE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SOURCE)),h.SOURCE<>(typeof(h.SOURCE))'');
    populated_ACTION_pcnt := AVE(GROUP,IF(h.ACTION = (TYPEOF(h.ACTION))'',0,100));
    maxlength_ACTION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ACTION)));
    avelength_ACTION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ACTION)),h.ACTION<>(typeof(h.ACTION))'');
    populated_ACTION_TAKEN_IND_pcnt := AVE(GROUP,IF(h.ACTION_TAKEN_IND = (TYPEOF(h.ACTION_TAKEN_IND))'',0,100));
    maxlength_ACTION_TAKEN_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ACTION_TAKEN_IND)));
    avelength_ACTION_TAKEN_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ACTION_TAKEN_IND)),h.ACTION_TAKEN_IND<>(typeof(h.ACTION_TAKEN_IND))'');
    populated_INTL_PHONE_CD_pcnt := AVE(GROUP,IF(h.INTL_PHONE_CD = (TYPEOF(h.INTL_PHONE_CD))'',0,100));
    maxlength_INTL_PHONE_CD := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.INTL_PHONE_CD)));
    avelength_INTL_PHONE_CD := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.INTL_PHONE_CD)),h.INTL_PHONE_CD<>(typeof(h.INTL_PHONE_CD))'');
    populated_INTL_MOBILE_CD_pcnt := AVE(GROUP,IF(h.INTL_MOBILE_CD = (TYPEOF(h.INTL_MOBILE_CD))'',0,100));
    maxlength_INTL_MOBILE_CD := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.INTL_MOBILE_CD)));
    avelength_INTL_MOBILE_CD := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.INTL_MOBILE_CD)),h.INTL_MOBILE_CD<>(typeof(h.INTL_MOBILE_CD))'');
    populated_SMS_NOTIFY_UPDATED_BY_pcnt := AVE(GROUP,IF(h.SMS_NOTIFY_UPDATED_BY = (TYPEOF(h.SMS_NOTIFY_UPDATED_BY))'',0,100));
    maxlength_SMS_NOTIFY_UPDATED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SMS_NOTIFY_UPDATED_BY)));
    avelength_SMS_NOTIFY_UPDATED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SMS_NOTIFY_UPDATED_BY)),h.SMS_NOTIFY_UPDATED_BY<>(typeof(h.SMS_NOTIFY_UPDATED_BY))'');
    populated_ELECTRICAL_HOOKUP_IND_pcnt := AVE(GROUP,IF(h.ELECTRICAL_HOOKUP_IND = (TYPEOF(h.ELECTRICAL_HOOKUP_IND))'',0,100));
    maxlength_ELECTRICAL_HOOKUP_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ELECTRICAL_HOOKUP_IND)));
    avelength_ELECTRICAL_HOOKUP_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ELECTRICAL_HOOKUP_IND)),h.ELECTRICAL_HOOKUP_IND<>(typeof(h.ELECTRICAL_HOOKUP_IND))'');
    populated_TSSBOOTHID_pcnt := AVE(GROUP,IF(h.TSSBOOTHID = (TYPEOF(h.TSSBOOTHID))'',0,100));
    maxlength_TSSBOOTHID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)));
    avelength_TSSBOOTHID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TSSBOOTHID)),h.TSSBOOTHID<>(typeof(h.TSSBOOTHID))'');
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.KEY),TRIM((SALT28.StrType)le.CE_SHOW_KEY),TRIM((SALT28.StrType)le.CE_BOOTH_KEY),TRIM((SALT28.StrType)le.CE_CUSTOMER_KEY),TRIM((SALT28.StrType)le.FIRST_NAME),TRIM((SALT28.StrType)le.LAST_NAME),TRIM((SALT28.StrType)le.PHONE),TRIM((SALT28.StrType)le.FAX),TRIM((SALT28.StrType)le.MOBILE),TRIM((SALT28.StrType)le.EMAIL),TRIM((SALT28.StrType)le.SMS_NOTIFY_IND),TRIM((SALT28.StrType)le.EMAIL_NOTIFY_IND),TRIM((SALT28.StrType)le.CREATED_DT),TRIM((SALT28.StrType)le.CREATED_BY),TRIM((SALT28.StrType)le.UPDATED_DT),TRIM((SALT28.StrType)le.UPDATED_BY),TRIM((SALT28.StrType)le.PRIMARY_IND),TRIM((SALT28.StrType)le.ADV_FREIGHT_NOTIFY_IND),TRIM((SALT28.StrType)le.M_YARD_ARRIVAL_NOTIFY_IND),TRIM((SALT28.StrType)le.OUTBOUND_FREIGHT_NOTIFY_IND),TRIM((SALT28.StrType)le.DOCK_ARRIVAL_NOTIFY_IND),TRIM((SALT28.StrType)le.EMPTIES_AVAIL_NOTIFY_IND),TRIM((SALT28.StrType)le.PKG_SCANNED_NOTIFY_IND),TRIM((SALT28.StrType)le.SOURCE),TRIM((SALT28.StrType)le.ACTION),TRIM((SALT28.StrType)le.ACTION_TAKEN_IND),TRIM((SALT28.StrType)le.INTL_PHONE_CD),TRIM((SALT28.StrType)le.INTL_MOBILE_CD),TRIM((SALT28.StrType)le.SMS_NOTIFY_UPDATED_BY),TRIM((SALT28.StrType)le.ELECTRICAL_HOOKUP_IND),TRIM((SALT28.StrType)le.TSSBOOTHID),TRIM((SALT28.StrType)le.SHOW_KEY)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,32,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'KEY'}
      ,{2,'CE_SHOW_KEY'}
      ,{3,'CE_BOOTH_KEY'}
      ,{4,'CE_CUSTOMER_KEY'}
      ,{5,'FIRST_NAME'}
      ,{6,'LAST_NAME'}
      ,{7,'PHONE'}
      ,{8,'FAX'}
      ,{9,'MOBILE'}
      ,{10,'EMAIL'}
      ,{11,'SMS_NOTIFY_IND'}
      ,{12,'EMAIL_NOTIFY_IND'}
      ,{13,'CREATED_DT'}
      ,{14,'CREATED_BY'}
      ,{15,'UPDATED_DT'}
      ,{16,'UPDATED_BY'}
      ,{17,'PRIMARY_IND'}
      ,{18,'ADV_FREIGHT_NOTIFY_IND'}
      ,{19,'M_YARD_ARRIVAL_NOTIFY_IND'}
      ,{20,'OUTBOUND_FREIGHT_NOTIFY_IND'}
      ,{21,'DOCK_ARRIVAL_NOTIFY_IND'}
      ,{22,'EMPTIES_AVAIL_NOTIFY_IND'}
      ,{23,'PKG_SCANNED_NOTIFY_IND'}
      ,{24,'SOURCE'}
      ,{25,'ACTION'}
      ,{26,'ACTION_TAKEN_IND'}
      ,{27,'INTL_PHONE_CD'}
      ,{28,'INTL_MOBILE_CD'}
      ,{29,'SMS_NOTIFY_UPDATED_BY'}
      ,{30,'ELECTRICAL_HOOKUP_IND'}
      ,{31,'TSSBOOTHID'}
      ,{32,'SHOW_KEY'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_KEY((SALT28.StrType)le.KEY),
    Fields.InValid_CE_SHOW_KEY((SALT28.StrType)le.CE_SHOW_KEY),
    Fields.InValid_CE_BOOTH_KEY((SALT28.StrType)le.CE_BOOTH_KEY),
    Fields.InValid_CE_CUSTOMER_KEY((SALT28.StrType)le.CE_CUSTOMER_KEY),
    Fields.InValid_FIRST_NAME((SALT28.StrType)le.FIRST_NAME),
    Fields.InValid_LAST_NAME((SALT28.StrType)le.LAST_NAME),
    Fields.InValid_PHONE((SALT28.StrType)le.PHONE),
    Fields.InValid_FAX((SALT28.StrType)le.FAX),
    Fields.InValid_MOBILE((SALT28.StrType)le.MOBILE),
    Fields.InValid_EMAIL((SALT28.StrType)le.EMAIL),
    Fields.InValid_SMS_NOTIFY_IND((SALT28.StrType)le.SMS_NOTIFY_IND),
    Fields.InValid_EMAIL_NOTIFY_IND((SALT28.StrType)le.EMAIL_NOTIFY_IND),
    Fields.InValid_CREATED_DT((SALT28.StrType)le.CREATED_DT),
    Fields.InValid_CREATED_BY((SALT28.StrType)le.CREATED_BY),
    Fields.InValid_UPDATED_DT((SALT28.StrType)le.UPDATED_DT),
    Fields.InValid_UPDATED_BY((SALT28.StrType)le.UPDATED_BY),
    Fields.InValid_PRIMARY_IND((SALT28.StrType)le.PRIMARY_IND),
    Fields.InValid_ADV_FREIGHT_NOTIFY_IND((SALT28.StrType)le.ADV_FREIGHT_NOTIFY_IND),
    Fields.InValid_M_YARD_ARRIVAL_NOTIFY_IND((SALT28.StrType)le.M_YARD_ARRIVAL_NOTIFY_IND),
    Fields.InValid_OUTBOUND_FREIGHT_NOTIFY_IND((SALT28.StrType)le.OUTBOUND_FREIGHT_NOTIFY_IND),
    Fields.InValid_DOCK_ARRIVAL_NOTIFY_IND((SALT28.StrType)le.DOCK_ARRIVAL_NOTIFY_IND),
    Fields.InValid_EMPTIES_AVAIL_NOTIFY_IND((SALT28.StrType)le.EMPTIES_AVAIL_NOTIFY_IND),
    Fields.InValid_PKG_SCANNED_NOTIFY_IND((SALT28.StrType)le.PKG_SCANNED_NOTIFY_IND),
    Fields.InValid_SOURCE((SALT28.StrType)le.SOURCE),
    Fields.InValid_ACTION((SALT28.StrType)le.ACTION),
    Fields.InValid_ACTION_TAKEN_IND((SALT28.StrType)le.ACTION_TAKEN_IND),
    Fields.InValid_INTL_PHONE_CD((SALT28.StrType)le.INTL_PHONE_CD),
    Fields.InValid_INTL_MOBILE_CD((SALT28.StrType)le.INTL_MOBILE_CD),
    Fields.InValid_SMS_NOTIFY_UPDATED_BY((SALT28.StrType)le.SMS_NOTIFY_UPDATED_BY),
    Fields.InValid_ELECTRICAL_HOOKUP_IND((SALT28.StrType)le.ELECTRICAL_HOOKUP_IND),
    Fields.InValid_TSSBOOTHID((SALT28.StrType)le.TSSBOOTHID),
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,32,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_BOOTH_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CE_CUSTOMER_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_FIRST_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_LAST_NAME(TotalErrors.ErrorNum),Fields.InValidMessage_PHONE(TotalErrors.ErrorNum),Fields.InValidMessage_FAX(TotalErrors.ErrorNum),Fields.InValidMessage_MOBILE(TotalErrors.ErrorNum),Fields.InValidMessage_EMAIL(TotalErrors.ErrorNum),Fields.InValidMessage_SMS_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_EMAIL_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_CREATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_UPDATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_PRIMARY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_ADV_FREIGHT_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_M_YARD_ARRIVAL_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_OUTBOUND_FREIGHT_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_DOCK_ARRIVAL_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_EMPTIES_AVAIL_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_PKG_SCANNED_NOTIFY_IND(TotalErrors.ErrorNum),Fields.InValidMessage_SOURCE(TotalErrors.ErrorNum),Fields.InValidMessage_ACTION(TotalErrors.ErrorNum),Fields.InValidMessage_ACTION_TAKEN_IND(TotalErrors.ErrorNum),Fields.InValidMessage_INTL_PHONE_CD(TotalErrors.ErrorNum),Fields.InValidMessage_INTL_MOBILE_CD(TotalErrors.ErrorNum),Fields.InValidMessage_SMS_NOTIFY_UPDATED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_ELECTRICAL_HOOKUP_IND(TotalErrors.ErrorNum),Fields.InValidMessage_TSSBOOTHID(TotalErrors.ErrorNum),Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
