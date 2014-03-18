IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','Booth','Exhibitor_Name','Class','Pavilion','Booth_Area','Short_Side','Long_Side','Open_Corners');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'Booth' => 3,'Exhibitor_Name' => 4,'Class' => 5,'Pavilion' => 6,'Booth_Area' => 7,'Short_Side' => 8,'Long_Side' => 9,'Open_Corners' => 10,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_Booth(SALT28.StrType s0) := s0;
EXPORT InValid_Booth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor_Name(UNSIGNED1 wh) := '';
EXPORT Make_Class(SALT28.StrType s0) := s0;
EXPORT InValid_Class(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Class(UNSIGNED1 wh) := '';
EXPORT Make_Pavilion(SALT28.StrType s0) := s0;
EXPORT InValid_Pavilion(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Pavilion(UNSIGNED1 wh) := '';
EXPORT Make_Booth_Area(SALT28.StrType s0) := s0;
EXPORT InValid_Booth_Area(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth_Area(UNSIGNED1 wh) := '';
EXPORT Make_Short_Side(SALT28.StrType s0) := s0;
EXPORT InValid_Short_Side(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Short_Side(UNSIGNED1 wh) := '';
EXPORT Make_Long_Side(SALT28.StrType s0) := s0;
EXPORT InValid_Long_Side(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Long_Side(UNSIGNED1 wh) := '';
EXPORT Make_Open_Corners(SALT28.StrType s0) := s0;
EXPORT InValid_Open_Corners(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Open_Corners(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_floorPlan;
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
    BOOLEAN Diff_Booth;
    BOOLEAN Diff_Exhibitor_Name;
    BOOLEAN Diff_Class;
    BOOLEAN Diff_Pavilion;
    BOOLEAN Diff_Booth_Area;
    BOOLEAN Diff_Short_Side;
    BOOLEAN Diff_Long_Side;
    BOOLEAN Diff_Open_Corners;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_Booth := le.Booth <> ri.Booth;
    SELF.Diff_Exhibitor_Name := le.Exhibitor_Name <> ri.Exhibitor_Name;
    SELF.Diff_Class := le.Class <> ri.Class;
    SELF.Diff_Pavilion := le.Pavilion <> ri.Pavilion;
    SELF.Diff_Booth_Area := le.Booth_Area <> ri.Booth_Area;
    SELF.Diff_Short_Side := le.Short_Side <> ri.Short_Side;
    SELF.Diff_Long_Side := le.Long_Side <> ri.Long_Side;
    SELF.Diff_Open_Corners := le.Open_Corners <> ri.Open_Corners;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_Booth,1,0)+ IF( SELF.Diff_Exhibitor_Name,1,0)+ IF( SELF.Diff_Class,1,0)+ IF( SELF.Diff_Pavilion,1,0)+ IF( SELF.Diff_Booth_Area,1,0)+ IF( SELF.Diff_Short_Side,1,0)+ IF( SELF.Diff_Long_Side,1,0)+ IF( SELF.Diff_Open_Corners,1,0);
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
    Count_Diff_Booth := COUNT(GROUP,%Closest%.Diff_Booth);
    Count_Diff_Exhibitor_Name := COUNT(GROUP,%Closest%.Diff_Exhibitor_Name);
    Count_Diff_Class := COUNT(GROUP,%Closest%.Diff_Class);
    Count_Diff_Pavilion := COUNT(GROUP,%Closest%.Diff_Pavilion);
    Count_Diff_Booth_Area := COUNT(GROUP,%Closest%.Diff_Booth_Area);
    Count_Diff_Short_Side := COUNT(GROUP,%Closest%.Diff_Short_Side);
    Count_Diff_Long_Side := COUNT(GROUP,%Closest%.Diff_Long_Side);
    Count_Diff_Open_Corners := COUNT(GROUP,%Closest%.Diff_Open_Corners);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
