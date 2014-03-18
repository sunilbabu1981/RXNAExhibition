IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','ExhibitorID','Exhibitor','Facebook','Twitter','LinkedIn');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'ExhibitorID' => 3,'Exhibitor' => 4,'Facebook' => 5,'Twitter' => 6,'LinkedIn' => 7,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_ExhibitorID(SALT28.StrType s0) := s0;
EXPORT InValid_ExhibitorID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ExhibitorID(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor(UNSIGNED1 wh) := '';
EXPORT Make_Facebook(SALT28.StrType s0) := s0;
EXPORT InValid_Facebook(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Facebook(UNSIGNED1 wh) := '';
EXPORT Make_Twitter(SALT28.StrType s0) := s0;
EXPORT InValid_Twitter(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Twitter(UNSIGNED1 wh) := '';
EXPORT Make_LinkedIn(SALT28.StrType s0) := s0;
EXPORT InValid_LinkedIn(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LinkedIn(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSSocial;
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
    BOOLEAN Diff_ExhibitorID;
    BOOLEAN Diff_Exhibitor;
    BOOLEAN Diff_Facebook;
    BOOLEAN Diff_Twitter;
    BOOLEAN Diff_LinkedIn;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_ExhibitorID := le.ExhibitorID <> ri.ExhibitorID;
    SELF.Diff_Exhibitor := le.Exhibitor <> ri.Exhibitor;
    SELF.Diff_Facebook := le.Facebook <> ri.Facebook;
    SELF.Diff_Twitter := le.Twitter <> ri.Twitter;
    SELF.Diff_LinkedIn := le.LinkedIn <> ri.LinkedIn;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_ExhibitorID,1,0)+ IF( SELF.Diff_Exhibitor,1,0)+ IF( SELF.Diff_Facebook,1,0)+ IF( SELF.Diff_Twitter,1,0)+ IF( SELF.Diff_LinkedIn,1,0);
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
    Count_Diff_ExhibitorID := COUNT(GROUP,%Closest%.Diff_ExhibitorID);
    Count_Diff_Exhibitor := COUNT(GROUP,%Closest%.Diff_Exhibitor);
    Count_Diff_Facebook := COUNT(GROUP,%Closest%.Diff_Facebook);
    Count_Diff_Twitter := COUNT(GROUP,%Closest%.Diff_Twitter);
    Count_Diff_LinkedIn := COUNT(GROUP,%Closest%.Diff_LinkedIn);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
