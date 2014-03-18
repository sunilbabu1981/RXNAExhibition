IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','ExhibitorID','Company_Name','Booth','Title','Category','Description','Filename','Date_Added');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'ExhibitorID' => 3,'Company_Name' => 4,'Booth' => 5,'Title' => 6,'Category' => 7,'Description' => 8,'Filename' => 9,'Date_Added' => 10,0);
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
EXPORT Make_Company_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Company_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Company_Name(UNSIGNED1 wh) := '';
EXPORT Make_Booth(SALT28.StrType s0) := s0;
EXPORT InValid_Booth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth(UNSIGNED1 wh) := '';
EXPORT Make_Title(SALT28.StrType s0) := s0;
EXPORT InValid_Title(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Title(UNSIGNED1 wh) := '';
EXPORT Make_Category(SALT28.StrType s0) := s0;
EXPORT InValid_Category(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Category(UNSIGNED1 wh) := '';
EXPORT Make_Description(SALT28.StrType s0) := s0;
EXPORT InValid_Description(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Description(UNSIGNED1 wh) := '';
EXPORT Make_Filename(SALT28.StrType s0) := s0;
EXPORT InValid_Filename(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Filename(UNSIGNED1 wh) := '';
EXPORT Make_Date_Added(SALT28.StrType s0) := s0;
EXPORT InValid_Date_Added(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Date_Added(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSShowSpecials;
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
    BOOLEAN Diff_Company_Name;
    BOOLEAN Diff_Booth;
    BOOLEAN Diff_Title;
    BOOLEAN Diff_Category;
    BOOLEAN Diff_Description;
    BOOLEAN Diff_Filename;
    BOOLEAN Diff_Date_Added;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_ExhibitorID := le.ExhibitorID <> ri.ExhibitorID;
    SELF.Diff_Company_Name := le.Company_Name <> ri.Company_Name;
    SELF.Diff_Booth := le.Booth <> ri.Booth;
    SELF.Diff_Title := le.Title <> ri.Title;
    SELF.Diff_Category := le.Category <> ri.Category;
    SELF.Diff_Description := le.Description <> ri.Description;
    SELF.Diff_Filename := le.Filename <> ri.Filename;
    SELF.Diff_Date_Added := le.Date_Added <> ri.Date_Added;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_ExhibitorID,1,0)+ IF( SELF.Diff_Company_Name,1,0)+ IF( SELF.Diff_Booth,1,0)+ IF( SELF.Diff_Title,1,0)+ IF( SELF.Diff_Category,1,0)+ IF( SELF.Diff_Description,1,0)+ IF( SELF.Diff_Filename,1,0)+ IF( SELF.Diff_Date_Added,1,0);
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
    Count_Diff_Company_Name := COUNT(GROUP,%Closest%.Diff_Company_Name);
    Count_Diff_Booth := COUNT(GROUP,%Closest%.Diff_Booth);
    Count_Diff_Title := COUNT(GROUP,%Closest%.Diff_Title);
    Count_Diff_Category := COUNT(GROUP,%Closest%.Diff_Category);
    Count_Diff_Description := COUNT(GROUP,%Closest%.Diff_Description);
    Count_Diff_Filename := COUNT(GROUP,%Closest%.Diff_Filename);
    Count_Diff_Date_Added := COUNT(GROUP,%Closest%.Diff_Date_Added);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
