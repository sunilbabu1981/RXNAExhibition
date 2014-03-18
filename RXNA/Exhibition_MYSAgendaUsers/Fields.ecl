IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','DATEINSERTED','FULLNAME','COMPANY','EMAIL','CITY','STATE','COUNTRY','PASSWORD','EXHCOUNT','TIMESON','LASTON','ALLOWEXHCONTACT','EXHNAME','ITEMCOUNT','SPEAKERCOUNT','ITEMS','SPEAKERS');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'DATEINSERTED' => 3,'FULLNAME' => 4,'COMPANY' => 5,'EMAIL' => 6,'CITY' => 7,'STATE' => 8,'COUNTRY' => 9,'PASSWORD' => 10,'EXHCOUNT' => 11,'TIMESON' => 12,'LASTON' => 13,'ALLOWEXHCONTACT' => 14,'EXHNAME' => 15,'ITEMCOUNT' => 16,'SPEAKERCOUNT' => 17,'ITEMS' => 18,'SPEAKERS' => 19,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_DATEINSERTED(SALT28.StrType s0) := s0;
EXPORT InValid_DATEINSERTED(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DATEINSERTED(UNSIGNED1 wh) := '';
EXPORT Make_FULLNAME(SALT28.StrType s0) := s0;
EXPORT InValid_FULLNAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FULLNAME(UNSIGNED1 wh) := '';
EXPORT Make_COMPANY(SALT28.StrType s0) := s0;
EXPORT InValid_COMPANY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COMPANY(UNSIGNED1 wh) := '';
EXPORT Make_EMAIL(SALT28.StrType s0) := s0;
EXPORT InValid_EMAIL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EMAIL(UNSIGNED1 wh) := '';
EXPORT Make_CITY(SALT28.StrType s0) := s0;
EXPORT InValid_CITY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CITY(UNSIGNED1 wh) := '';
EXPORT Make_STATE(SALT28.StrType s0) := s0;
EXPORT InValid_STATE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_STATE(UNSIGNED1 wh) := '';
EXPORT Make_COUNTRY(SALT28.StrType s0) := s0;
EXPORT InValid_COUNTRY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COUNTRY(UNSIGNED1 wh) := '';
EXPORT Make_PASSWORD(SALT28.StrType s0) := s0;
EXPORT InValid_PASSWORD(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PASSWORD(UNSIGNED1 wh) := '';
EXPORT Make_EXHCOUNT(SALT28.StrType s0) := s0;
EXPORT InValid_EXHCOUNT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHCOUNT(UNSIGNED1 wh) := '';
EXPORT Make_TIMESON(SALT28.StrType s0) := s0;
EXPORT InValid_TIMESON(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TIMESON(UNSIGNED1 wh) := '';
EXPORT Make_LASTON(SALT28.StrType s0) := s0;
EXPORT InValid_LASTON(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LASTON(UNSIGNED1 wh) := '';
EXPORT Make_ALLOWEXHCONTACT(SALT28.StrType s0) := s0;
EXPORT InValid_ALLOWEXHCONTACT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ALLOWEXHCONTACT(UNSIGNED1 wh) := '';
EXPORT Make_EXHNAME(SALT28.StrType s0) := s0;
EXPORT InValid_EXHNAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHNAME(UNSIGNED1 wh) := '';
EXPORT Make_ITEMCOUNT(SALT28.StrType s0) := s0;
EXPORT InValid_ITEMCOUNT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ITEMCOUNT(UNSIGNED1 wh) := '';
EXPORT Make_SPEAKERCOUNT(SALT28.StrType s0) := s0;
EXPORT InValid_SPEAKERCOUNT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SPEAKERCOUNT(UNSIGNED1 wh) := '';
EXPORT Make_ITEMS(SALT28.StrType s0) := s0;
EXPORT InValid_ITEMS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ITEMS(UNSIGNED1 wh) := '';
EXPORT Make_SPEAKERS(SALT28.StrType s0) := s0;
EXPORT InValid_SPEAKERS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SPEAKERS(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSAgendaUsers;
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
    BOOLEAN Diff_DATEINSERTED;
    BOOLEAN Diff_FULLNAME;
    BOOLEAN Diff_COMPANY;
    BOOLEAN Diff_EMAIL;
    BOOLEAN Diff_CITY;
    BOOLEAN Diff_STATE;
    BOOLEAN Diff_COUNTRY;
    BOOLEAN Diff_PASSWORD;
    BOOLEAN Diff_EXHCOUNT;
    BOOLEAN Diff_TIMESON;
    BOOLEAN Diff_LASTON;
    BOOLEAN Diff_ALLOWEXHCONTACT;
    BOOLEAN Diff_EXHNAME;
    BOOLEAN Diff_ITEMCOUNT;
    BOOLEAN Diff_SPEAKERCOUNT;
    BOOLEAN Diff_ITEMS;
    BOOLEAN Diff_SPEAKERS;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_DATEINSERTED := le.DATEINSERTED <> ri.DATEINSERTED;
    SELF.Diff_FULLNAME := le.FULLNAME <> ri.FULLNAME;
    SELF.Diff_COMPANY := le.COMPANY <> ri.COMPANY;
    SELF.Diff_EMAIL := le.EMAIL <> ri.EMAIL;
    SELF.Diff_CITY := le.CITY <> ri.CITY;
    SELF.Diff_STATE := le.STATE <> ri.STATE;
    SELF.Diff_COUNTRY := le.COUNTRY <> ri.COUNTRY;
    SELF.Diff_PASSWORD := le.PASSWORD <> ri.PASSWORD;
    SELF.Diff_EXHCOUNT := le.EXHCOUNT <> ri.EXHCOUNT;
    SELF.Diff_TIMESON := le.TIMESON <> ri.TIMESON;
    SELF.Diff_LASTON := le.LASTON <> ri.LASTON;
    SELF.Diff_ALLOWEXHCONTACT := le.ALLOWEXHCONTACT <> ri.ALLOWEXHCONTACT;
    SELF.Diff_EXHNAME := le.EXHNAME <> ri.EXHNAME;
    SELF.Diff_ITEMCOUNT := le.ITEMCOUNT <> ri.ITEMCOUNT;
    SELF.Diff_SPEAKERCOUNT := le.SPEAKERCOUNT <> ri.SPEAKERCOUNT;
    SELF.Diff_ITEMS := le.ITEMS <> ri.ITEMS;
    SELF.Diff_SPEAKERS := le.SPEAKERS <> ri.SPEAKERS;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_DATEINSERTED,1,0)+ IF( SELF.Diff_FULLNAME,1,0)+ IF( SELF.Diff_COMPANY,1,0)+ IF( SELF.Diff_EMAIL,1,0)+ IF( SELF.Diff_CITY,1,0)+ IF( SELF.Diff_STATE,1,0)+ IF( SELF.Diff_COUNTRY,1,0)+ IF( SELF.Diff_PASSWORD,1,0)+ IF( SELF.Diff_EXHCOUNT,1,0)+ IF( SELF.Diff_TIMESON,1,0)+ IF( SELF.Diff_LASTON,1,0)+ IF( SELF.Diff_ALLOWEXHCONTACT,1,0)+ IF( SELF.Diff_EXHNAME,1,0)+ IF( SELF.Diff_ITEMCOUNT,1,0)+ IF( SELF.Diff_SPEAKERCOUNT,1,0)+ IF( SELF.Diff_ITEMS,1,0)+ IF( SELF.Diff_SPEAKERS,1,0);
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
    Count_Diff_DATEINSERTED := COUNT(GROUP,%Closest%.Diff_DATEINSERTED);
    Count_Diff_FULLNAME := COUNT(GROUP,%Closest%.Diff_FULLNAME);
    Count_Diff_COMPANY := COUNT(GROUP,%Closest%.Diff_COMPANY);
    Count_Diff_EMAIL := COUNT(GROUP,%Closest%.Diff_EMAIL);
    Count_Diff_CITY := COUNT(GROUP,%Closest%.Diff_CITY);
    Count_Diff_STATE := COUNT(GROUP,%Closest%.Diff_STATE);
    Count_Diff_COUNTRY := COUNT(GROUP,%Closest%.Diff_COUNTRY);
    Count_Diff_PASSWORD := COUNT(GROUP,%Closest%.Diff_PASSWORD);
    Count_Diff_EXHCOUNT := COUNT(GROUP,%Closest%.Diff_EXHCOUNT);
    Count_Diff_TIMESON := COUNT(GROUP,%Closest%.Diff_TIMESON);
    Count_Diff_LASTON := COUNT(GROUP,%Closest%.Diff_LASTON);
    Count_Diff_ALLOWEXHCONTACT := COUNT(GROUP,%Closest%.Diff_ALLOWEXHCONTACT);
    Count_Diff_EXHNAME := COUNT(GROUP,%Closest%.Diff_EXHNAME);
    Count_Diff_ITEMCOUNT := COUNT(GROUP,%Closest%.Diff_ITEMCOUNT);
    Count_Diff_SPEAKERCOUNT := COUNT(GROUP,%Closest%.Diff_SPEAKERCOUNT);
    Count_Diff_ITEMS := COUNT(GROUP,%Closest%.Diff_ITEMS);
    Count_Diff_SPEAKERS := COUNT(GROUP,%Closest%.Diff_SPEAKERS);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
