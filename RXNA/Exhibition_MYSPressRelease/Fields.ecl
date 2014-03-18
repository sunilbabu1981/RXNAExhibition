IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','ID','EXHIBITOR','ALTERNATE_NAME','SORT','ADDRESS1','ADDRESS2','ADDRESS3','CITY','STATE','ZIP','COUNTRY','PHONE','PHONE2','FAX','FAX2','WEBSITE','BOOTH','DESCRIPTION','PR_CONTACT_FIRST_NAME','PR_CONTACT_LAST_NAME','PR_CONTACT_EMAIL','TITLE','AUTHOR','AUTHOR_EMAIL','RELEASE_DATE','FILE');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'ID' => 3,'EXHIBITOR' => 4,'ALTERNATE_NAME' => 5,'SORT' => 6,'ADDRESS1' => 7,'ADDRESS2' => 8,'ADDRESS3' => 9,'CITY' => 10,'STATE' => 11,'ZIP' => 12,'COUNTRY' => 13,'PHONE' => 14,'PHONE2' => 15,'FAX' => 16,'FAX2' => 17,'WEBSITE' => 18,'BOOTH' => 19,'DESCRIPTION' => 20,'PR_CONTACT_FIRST_NAME' => 21,'PR_CONTACT_LAST_NAME' => 22,'PR_CONTACT_EMAIL' => 23,'TITLE' => 24,'AUTHOR' => 25,'AUTHOR_EMAIL' => 26,'RELEASE_DATE' => 27,'FILE' => 28,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_ID(SALT28.StrType s0) := s0;
EXPORT InValid_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ID(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR(UNSIGNED1 wh) := '';
EXPORT Make_ALTERNATE_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_ALTERNATE_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ALTERNATE_NAME(UNSIGNED1 wh) := '';
EXPORT Make_SORT(SALT28.StrType s0) := s0;
EXPORT InValid_SORT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SORT(UNSIGNED1 wh) := '';
EXPORT Make_ADDRESS1(SALT28.StrType s0) := s0;
EXPORT InValid_ADDRESS1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ADDRESS1(UNSIGNED1 wh) := '';
EXPORT Make_ADDRESS2(SALT28.StrType s0) := s0;
EXPORT InValid_ADDRESS2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ADDRESS2(UNSIGNED1 wh) := '';
EXPORT Make_ADDRESS3(SALT28.StrType s0) := s0;
EXPORT InValid_ADDRESS3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ADDRESS3(UNSIGNED1 wh) := '';
EXPORT Make_CITY(SALT28.StrType s0) := s0;
EXPORT InValid_CITY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CITY(UNSIGNED1 wh) := '';
EXPORT Make_STATE(SALT28.StrType s0) := s0;
EXPORT InValid_STATE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_STATE(UNSIGNED1 wh) := '';
EXPORT Make_ZIP(SALT28.StrType s0) := s0;
EXPORT InValid_ZIP(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ZIP(UNSIGNED1 wh) := '';
EXPORT Make_COUNTRY(SALT28.StrType s0) := s0;
EXPORT InValid_COUNTRY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COUNTRY(UNSIGNED1 wh) := '';
EXPORT Make_PHONE(SALT28.StrType s0) := s0;
EXPORT InValid_PHONE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PHONE(UNSIGNED1 wh) := '';
EXPORT Make_PHONE2(SALT28.StrType s0) := s0;
EXPORT InValid_PHONE2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PHONE2(UNSIGNED1 wh) := '';
EXPORT Make_FAX(SALT28.StrType s0) := s0;
EXPORT InValid_FAX(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FAX(UNSIGNED1 wh) := '';
EXPORT Make_FAX2(SALT28.StrType s0) := s0;
EXPORT InValid_FAX2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FAX2(UNSIGNED1 wh) := '';
EXPORT Make_WEBSITE(SALT28.StrType s0) := s0;
EXPORT InValid_WEBSITE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_WEBSITE(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH(UNSIGNED1 wh) := '';
EXPORT Make_DESCRIPTION(SALT28.StrType s0) := s0;
EXPORT InValid_DESCRIPTION(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DESCRIPTION(UNSIGNED1 wh) := '';
EXPORT Make_PR_CONTACT_FIRST_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_PR_CONTACT_FIRST_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PR_CONTACT_FIRST_NAME(UNSIGNED1 wh) := '';
EXPORT Make_PR_CONTACT_LAST_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_PR_CONTACT_LAST_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PR_CONTACT_LAST_NAME(UNSIGNED1 wh) := '';
EXPORT Make_PR_CONTACT_EMAIL(SALT28.StrType s0) := s0;
EXPORT InValid_PR_CONTACT_EMAIL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PR_CONTACT_EMAIL(UNSIGNED1 wh) := '';
EXPORT Make_TITLE(SALT28.StrType s0) := s0;
EXPORT InValid_TITLE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TITLE(UNSIGNED1 wh) := '';
EXPORT Make_AUTHOR(SALT28.StrType s0) := s0;
EXPORT InValid_AUTHOR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_AUTHOR(UNSIGNED1 wh) := '';
EXPORT Make_AUTHOR_EMAIL(SALT28.StrType s0) := s0;
EXPORT InValid_AUTHOR_EMAIL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_AUTHOR_EMAIL(UNSIGNED1 wh) := '';
EXPORT Make_RELEASE_DATE(SALT28.StrType s0) := s0;
EXPORT InValid_RELEASE_DATE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_RELEASE_DATE(UNSIGNED1 wh) := '';
EXPORT Make_FILE(SALT28.StrType s0) := s0;
EXPORT InValid_FILE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FILE(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSPressRelease;
//Find those highly occuring pivot values to remove them from consideration
#uniquename(tr)
  %tr% := table(in_left+in_right,{ val := pivot_exp; });
#uniquename(r1)
  %r1% := record
    %tr%.val;    unsigned Cnt := COUNT(GROUP);
  end;
#uniquename(t1)
  %t1% := table(%tr%,%r1%,val,local); // Pre-aggregate before distribute
#uniquename(r2)
  %r2% := record
    %t1%.val;    unsigned Cnt := SUM(GROUP,%t1%.Cnt);
  end;
#uniquename(t2)
  %t2% := table(%t1%,%r2%,val); // Now do global aggregate
Bad_Pivots := %t2%(Cnt>100);
#uniquename(dl)
  %dl% := RECORD
    BOOLEAN Diff_Event;
    BOOLEAN Diff_Edition;
    BOOLEAN Diff_ID;
    BOOLEAN Diff_EXHIBITOR;
    BOOLEAN Diff_ALTERNATE_NAME;
    BOOLEAN Diff_SORT;
    BOOLEAN Diff_ADDRESS1;
    BOOLEAN Diff_ADDRESS2;
    BOOLEAN Diff_ADDRESS3;
    BOOLEAN Diff_CITY;
    BOOLEAN Diff_STATE;
    BOOLEAN Diff_ZIP;
    BOOLEAN Diff_COUNTRY;
    BOOLEAN Diff_PHONE;
    BOOLEAN Diff_PHONE2;
    BOOLEAN Diff_FAX;
    BOOLEAN Diff_FAX2;
    BOOLEAN Diff_WEBSITE;
    BOOLEAN Diff_BOOTH;
    BOOLEAN Diff_DESCRIPTION;
    BOOLEAN Diff_PR_CONTACT_FIRST_NAME;
    BOOLEAN Diff_PR_CONTACT_LAST_NAME;
    BOOLEAN Diff_PR_CONTACT_EMAIL;
    BOOLEAN Diff_TITLE;
    BOOLEAN Diff_AUTHOR;
    BOOLEAN Diff_AUTHOR_EMAIL;
    BOOLEAN Diff_RELEASE_DATE;
    BOOLEAN Diff_FILE;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_ID := le.ID <> ri.ID;
    SELF.Diff_EXHIBITOR := le.EXHIBITOR <> ri.EXHIBITOR;
    SELF.Diff_ALTERNATE_NAME := le.ALTERNATE_NAME <> ri.ALTERNATE_NAME;
    SELF.Diff_SORT := le.SORT <> ri.SORT;
    SELF.Diff_ADDRESS1 := le.ADDRESS1 <> ri.ADDRESS1;
    SELF.Diff_ADDRESS2 := le.ADDRESS2 <> ri.ADDRESS2;
    SELF.Diff_ADDRESS3 := le.ADDRESS3 <> ri.ADDRESS3;
    SELF.Diff_CITY := le.CITY <> ri.CITY;
    SELF.Diff_STATE := le.STATE <> ri.STATE;
    SELF.Diff_ZIP := le.ZIP <> ri.ZIP;
    SELF.Diff_COUNTRY := le.COUNTRY <> ri.COUNTRY;
    SELF.Diff_PHONE := le.PHONE <> ri.PHONE;
    SELF.Diff_PHONE2 := le.PHONE2 <> ri.PHONE2;
    SELF.Diff_FAX := le.FAX <> ri.FAX;
    SELF.Diff_FAX2 := le.FAX2 <> ri.FAX2;
    SELF.Diff_WEBSITE := le.WEBSITE <> ri.WEBSITE;
    SELF.Diff_BOOTH := le.BOOTH <> ri.BOOTH;
    SELF.Diff_DESCRIPTION := le.DESCRIPTION <> ri.DESCRIPTION;
    SELF.Diff_PR_CONTACT_FIRST_NAME := le.PR_CONTACT_FIRST_NAME <> ri.PR_CONTACT_FIRST_NAME;
    SELF.Diff_PR_CONTACT_LAST_NAME := le.PR_CONTACT_LAST_NAME <> ri.PR_CONTACT_LAST_NAME;
    SELF.Diff_PR_CONTACT_EMAIL := le.PR_CONTACT_EMAIL <> ri.PR_CONTACT_EMAIL;
    SELF.Diff_TITLE := le.TITLE <> ri.TITLE;
    SELF.Diff_AUTHOR := le.AUTHOR <> ri.AUTHOR;
    SELF.Diff_AUTHOR_EMAIL := le.AUTHOR_EMAIL <> ri.AUTHOR_EMAIL;
    SELF.Diff_RELEASE_DATE := le.RELEASE_DATE <> ri.RELEASE_DATE;
    SELF.Diff_FILE := le.FILE <> ri.FILE;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_ID,1,0)+ IF( SELF.Diff_EXHIBITOR,1,0)+ IF( SELF.Diff_ALTERNATE_NAME,1,0)+ IF( SELF.Diff_SORT,1,0)+ IF( SELF.Diff_ADDRESS1,1,0)+ IF( SELF.Diff_ADDRESS2,1,0)+ IF( SELF.Diff_ADDRESS3,1,0)+ IF( SELF.Diff_CITY,1,0)+ IF( SELF.Diff_STATE,1,0)+ IF( SELF.Diff_ZIP,1,0)+ IF( SELF.Diff_COUNTRY,1,0)+ IF( SELF.Diff_PHONE,1,0)+ IF( SELF.Diff_PHONE2,1,0)+ IF( SELF.Diff_FAX,1,0)+ IF( SELF.Diff_FAX2,1,0)+ IF( SELF.Diff_WEBSITE,1,0)+ IF( SELF.Diff_BOOTH,1,0)+ IF( SELF.Diff_DESCRIPTION,1,0)+ IF( SELF.Diff_PR_CONTACT_FIRST_NAME,1,0)+ IF( SELF.Diff_PR_CONTACT_LAST_NAME,1,0)+ IF( SELF.Diff_PR_CONTACT_EMAIL,1,0)+ IF( SELF.Diff_TITLE,1,0)+ IF( SELF.Diff_AUTHOR,1,0)+ IF( SELF.Diff_AUTHOR_EMAIL,1,0)+ IF( SELF.Diff_RELEASE_DATE,1,0)+ IF( SELF.Diff_FILE,1,0);
  END;
// Now need to remove bad pivots from comparison
#uniquename(L)
  %L% := JOIN(in_left,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(R)
  %R% := JOIN(in_right,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(DiffL)
  %DiffL% := JOIN(%L%,%R%,evaluate(left,pivot_exp)=evaluate(right,pivot_exp),%fd%(left,right),hash);
#uniquename(Closest)
  %Closest% := DEDUP(SORT(%DiffL%,Val,Num_Diffs,local),Val,local); // Join will have distributed by pivot_exp
#uniquename(AggRec)
  %AggRec% := RECORD
    Count_Diff_Event := COUNT(GROUP,%Closest%.Diff_Event);
    Count_Diff_Edition := COUNT(GROUP,%Closest%.Diff_Edition);
    Count_Diff_ID := COUNT(GROUP,%Closest%.Diff_ID);
    Count_Diff_EXHIBITOR := COUNT(GROUP,%Closest%.Diff_EXHIBITOR);
    Count_Diff_ALTERNATE_NAME := COUNT(GROUP,%Closest%.Diff_ALTERNATE_NAME);
    Count_Diff_SORT := COUNT(GROUP,%Closest%.Diff_SORT);
    Count_Diff_ADDRESS1 := COUNT(GROUP,%Closest%.Diff_ADDRESS1);
    Count_Diff_ADDRESS2 := COUNT(GROUP,%Closest%.Diff_ADDRESS2);
    Count_Diff_ADDRESS3 := COUNT(GROUP,%Closest%.Diff_ADDRESS3);
    Count_Diff_CITY := COUNT(GROUP,%Closest%.Diff_CITY);
    Count_Diff_STATE := COUNT(GROUP,%Closest%.Diff_STATE);
    Count_Diff_ZIP := COUNT(GROUP,%Closest%.Diff_ZIP);
    Count_Diff_COUNTRY := COUNT(GROUP,%Closest%.Diff_COUNTRY);
    Count_Diff_PHONE := COUNT(GROUP,%Closest%.Diff_PHONE);
    Count_Diff_PHONE2 := COUNT(GROUP,%Closest%.Diff_PHONE2);
    Count_Diff_FAX := COUNT(GROUP,%Closest%.Diff_FAX);
    Count_Diff_FAX2 := COUNT(GROUP,%Closest%.Diff_FAX2);
    Count_Diff_WEBSITE := COUNT(GROUP,%Closest%.Diff_WEBSITE);
    Count_Diff_BOOTH := COUNT(GROUP,%Closest%.Diff_BOOTH);
    Count_Diff_DESCRIPTION := COUNT(GROUP,%Closest%.Diff_DESCRIPTION);
    Count_Diff_PR_CONTACT_FIRST_NAME := COUNT(GROUP,%Closest%.Diff_PR_CONTACT_FIRST_NAME);
    Count_Diff_PR_CONTACT_LAST_NAME := COUNT(GROUP,%Closest%.Diff_PR_CONTACT_LAST_NAME);
    Count_Diff_PR_CONTACT_EMAIL := COUNT(GROUP,%Closest%.Diff_PR_CONTACT_EMAIL);
    Count_Diff_TITLE := COUNT(GROUP,%Closest%.Diff_TITLE);
    Count_Diff_AUTHOR := COUNT(GROUP,%Closest%.Diff_AUTHOR);
    Count_Diff_AUTHOR_EMAIL := COUNT(GROUP,%Closest%.Diff_AUTHOR_EMAIL);
    Count_Diff_RELEASE_DATE := COUNT(GROUP,%Closest%.Diff_RELEASE_DATE);
    Count_Diff_FILE := COUNT(GROUP,%Closest%.Diff_FILE);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
