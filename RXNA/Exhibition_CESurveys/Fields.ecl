IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'SHOW_KEY','TSSBOOTHID','QUESTION_NBR','QUESTION_TEXT','CREATED_DT','SURVEY_NBR','ANSWER_TEXT','CONTACT_NAME','WANT_TO_BE_CONTACTED','CONTACT_PHONE','COUNTRY_CODE','COMMENTS');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'SHOW_KEY' => 1,'TSSBOOTHID' => 2,'QUESTION_NBR' => 3,'QUESTION_TEXT' => 4,'CREATED_DT' => 5,'SURVEY_NBR' => 6,'ANSWER_TEXT' => 7,'CONTACT_NAME' => 8,'WANT_TO_BE_CONTACTED' => 9,'CONTACT_PHONE' => 10,'COUNTRY_CODE' => 11,'COMMENTS' => 12,0);
//Individual field level validation
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_TSSBOOTHID(SALT28.StrType s0) := s0;
EXPORT InValid_TSSBOOTHID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TSSBOOTHID(UNSIGNED1 wh) := '';
EXPORT Make_QUESTION_NBR(SALT28.StrType s0) := s0;
EXPORT InValid_QUESTION_NBR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_QUESTION_NBR(UNSIGNED1 wh) := '';
EXPORT Make_QUESTION_TEXT(SALT28.StrType s0) := s0;
EXPORT InValid_QUESTION_TEXT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_QUESTION_TEXT(UNSIGNED1 wh) := '';
EXPORT Make_CREATED_DT(SALT28.StrType s0) := s0;
EXPORT InValid_CREATED_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CREATED_DT(UNSIGNED1 wh) := '';
EXPORT Make_SURVEY_NBR(SALT28.StrType s0) := s0;
EXPORT InValid_SURVEY_NBR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SURVEY_NBR(UNSIGNED1 wh) := '';
EXPORT Make_ANSWER_TEXT(SALT28.StrType s0) := s0;
EXPORT InValid_ANSWER_TEXT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ANSWER_TEXT(UNSIGNED1 wh) := '';
EXPORT Make_CONTACT_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_CONTACT_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTACT_NAME(UNSIGNED1 wh) := '';
EXPORT Make_WANT_TO_BE_CONTACTED(SALT28.StrType s0) := s0;
EXPORT InValid_WANT_TO_BE_CONTACTED(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_WANT_TO_BE_CONTACTED(UNSIGNED1 wh) := '';
EXPORT Make_CONTACT_PHONE(SALT28.StrType s0) := s0;
EXPORT InValid_CONTACT_PHONE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTACT_PHONE(UNSIGNED1 wh) := '';
EXPORT Make_COUNTRY_CODE(SALT28.StrType s0) := s0;
EXPORT InValid_COUNTRY_CODE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COUNTRY_CODE(UNSIGNED1 wh) := '';
EXPORT Make_COMMENTS(SALT28.StrType s0) := s0;
EXPORT InValid_COMMENTS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_COMMENTS(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_CESurveys;
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
    BOOLEAN Diff_SHOW_KEY;
    BOOLEAN Diff_TSSBOOTHID;
    BOOLEAN Diff_QUESTION_NBR;
    BOOLEAN Diff_QUESTION_TEXT;
    BOOLEAN Diff_CREATED_DT;
    BOOLEAN Diff_SURVEY_NBR;
    BOOLEAN Diff_ANSWER_TEXT;
    BOOLEAN Diff_CONTACT_NAME;
    BOOLEAN Diff_WANT_TO_BE_CONTACTED;
    BOOLEAN Diff_CONTACT_PHONE;
    BOOLEAN Diff_COUNTRY_CODE;
    BOOLEAN Diff_COMMENTS;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Diff_TSSBOOTHID := le.TSSBOOTHID <> ri.TSSBOOTHID;
    SELF.Diff_QUESTION_NBR := le.QUESTION_NBR <> ri.QUESTION_NBR;
    SELF.Diff_QUESTION_TEXT := le.QUESTION_TEXT <> ri.QUESTION_TEXT;
    SELF.Diff_CREATED_DT := le.CREATED_DT <> ri.CREATED_DT;
    SELF.Diff_SURVEY_NBR := le.SURVEY_NBR <> ri.SURVEY_NBR;
    SELF.Diff_ANSWER_TEXT := le.ANSWER_TEXT <> ri.ANSWER_TEXT;
    SELF.Diff_CONTACT_NAME := le.CONTACT_NAME <> ri.CONTACT_NAME;
    SELF.Diff_WANT_TO_BE_CONTACTED := le.WANT_TO_BE_CONTACTED <> ri.WANT_TO_BE_CONTACTED;
    SELF.Diff_CONTACT_PHONE := le.CONTACT_PHONE <> ri.CONTACT_PHONE;
    SELF.Diff_COUNTRY_CODE := le.COUNTRY_CODE <> ri.COUNTRY_CODE;
    SELF.Diff_COMMENTS := le.COMMENTS <> ri.COMMENTS;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_SHOW_KEY,1,0)+ IF( SELF.Diff_TSSBOOTHID,1,0)+ IF( SELF.Diff_QUESTION_NBR,1,0)+ IF( SELF.Diff_QUESTION_TEXT,1,0)+ IF( SELF.Diff_CREATED_DT,1,0)+ IF( SELF.Diff_SURVEY_NBR,1,0)+ IF( SELF.Diff_ANSWER_TEXT,1,0)+ IF( SELF.Diff_CONTACT_NAME,1,0)+ IF( SELF.Diff_WANT_TO_BE_CONTACTED,1,0)+ IF( SELF.Diff_CONTACT_PHONE,1,0)+ IF( SELF.Diff_COUNTRY_CODE,1,0)+ IF( SELF.Diff_COMMENTS,1,0);
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
    Count_Diff_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_SHOW_KEY);
    Count_Diff_TSSBOOTHID := COUNT(GROUP,%Closest%.Diff_TSSBOOTHID);
    Count_Diff_QUESTION_NBR := COUNT(GROUP,%Closest%.Diff_QUESTION_NBR);
    Count_Diff_QUESTION_TEXT := COUNT(GROUP,%Closest%.Diff_QUESTION_TEXT);
    Count_Diff_CREATED_DT := COUNT(GROUP,%Closest%.Diff_CREATED_DT);
    Count_Diff_SURVEY_NBR := COUNT(GROUP,%Closest%.Diff_SURVEY_NBR);
    Count_Diff_ANSWER_TEXT := COUNT(GROUP,%Closest%.Diff_ANSWER_TEXT);
    Count_Diff_CONTACT_NAME := COUNT(GROUP,%Closest%.Diff_CONTACT_NAME);
    Count_Diff_WANT_TO_BE_CONTACTED := COUNT(GROUP,%Closest%.Diff_WANT_TO_BE_CONTACTED);
    Count_Diff_CONTACT_PHONE := COUNT(GROUP,%Closest%.Diff_CONTACT_PHONE);
    Count_Diff_COUNTRY_CODE := COUNT(GROUP,%Closest%.Diff_COUNTRY_CODE);
    Count_Diff_COMMENTS := COUNT(GROUP,%Closest%.Diff_COMMENTS);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
