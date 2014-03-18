import ut,SALT28;
export hygiene(dataset(layout_MYSExhibitorSummaryStats) h) := MODULE
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
    populated_Exhibitor_pcnt := AVE(GROUP,IF(h.Exhibitor = (TYPEOF(h.Exhibitor))'',0,100));
    maxlength_Exhibitor := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)));
    avelength_Exhibitor := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Exhibitor)),h.Exhibitor<>(typeof(h.Exhibitor))'');
    populated_Package_pcnt := AVE(GROUP,IF(h.Package = (TYPEOF(h.Package))'',0,100));
    maxlength_Package := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Package)));
    avelength_Package := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Package)),h.Package<>(typeof(h.Package))'');
    populated_Views_pcnt := AVE(GROUP,IF(h.Views = (TYPEOF(h.Views))'',0,100));
    maxlength_Views := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Views)));
    avelength_Views := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Views)),h.Views<>(typeof(h.Views))'');
    populated_Links_to_Website_pcnt := AVE(GROUP,IF(h.Links_to_Website = (TYPEOF(h.Links_to_Website))'',0,100));
    maxlength_Links_to_Website := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Links_to_Website)));
    avelength_Links_to_Website := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Links_to_Website)),h.Links_to_Website<>(typeof(h.Links_to_Website))'');
    populated_Added_to_Agenda_pcnt := AVE(GROUP,IF(h.Added_to_Agenda = (TYPEOF(h.Added_to_Agenda))'',0,100));
    maxlength_Added_to_Agenda := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Added_to_Agenda)));
    avelength_Added_to_Agenda := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Added_to_Agenda)),h.Added_to_Agenda<>(typeof(h.Added_to_Agenda))'');
    populated_Shared_Info_pcnt := AVE(GROUP,IF(h.Shared_Info = (TYPEOF(h.Shared_Info))'',0,100));
    maxlength_Shared_Info := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Shared_Info)));
    avelength_Shared_Info := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Shared_Info)),h.Shared_Info<>(typeof(h.Shared_Info))'');
    populated_Emails_pcnt := AVE(GROUP,IF(h.Emails = (TYPEOF(h.Emails))'',0,100));
    maxlength_Emails := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Emails)));
    avelength_Emails := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Emails)),h.Emails<>(typeof(h.Emails))'');
    populated_Banners_pcnt := AVE(GROUP,IF(h.Banners = (TYPEOF(h.Banners))'',0,100));
    maxlength_Banners := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.Banners)));
    avelength_Banners := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.Banners)),h.Banners<>(typeof(h.Banners))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.Event),TRIM((SALT28.StrType)le.Edition),TRIM((SALT28.StrType)le.Exhibitor),TRIM((SALT28.StrType)le.Package),TRIM((SALT28.StrType)le.Views),TRIM((SALT28.StrType)le.Links_to_Website),TRIM((SALT28.StrType)le.Added_to_Agenda),TRIM((SALT28.StrType)le.Shared_Info),TRIM((SALT28.StrType)le.Emails),TRIM((SALT28.StrType)le.Banners)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,10,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'Event'}
      ,{2,'Edition'}
      ,{3,'Exhibitor'}
      ,{4,'Package'}
      ,{5,'Views'}
      ,{6,'Links_to_Website'}
      ,{7,'Added_to_Agenda'}
      ,{8,'Shared_Info'}
      ,{9,'Emails'}
      ,{10,'Banners'}],SALT28.MAC_Character_Counts.Field_Identification);
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
    Fields.InValid_Exhibitor((SALT28.StrType)le.Exhibitor),
    Fields.InValid_Package((SALT28.StrType)le.Package),
    Fields.InValid_Views((SALT28.StrType)le.Views),
    Fields.InValid_Links_to_Website((SALT28.StrType)le.Links_to_Website),
    Fields.InValid_Added_to_Agenda((SALT28.StrType)le.Added_to_Agenda),
    Fields.InValid_Shared_Info((SALT28.StrType)le.Shared_Info),
    Fields.InValid_Emails((SALT28.StrType)le.Emails),
    Fields.InValid_Banners((SALT28.StrType)le.Banners),
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
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_Event(TotalErrors.ErrorNum),Fields.InValidMessage_Edition(TotalErrors.ErrorNum),Fields.InValidMessage_Exhibitor(TotalErrors.ErrorNum),Fields.InValidMessage_Package(TotalErrors.ErrorNum),Fields.InValidMessage_Views(TotalErrors.ErrorNum),Fields.InValidMessage_Links_to_Website(TotalErrors.ErrorNum),Fields.InValidMessage_Added_to_Agenda(TotalErrors.ErrorNum),Fields.InValidMessage_Shared_Info(TotalErrors.ErrorNum),Fields.InValidMessage_Emails(TotalErrors.ErrorNum),Fields.InValidMessage_Banners(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
