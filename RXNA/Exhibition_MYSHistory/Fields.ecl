IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','Date','Exhibitor_ID','Exhibitor','File','Field','Action','Before','After','Who');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'Date' => 3,'Exhibitor_ID' => 4,'Exhibitor' => 5,'File' => 6,'Field' => 7,'Action' => 8,'Before' => 9,'After' => 10,'Who' => 11,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_Date(SALT28.StrType s0) := s0;
EXPORT InValid_Date(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Date(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor_ID(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor_ID(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor(UNSIGNED1 wh) := '';
EXPORT Make_File(SALT28.StrType s0) := s0;
EXPORT InValid_File(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_File(UNSIGNED1 wh) := '';
EXPORT Make_Field(SALT28.StrType s0) := s0;
EXPORT InValid_Field(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Field(UNSIGNED1 wh) := '';
EXPORT Make_Action(SALT28.StrType s0) := s0;
EXPORT InValid_Action(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Action(UNSIGNED1 wh) := '';
EXPORT Make_Before(SALT28.StrType s0) := s0;
EXPORT InValid_Before(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Before(UNSIGNED1 wh) := '';
EXPORT Make_After(SALT28.StrType s0) := s0;
EXPORT InValid_After(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_After(UNSIGNED1 wh) := '';
EXPORT Make_Who(SALT28.StrType s0) := s0;
EXPORT InValid_Who(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Who(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSHistory;
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
    BOOLEAN Diff_Date;
    BOOLEAN Diff_Exhibitor_ID;
    BOOLEAN Diff_Exhibitor;
    BOOLEAN Diff_File;
    BOOLEAN Diff_Field;
    BOOLEAN Diff_Action;
    BOOLEAN Diff_Before;
    BOOLEAN Diff_After;
    BOOLEAN Diff_Who;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_Date := le.Date <> ri.Date;
    SELF.Diff_Exhibitor_ID := le.Exhibitor_ID <> ri.Exhibitor_ID;
    SELF.Diff_Exhibitor := le.Exhibitor <> ri.Exhibitor;
    SELF.Diff_File := le.File <> ri.File;
    SELF.Diff_Field := le.Field <> ri.Field;
    SELF.Diff_Action := le.Action <> ri.Action;
    SELF.Diff_Before := le.Before <> ri.Before;
    SELF.Diff_After := le.After <> ri.After;
    SELF.Diff_Who := le.Who <> ri.Who;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_Date,1,0)+ IF( SELF.Diff_Exhibitor_ID,1,0)+ IF( SELF.Diff_Exhibitor,1,0)+ IF( SELF.Diff_File,1,0)+ IF( SELF.Diff_Field,1,0)+ IF( SELF.Diff_Action,1,0)+ IF( SELF.Diff_Before,1,0)+ IF( SELF.Diff_After,1,0)+ IF( SELF.Diff_Who,1,0);
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
    Count_Diff_Date := COUNT(GROUP,%Closest%.Diff_Date);
    Count_Diff_Exhibitor_ID := COUNT(GROUP,%Closest%.Diff_Exhibitor_ID);
    Count_Diff_Exhibitor := COUNT(GROUP,%Closest%.Diff_Exhibitor);
    Count_Diff_File := COUNT(GROUP,%Closest%.Diff_File);
    Count_Diff_Field := COUNT(GROUP,%Closest%.Diff_Field);
    Count_Diff_Action := COUNT(GROUP,%Closest%.Diff_Action);
    Count_Diff_Before := COUNT(GROUP,%Closest%.Diff_Before);
    Count_Diff_After := COUNT(GROUP,%Closest%.Diff_After);
    Count_Diff_Who := COUNT(GROUP,%Closest%.Diff_Who);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
