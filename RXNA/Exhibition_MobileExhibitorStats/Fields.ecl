IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','CompanyName','ExhibitorID','action','visits','views','visitors','users');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'CompanyName' => 3,'ExhibitorID' => 4,'action' => 5,'visits' => 6,'views' => 7,'visitors' => 8,'users' => 9,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_CompanyName(SALT28.StrType s0) := s0;
EXPORT InValid_CompanyName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CompanyName(UNSIGNED1 wh) := '';
EXPORT Make_ExhibitorID(SALT28.StrType s0) := s0;
EXPORT InValid_ExhibitorID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ExhibitorID(UNSIGNED1 wh) := '';
EXPORT Make_action(SALT28.StrType s0) := s0;
EXPORT InValid_action(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_action(UNSIGNED1 wh) := '';
EXPORT Make_visits(SALT28.StrType s0) := s0;
EXPORT InValid_visits(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_visits(UNSIGNED1 wh) := '';
EXPORT Make_views(SALT28.StrType s0) := s0;
EXPORT InValid_views(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_views(UNSIGNED1 wh) := '';
EXPORT Make_visitors(SALT28.StrType s0) := s0;
EXPORT InValid_visitors(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_visitors(UNSIGNED1 wh) := '';
EXPORT Make_users(SALT28.StrType s0) := s0;
EXPORT InValid_users(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_users(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MobileExhibitorStats;
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
    BOOLEAN Diff_CompanyName;
    BOOLEAN Diff_ExhibitorID;
    BOOLEAN Diff_action;
    BOOLEAN Diff_visits;
    BOOLEAN Diff_views;
    BOOLEAN Diff_visitors;
    BOOLEAN Diff_users;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_CompanyName := le.CompanyName <> ri.CompanyName;
    SELF.Diff_ExhibitorID := le.ExhibitorID <> ri.ExhibitorID;
    SELF.Diff_action := le.action <> ri.action;
    SELF.Diff_visits := le.visits <> ri.visits;
    SELF.Diff_views := le.views <> ri.views;
    SELF.Diff_visitors := le.visitors <> ri.visitors;
    SELF.Diff_users := le.users <> ri.users;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_CompanyName,1,0)+ IF( SELF.Diff_ExhibitorID,1,0)+ IF( SELF.Diff_action,1,0)+ IF( SELF.Diff_visits,1,0)+ IF( SELF.Diff_views,1,0)+ IF( SELF.Diff_visitors,1,0)+ IF( SELF.Diff_users,1,0);
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
    Count_Diff_CompanyName := COUNT(GROUP,%Closest%.Diff_CompanyName);
    Count_Diff_ExhibitorID := COUNT(GROUP,%Closest%.Diff_ExhibitorID);
    Count_Diff_action := COUNT(GROUP,%Closest%.Diff_action);
    Count_Diff_visits := COUNT(GROUP,%Closest%.Diff_visits);
    Count_Diff_views := COUNT(GROUP,%Closest%.Diff_views);
    Count_Diff_visitors := COUNT(GROUP,%Closest%.Diff_visitors);
    Count_Diff_users := COUNT(GROUP,%Closest%.Diff_users);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
