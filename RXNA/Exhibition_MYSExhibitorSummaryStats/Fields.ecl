IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','Exhibitor','Package','Views','Links_to_Website','Added_to_Agenda','Shared_Info','Emails','Banners');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'Exhibitor' => 3,'Package' => 4,'Views' => 5,'Links_to_Website' => 6,'Added_to_Agenda' => 7,'Shared_Info' => 8,'Emails' => 9,'Banners' => 10,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor(UNSIGNED1 wh) := '';
EXPORT Make_Package(SALT28.StrType s0) := s0;
EXPORT InValid_Package(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Package(UNSIGNED1 wh) := '';
EXPORT Make_Views(SALT28.StrType s0) := s0;
EXPORT InValid_Views(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Views(UNSIGNED1 wh) := '';
EXPORT Make_Links_to_Website(SALT28.StrType s0) := s0;
EXPORT InValid_Links_to_Website(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Links_to_Website(UNSIGNED1 wh) := '';
EXPORT Make_Added_to_Agenda(SALT28.StrType s0) := s0;
EXPORT InValid_Added_to_Agenda(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Added_to_Agenda(UNSIGNED1 wh) := '';
EXPORT Make_Shared_Info(SALT28.StrType s0) := s0;
EXPORT InValid_Shared_Info(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Shared_Info(UNSIGNED1 wh) := '';
EXPORT Make_Emails(SALT28.StrType s0) := s0;
EXPORT InValid_Emails(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Emails(UNSIGNED1 wh) := '';
EXPORT Make_Banners(SALT28.StrType s0) := s0;
EXPORT InValid_Banners(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Banners(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSExhibitorSummaryStats;
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
    BOOLEAN Diff_Exhibitor;
    BOOLEAN Diff_Package;
    BOOLEAN Diff_Views;
    BOOLEAN Diff_Links_to_Website;
    BOOLEAN Diff_Added_to_Agenda;
    BOOLEAN Diff_Shared_Info;
    BOOLEAN Diff_Emails;
    BOOLEAN Diff_Banners;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_Exhibitor := le.Exhibitor <> ri.Exhibitor;
    SELF.Diff_Package := le.Package <> ri.Package;
    SELF.Diff_Views := le.Views <> ri.Views;
    SELF.Diff_Links_to_Website := le.Links_to_Website <> ri.Links_to_Website;
    SELF.Diff_Added_to_Agenda := le.Added_to_Agenda <> ri.Added_to_Agenda;
    SELF.Diff_Shared_Info := le.Shared_Info <> ri.Shared_Info;
    SELF.Diff_Emails := le.Emails <> ri.Emails;
    SELF.Diff_Banners := le.Banners <> ri.Banners;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_Exhibitor,1,0)+ IF( SELF.Diff_Package,1,0)+ IF( SELF.Diff_Views,1,0)+ IF( SELF.Diff_Links_to_Website,1,0)+ IF( SELF.Diff_Added_to_Agenda,1,0)+ IF( SELF.Diff_Shared_Info,1,0)+ IF( SELF.Diff_Emails,1,0)+ IF( SELF.Diff_Banners,1,0);
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
    Count_Diff_Exhibitor := COUNT(GROUP,%Closest%.Diff_Exhibitor);
    Count_Diff_Package := COUNT(GROUP,%Closest%.Diff_Package);
    Count_Diff_Views := COUNT(GROUP,%Closest%.Diff_Views);
    Count_Diff_Links_to_Website := COUNT(GROUP,%Closest%.Diff_Links_to_Website);
    Count_Diff_Added_to_Agenda := COUNT(GROUP,%Closest%.Diff_Added_to_Agenda);
    Count_Diff_Shared_Info := COUNT(GROUP,%Closest%.Diff_Shared_Info);
    Count_Diff_Emails := COUNT(GROUP,%Closest%.Diff_Emails);
    Count_Diff_Banners := COUNT(GROUP,%Closest%.Diff_Banners);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
