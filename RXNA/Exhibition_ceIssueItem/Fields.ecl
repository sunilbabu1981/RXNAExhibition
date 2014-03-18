IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'SHOW_KEY','ISSUE_KEY','KEY','CREATED_DT','CREATED_BY','UPDATED_DT','UPDATED_BY','SOURCE','STATUS','CONTRACTOR_KEY','SHOW_CONTRACTOR_ASSN_KEY','ISSUE_TEXT','CE_SHOW_KEY','EXHIBITOR_PRESENT_IND','TSSBOOTHID');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'SHOW_KEY' => 1,'ISSUE_KEY' => 2,'KEY' => 3,'CREATED_DT' => 4,'CREATED_BY' => 5,'UPDATED_DT' => 6,'UPDATED_BY' => 7,'SOURCE' => 8,'STATUS' => 9,'CONTRACTOR_KEY' => 10,'SHOW_CONTRACTOR_ASSN_KEY' => 11,'ISSUE_TEXT' => 12,'CE_SHOW_KEY' => 13,'EXHIBITOR_PRESENT_IND' => 14,'TSSBOOTHID' => 15,0);
//Individual field level validation
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_ISSUE_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_ISSUE_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ISSUE_KEY(UNSIGNED1 wh) := '';
EXPORT Make_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CREATED_DT(SALT28.StrType s0) := s0;
EXPORT InValid_CREATED_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CREATED_DT(UNSIGNED1 wh) := '';
EXPORT Make_CREATED_BY(SALT28.StrType s0) := s0;
EXPORT InValid_CREATED_BY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CREATED_BY(UNSIGNED1 wh) := '';
EXPORT Make_UPDATED_DT(SALT28.StrType s0) := s0;
EXPORT InValid_UPDATED_DT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_UPDATED_DT(UNSIGNED1 wh) := '';
EXPORT Make_UPDATED_BY(SALT28.StrType s0) := s0;
EXPORT InValid_UPDATED_BY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_UPDATED_BY(UNSIGNED1 wh) := '';
EXPORT Make_SOURCE(SALT28.StrType s0) := s0;
EXPORT InValid_SOURCE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SOURCE(UNSIGNED1 wh) := '';
EXPORT Make_STATUS(SALT28.StrType s0) := s0;
EXPORT InValid_STATUS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_STATUS(UNSIGNED1 wh) := '';
EXPORT Make_CONTRACTOR_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CONTRACTOR_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTRACTOR_KEY(UNSIGNED1 wh) := '';
EXPORT Make_SHOW_CONTRACTOR_ASSN_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_CONTRACTOR_ASSN_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_CONTRACTOR_ASSN_KEY(UNSIGNED1 wh) := '';
EXPORT Make_ISSUE_TEXT(SALT28.StrType s0) := s0;
EXPORT InValid_ISSUE_TEXT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ISSUE_TEXT(UNSIGNED1 wh) := '';
EXPORT Make_CE_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR_PRESENT_IND(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR_PRESENT_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR_PRESENT_IND(UNSIGNED1 wh) := '';
EXPORT Make_TSSBOOTHID(SALT28.StrType s0) := s0;
EXPORT InValid_TSSBOOTHID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TSSBOOTHID(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ceIssueItem;
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
    BOOLEAN Diff_ISSUE_KEY;
    BOOLEAN Diff_KEY;
    BOOLEAN Diff_CREATED_DT;
    BOOLEAN Diff_CREATED_BY;
    BOOLEAN Diff_UPDATED_DT;
    BOOLEAN Diff_UPDATED_BY;
    BOOLEAN Diff_SOURCE;
    BOOLEAN Diff_STATUS;
    BOOLEAN Diff_CONTRACTOR_KEY;
    BOOLEAN Diff_SHOW_CONTRACTOR_ASSN_KEY;
    BOOLEAN Diff_ISSUE_TEXT;
    BOOLEAN Diff_CE_SHOW_KEY;
    BOOLEAN Diff_EXHIBITOR_PRESENT_IND;
    BOOLEAN Diff_TSSBOOTHID;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Diff_ISSUE_KEY := le.ISSUE_KEY <> ri.ISSUE_KEY;
    SELF.Diff_KEY := le.KEY <> ri.KEY;
    SELF.Diff_CREATED_DT := le.CREATED_DT <> ri.CREATED_DT;
    SELF.Diff_CREATED_BY := le.CREATED_BY <> ri.CREATED_BY;
    SELF.Diff_UPDATED_DT := le.UPDATED_DT <> ri.UPDATED_DT;
    SELF.Diff_UPDATED_BY := le.UPDATED_BY <> ri.UPDATED_BY;
    SELF.Diff_SOURCE := le.SOURCE <> ri.SOURCE;
    SELF.Diff_STATUS := le.STATUS <> ri.STATUS;
    SELF.Diff_CONTRACTOR_KEY := le.CONTRACTOR_KEY <> ri.CONTRACTOR_KEY;
    SELF.Diff_SHOW_CONTRACTOR_ASSN_KEY := le.SHOW_CONTRACTOR_ASSN_KEY <> ri.SHOW_CONTRACTOR_ASSN_KEY;
    SELF.Diff_ISSUE_TEXT := le.ISSUE_TEXT <> ri.ISSUE_TEXT;
    SELF.Diff_CE_SHOW_KEY := le.CE_SHOW_KEY <> ri.CE_SHOW_KEY;
    SELF.Diff_EXHIBITOR_PRESENT_IND := le.EXHIBITOR_PRESENT_IND <> ri.EXHIBITOR_PRESENT_IND;
    SELF.Diff_TSSBOOTHID := le.TSSBOOTHID <> ri.TSSBOOTHID;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_SHOW_KEY,1,0)+ IF( SELF.Diff_ISSUE_KEY,1,0)+ IF( SELF.Diff_KEY,1,0)+ IF( SELF.Diff_CREATED_DT,1,0)+ IF( SELF.Diff_CREATED_BY,1,0)+ IF( SELF.Diff_UPDATED_DT,1,0)+ IF( SELF.Diff_UPDATED_BY,1,0)+ IF( SELF.Diff_SOURCE,1,0)+ IF( SELF.Diff_STATUS,1,0)+ IF( SELF.Diff_CONTRACTOR_KEY,1,0)+ IF( SELF.Diff_SHOW_CONTRACTOR_ASSN_KEY,1,0)+ IF( SELF.Diff_ISSUE_TEXT,1,0)+ IF( SELF.Diff_CE_SHOW_KEY,1,0)+ IF( SELF.Diff_EXHIBITOR_PRESENT_IND,1,0)+ IF( SELF.Diff_TSSBOOTHID,1,0);
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
    Count_Diff_ISSUE_KEY := COUNT(GROUP,%Closest%.Diff_ISSUE_KEY);
    Count_Diff_KEY := COUNT(GROUP,%Closest%.Diff_KEY);
    Count_Diff_CREATED_DT := COUNT(GROUP,%Closest%.Diff_CREATED_DT);
    Count_Diff_CREATED_BY := COUNT(GROUP,%Closest%.Diff_CREATED_BY);
    Count_Diff_UPDATED_DT := COUNT(GROUP,%Closest%.Diff_UPDATED_DT);
    Count_Diff_UPDATED_BY := COUNT(GROUP,%Closest%.Diff_UPDATED_BY);
    Count_Diff_SOURCE := COUNT(GROUP,%Closest%.Diff_SOURCE);
    Count_Diff_STATUS := COUNT(GROUP,%Closest%.Diff_STATUS);
    Count_Diff_CONTRACTOR_KEY := COUNT(GROUP,%Closest%.Diff_CONTRACTOR_KEY);
    Count_Diff_SHOW_CONTRACTOR_ASSN_KEY := COUNT(GROUP,%Closest%.Diff_SHOW_CONTRACTOR_ASSN_KEY);
    Count_Diff_ISSUE_TEXT := COUNT(GROUP,%Closest%.Diff_ISSUE_TEXT);
    Count_Diff_CE_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_CE_SHOW_KEY);
    Count_Diff_EXHIBITOR_PRESENT_IND := COUNT(GROUP,%Closest%.Diff_EXHIBITOR_PRESENT_IND);
    Count_Diff_TSSBOOTHID := COUNT(GROUP,%Closest%.Diff_TSSBOOTHID);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
