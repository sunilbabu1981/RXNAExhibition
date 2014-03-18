IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','CustomerID','Booth','Lead_Unit','Badge_ID','Individual_ID','Class_Code','Swipe_Date','Swipe_Time');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'CustomerID' => 3,'Booth' => 4,'Lead_Unit' => 5,'Badge_ID' => 6,'Individual_ID' => 7,'Class_Code' => 8,'Swipe_Date' => 9,'Swipe_Time' => 10,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_CustomerID(SALT28.StrType s0) := s0;
EXPORT InValid_CustomerID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CustomerID(UNSIGNED1 wh) := '';
EXPORT Make_Booth(SALT28.StrType s0) := s0;
EXPORT InValid_Booth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth(UNSIGNED1 wh) := '';
EXPORT Make_Lead_Unit(SALT28.StrType s0) := s0;
EXPORT InValid_Lead_Unit(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Lead_Unit(UNSIGNED1 wh) := '';
EXPORT Make_Badge_ID(SALT28.StrType s0) := s0;
EXPORT InValid_Badge_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Badge_ID(UNSIGNED1 wh) := '';
EXPORT Make_Individual_ID(SALT28.StrType s0) := s0;
EXPORT InValid_Individual_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Individual_ID(UNSIGNED1 wh) := '';
EXPORT Make_Class_Code(SALT28.StrType s0) := s0;
EXPORT InValid_Class_Code(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Class_Code(UNSIGNED1 wh) := '';
EXPORT Make_Swipe_Date(SALT28.StrType s0) := s0;
EXPORT InValid_Swipe_Date(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Swipe_Date(UNSIGNED1 wh) := '';
EXPORT Make_Swipe_Time(SALT28.StrType s0) := s0;
EXPORT InValid_Swipe_Time(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Swipe_Time(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_LeadRetrieval;
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
    BOOLEAN Diff_CustomerID;
    BOOLEAN Diff_Booth;
    BOOLEAN Diff_Lead_Unit;
    BOOLEAN Diff_Badge_ID;
    BOOLEAN Diff_Individual_ID;
    BOOLEAN Diff_Class_Code;
    BOOLEAN Diff_Swipe_Date;
    BOOLEAN Diff_Swipe_Time;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_CustomerID := le.CustomerID <> ri.CustomerID;
    SELF.Diff_Booth := le.Booth <> ri.Booth;
    SELF.Diff_Lead_Unit := le.Lead_Unit <> ri.Lead_Unit;
    SELF.Diff_Badge_ID := le.Badge_ID <> ri.Badge_ID;
    SELF.Diff_Individual_ID := le.Individual_ID <> ri.Individual_ID;
    SELF.Diff_Class_Code := le.Class_Code <> ri.Class_Code;
    SELF.Diff_Swipe_Date := le.Swipe_Date <> ri.Swipe_Date;
    SELF.Diff_Swipe_Time := le.Swipe_Time <> ri.Swipe_Time;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_CustomerID,1,0)+ IF( SELF.Diff_Booth,1,0)+ IF( SELF.Diff_Lead_Unit,1,0)+ IF( SELF.Diff_Badge_ID,1,0)+ IF( SELF.Diff_Individual_ID,1,0)+ IF( SELF.Diff_Class_Code,1,0)+ IF( SELF.Diff_Swipe_Date,1,0)+ IF( SELF.Diff_Swipe_Time,1,0);
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
    Count_Diff_CustomerID := COUNT(GROUP,%Closest%.Diff_CustomerID);
    Count_Diff_Booth := COUNT(GROUP,%Closest%.Diff_Booth);
    Count_Diff_Lead_Unit := COUNT(GROUP,%Closest%.Diff_Lead_Unit);
    Count_Diff_Badge_ID := COUNT(GROUP,%Closest%.Diff_Badge_ID);
    Count_Diff_Individual_ID := COUNT(GROUP,%Closest%.Diff_Individual_ID);
    Count_Diff_Class_Code := COUNT(GROUP,%Closest%.Diff_Class_Code);
    Count_Diff_Swipe_Date := COUNT(GROUP,%Closest%.Diff_Swipe_Date);
    Count_Diff_Swipe_Time := COUNT(GROUP,%Closest%.Diff_Swipe_Time);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
