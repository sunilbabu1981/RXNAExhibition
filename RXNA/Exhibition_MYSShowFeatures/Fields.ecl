IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','EXHIBITOR','EMAIL','EXHIBITORID','PASSWORD','FEATURE_TITLE','MEDIA_FILE');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'EXHIBITOR' => 3,'EMAIL' => 4,'EXHIBITORID' => 5,'PASSWORD' => 6,'FEATURE_TITLE' => 7,'MEDIA_FILE' => 8,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR(UNSIGNED1 wh) := '';
EXPORT Make_EMAIL(SALT28.StrType s0) := s0;
EXPORT InValid_EMAIL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EMAIL(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITORID(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITORID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITORID(UNSIGNED1 wh) := '';
EXPORT Make_PASSWORD(SALT28.StrType s0) := s0;
EXPORT InValid_PASSWORD(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PASSWORD(UNSIGNED1 wh) := '';
EXPORT Make_FEATURE_TITLE(SALT28.StrType s0) := s0;
EXPORT InValid_FEATURE_TITLE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FEATURE_TITLE(UNSIGNED1 wh) := '';
EXPORT Make_MEDIA_FILE(SALT28.StrType s0) := s0;
EXPORT InValid_MEDIA_FILE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_MEDIA_FILE(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSShowFeatures;
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
    BOOLEAN Diff_EXHIBITOR;
    BOOLEAN Diff_EMAIL;
    BOOLEAN Diff_EXHIBITORID;
    BOOLEAN Diff_PASSWORD;
    BOOLEAN Diff_FEATURE_TITLE;
    BOOLEAN Diff_MEDIA_FILE;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_EXHIBITOR := le.EXHIBITOR <> ri.EXHIBITOR;
    SELF.Diff_EMAIL := le.EMAIL <> ri.EMAIL;
    SELF.Diff_EXHIBITORID := le.EXHIBITORID <> ri.EXHIBITORID;
    SELF.Diff_PASSWORD := le.PASSWORD <> ri.PASSWORD;
    SELF.Diff_FEATURE_TITLE := le.FEATURE_TITLE <> ri.FEATURE_TITLE;
    SELF.Diff_MEDIA_FILE := le.MEDIA_FILE <> ri.MEDIA_FILE;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_EXHIBITOR,1,0)+ IF( SELF.Diff_EMAIL,1,0)+ IF( SELF.Diff_EXHIBITORID,1,0)+ IF( SELF.Diff_PASSWORD,1,0)+ IF( SELF.Diff_FEATURE_TITLE,1,0)+ IF( SELF.Diff_MEDIA_FILE,1,0);
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
    Count_Diff_EXHIBITOR := COUNT(GROUP,%Closest%.Diff_EXHIBITOR);
    Count_Diff_EMAIL := COUNT(GROUP,%Closest%.Diff_EMAIL);
    Count_Diff_EXHIBITORID := COUNT(GROUP,%Closest%.Diff_EXHIBITORID);
    Count_Diff_PASSWORD := COUNT(GROUP,%Closest%.Diff_PASSWORD);
    Count_Diff_FEATURE_TITLE := COUNT(GROUP,%Closest%.Diff_FEATURE_TITLE);
    Count_Diff_MEDIA_FILE := COUNT(GROUP,%Closest%.Diff_MEDIA_FILE);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
