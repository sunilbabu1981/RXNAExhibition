IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'SHOW_KEY','STATUS','ISSUE_TEXT','BOOTH_KEY','CUSTOMER_KEY','CONTACT_NAME','CONTACT_PHONE','NOTIFICATION_IND','PRIORITY','KEY','EXHIBITOR_PRESENT_IND','CREATED_DT','CREATED_BY','UPDATED_DT','UPDATED_BY','SOURCE','CONTRACTOR_KEY','TYPE','CONTRACTOR_TYPE_KEY','CE_SHOW_KEY','CE_BOOTH_KEY','CE_CUSTOMER_KEY','CONTACT_INTL_PHONE_CD','CE_MHA_KEY','NBR_LABELS_REQ','USER_ROLE','CREATED_SOURCE','CONTRACTORTYPE','TSSBOOTHID');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'SHOW_KEY' => 1,'STATUS' => 2,'ISSUE_TEXT' => 3,'BOOTH_KEY' => 4,'CUSTOMER_KEY' => 5,'CONTACT_NAME' => 6,'CONTACT_PHONE' => 7,'NOTIFICATION_IND' => 8,'PRIORITY' => 9,'KEY' => 10,'EXHIBITOR_PRESENT_IND' => 11,'CREATED_DT' => 12,'CREATED_BY' => 13,'UPDATED_DT' => 14,'UPDATED_BY' => 15,'SOURCE' => 16,'CONTRACTOR_KEY' => 17,'TYPE' => 18,'CONTRACTOR_TYPE_KEY' => 19,'CE_SHOW_KEY' => 20,'CE_BOOTH_KEY' => 21,'CE_CUSTOMER_KEY' => 22,'CONTACT_INTL_PHONE_CD' => 23,'CE_MHA_KEY' => 24,'NBR_LABELS_REQ' => 25,'USER_ROLE' => 26,'CREATED_SOURCE' => 27,'CONTRACTORTYPE' => 28,'TSSBOOTHID' => 29,0);
//Individual field level validation
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_STATUS(SALT28.StrType s0) := s0;
EXPORT InValid_STATUS(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_STATUS(UNSIGNED1 wh) := '';
EXPORT Make_ISSUE_TEXT(SALT28.StrType s0) := s0;
EXPORT InValid_ISSUE_TEXT(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ISSUE_TEXT(UNSIGNED1 wh) := '';
EXPORT Make_BOOTH_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_BOOTH_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BOOTH_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CUSTOMER_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CUSTOMER_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CUSTOMER_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CONTACT_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_CONTACT_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTACT_NAME(UNSIGNED1 wh) := '';
EXPORT Make_CONTACT_PHONE(SALT28.StrType s0) := s0;
EXPORT InValid_CONTACT_PHONE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTACT_PHONE(UNSIGNED1 wh) := '';
EXPORT Make_NOTIFICATION_IND(SALT28.StrType s0) := s0;
EXPORT InValid_NOTIFICATION_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_NOTIFICATION_IND(UNSIGNED1 wh) := '';
EXPORT Make_PRIORITY(SALT28.StrType s0) := s0;
EXPORT InValid_PRIORITY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PRIORITY(UNSIGNED1 wh) := '';
EXPORT Make_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_KEY(UNSIGNED1 wh) := '';
EXPORT Make_EXHIBITOR_PRESENT_IND(SALT28.StrType s0) := s0;
EXPORT InValid_EXHIBITOR_PRESENT_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EXHIBITOR_PRESENT_IND(UNSIGNED1 wh) := '';
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
EXPORT Make_CONTRACTOR_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CONTRACTOR_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTRACTOR_KEY(UNSIGNED1 wh) := '';
EXPORT Make_TYPE(SALT28.StrType s0) := s0;
EXPORT InValid_TYPE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TYPE(UNSIGNED1 wh) := '';
EXPORT Make_CONTRACTOR_TYPE_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CONTRACTOR_TYPE_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTRACTOR_TYPE_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_BOOTH_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_BOOTH_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_BOOTH_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_CUSTOMER_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_CUSTOMER_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_CUSTOMER_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CONTACT_INTL_PHONE_CD(SALT28.StrType s0) := s0;
EXPORT InValid_CONTACT_INTL_PHONE_CD(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTACT_INTL_PHONE_CD(UNSIGNED1 wh) := '';
EXPORT Make_CE_MHA_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_MHA_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_MHA_KEY(UNSIGNED1 wh) := '';
EXPORT Make_NBR_LABELS_REQ(SALT28.StrType s0) := s0;
EXPORT InValid_NBR_LABELS_REQ(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_NBR_LABELS_REQ(UNSIGNED1 wh) := '';
EXPORT Make_USER_ROLE(SALT28.StrType s0) := s0;
EXPORT InValid_USER_ROLE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_USER_ROLE(UNSIGNED1 wh) := '';
EXPORT Make_CREATED_SOURCE(SALT28.StrType s0) := s0;
EXPORT InValid_CREATED_SOURCE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CREATED_SOURCE(UNSIGNED1 wh) := '';
EXPORT Make_CONTRACTORTYPE(SALT28.StrType s0) := s0;
EXPORT InValid_CONTRACTORTYPE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CONTRACTORTYPE(UNSIGNED1 wh) := '';
EXPORT Make_TSSBOOTHID(SALT28.StrType s0) := s0;
EXPORT InValid_TSSBOOTHID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TSSBOOTHID(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_CeIssue;
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
    BOOLEAN Diff_STATUS;
    BOOLEAN Diff_ISSUE_TEXT;
    BOOLEAN Diff_BOOTH_KEY;
    BOOLEAN Diff_CUSTOMER_KEY;
    BOOLEAN Diff_CONTACT_NAME;
    BOOLEAN Diff_CONTACT_PHONE;
    BOOLEAN Diff_NOTIFICATION_IND;
    BOOLEAN Diff_PRIORITY;
    BOOLEAN Diff_KEY;
    BOOLEAN Diff_EXHIBITOR_PRESENT_IND;
    BOOLEAN Diff_CREATED_DT;
    BOOLEAN Diff_CREATED_BY;
    BOOLEAN Diff_UPDATED_DT;
    BOOLEAN Diff_UPDATED_BY;
    BOOLEAN Diff_SOURCE;
    BOOLEAN Diff_CONTRACTOR_KEY;
    BOOLEAN Diff_TYPE;
    BOOLEAN Diff_CONTRACTOR_TYPE_KEY;
    BOOLEAN Diff_CE_SHOW_KEY;
    BOOLEAN Diff_CE_BOOTH_KEY;
    BOOLEAN Diff_CE_CUSTOMER_KEY;
    BOOLEAN Diff_CONTACT_INTL_PHONE_CD;
    BOOLEAN Diff_CE_MHA_KEY;
    BOOLEAN Diff_NBR_LABELS_REQ;
    BOOLEAN Diff_USER_ROLE;
    BOOLEAN Diff_CREATED_SOURCE;
    BOOLEAN Diff_CONTRACTORTYPE;
    BOOLEAN Diff_TSSBOOTHID;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Diff_STATUS := le.STATUS <> ri.STATUS;
    SELF.Diff_ISSUE_TEXT := le.ISSUE_TEXT <> ri.ISSUE_TEXT;
    SELF.Diff_BOOTH_KEY := le.BOOTH_KEY <> ri.BOOTH_KEY;
    SELF.Diff_CUSTOMER_KEY := le.CUSTOMER_KEY <> ri.CUSTOMER_KEY;
    SELF.Diff_CONTACT_NAME := le.CONTACT_NAME <> ri.CONTACT_NAME;
    SELF.Diff_CONTACT_PHONE := le.CONTACT_PHONE <> ri.CONTACT_PHONE;
    SELF.Diff_NOTIFICATION_IND := le.NOTIFICATION_IND <> ri.NOTIFICATION_IND;
    SELF.Diff_PRIORITY := le.PRIORITY <> ri.PRIORITY;
    SELF.Diff_KEY := le.KEY <> ri.KEY;
    SELF.Diff_EXHIBITOR_PRESENT_IND := le.EXHIBITOR_PRESENT_IND <> ri.EXHIBITOR_PRESENT_IND;
    SELF.Diff_CREATED_DT := le.CREATED_DT <> ri.CREATED_DT;
    SELF.Diff_CREATED_BY := le.CREATED_BY <> ri.CREATED_BY;
    SELF.Diff_UPDATED_DT := le.UPDATED_DT <> ri.UPDATED_DT;
    SELF.Diff_UPDATED_BY := le.UPDATED_BY <> ri.UPDATED_BY;
    SELF.Diff_SOURCE := le.SOURCE <> ri.SOURCE;
    SELF.Diff_CONTRACTOR_KEY := le.CONTRACTOR_KEY <> ri.CONTRACTOR_KEY;
    SELF.Diff_TYPE := le.TYPE <> ri.TYPE;
    SELF.Diff_CONTRACTOR_TYPE_KEY := le.CONTRACTOR_TYPE_KEY <> ri.CONTRACTOR_TYPE_KEY;
    SELF.Diff_CE_SHOW_KEY := le.CE_SHOW_KEY <> ri.CE_SHOW_KEY;
    SELF.Diff_CE_BOOTH_KEY := le.CE_BOOTH_KEY <> ri.CE_BOOTH_KEY;
    SELF.Diff_CE_CUSTOMER_KEY := le.CE_CUSTOMER_KEY <> ri.CE_CUSTOMER_KEY;
    SELF.Diff_CONTACT_INTL_PHONE_CD := le.CONTACT_INTL_PHONE_CD <> ri.CONTACT_INTL_PHONE_CD;
    SELF.Diff_CE_MHA_KEY := le.CE_MHA_KEY <> ri.CE_MHA_KEY;
    SELF.Diff_NBR_LABELS_REQ := le.NBR_LABELS_REQ <> ri.NBR_LABELS_REQ;
    SELF.Diff_USER_ROLE := le.USER_ROLE <> ri.USER_ROLE;
    SELF.Diff_CREATED_SOURCE := le.CREATED_SOURCE <> ri.CREATED_SOURCE;
    SELF.Diff_CONTRACTORTYPE := le.CONTRACTORTYPE <> ri.CONTRACTORTYPE;
    SELF.Diff_TSSBOOTHID := le.TSSBOOTHID <> ri.TSSBOOTHID;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_SHOW_KEY,1,0)+ IF( SELF.Diff_STATUS,1,0)+ IF( SELF.Diff_ISSUE_TEXT,1,0)+ IF( SELF.Diff_BOOTH_KEY,1,0)+ IF( SELF.Diff_CUSTOMER_KEY,1,0)+ IF( SELF.Diff_CONTACT_NAME,1,0)+ IF( SELF.Diff_CONTACT_PHONE,1,0)+ IF( SELF.Diff_NOTIFICATION_IND,1,0)+ IF( SELF.Diff_PRIORITY,1,0)+ IF( SELF.Diff_KEY,1,0)+ IF( SELF.Diff_EXHIBITOR_PRESENT_IND,1,0)+ IF( SELF.Diff_CREATED_DT,1,0)+ IF( SELF.Diff_CREATED_BY,1,0)+ IF( SELF.Diff_UPDATED_DT,1,0)+ IF( SELF.Diff_UPDATED_BY,1,0)+ IF( SELF.Diff_SOURCE,1,0)+ IF( SELF.Diff_CONTRACTOR_KEY,1,0)+ IF( SELF.Diff_TYPE,1,0)+ IF( SELF.Diff_CONTRACTOR_TYPE_KEY,1,0)+ IF( SELF.Diff_CE_SHOW_KEY,1,0)+ IF( SELF.Diff_CE_BOOTH_KEY,1,0)+ IF( SELF.Diff_CE_CUSTOMER_KEY,1,0)+ IF( SELF.Diff_CONTACT_INTL_PHONE_CD,1,0)+ IF( SELF.Diff_CE_MHA_KEY,1,0)+ IF( SELF.Diff_NBR_LABELS_REQ,1,0)+ IF( SELF.Diff_USER_ROLE,1,0)+ IF( SELF.Diff_CREATED_SOURCE,1,0)+ IF( SELF.Diff_CONTRACTORTYPE,1,0)+ IF( SELF.Diff_TSSBOOTHID,1,0);
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
    Count_Diff_STATUS := COUNT(GROUP,%Closest%.Diff_STATUS);
    Count_Diff_ISSUE_TEXT := COUNT(GROUP,%Closest%.Diff_ISSUE_TEXT);
    Count_Diff_BOOTH_KEY := COUNT(GROUP,%Closest%.Diff_BOOTH_KEY);
    Count_Diff_CUSTOMER_KEY := COUNT(GROUP,%Closest%.Diff_CUSTOMER_KEY);
    Count_Diff_CONTACT_NAME := COUNT(GROUP,%Closest%.Diff_CONTACT_NAME);
    Count_Diff_CONTACT_PHONE := COUNT(GROUP,%Closest%.Diff_CONTACT_PHONE);
    Count_Diff_NOTIFICATION_IND := COUNT(GROUP,%Closest%.Diff_NOTIFICATION_IND);
    Count_Diff_PRIORITY := COUNT(GROUP,%Closest%.Diff_PRIORITY);
    Count_Diff_KEY := COUNT(GROUP,%Closest%.Diff_KEY);
    Count_Diff_EXHIBITOR_PRESENT_IND := COUNT(GROUP,%Closest%.Diff_EXHIBITOR_PRESENT_IND);
    Count_Diff_CREATED_DT := COUNT(GROUP,%Closest%.Diff_CREATED_DT);
    Count_Diff_CREATED_BY := COUNT(GROUP,%Closest%.Diff_CREATED_BY);
    Count_Diff_UPDATED_DT := COUNT(GROUP,%Closest%.Diff_UPDATED_DT);
    Count_Diff_UPDATED_BY := COUNT(GROUP,%Closest%.Diff_UPDATED_BY);
    Count_Diff_SOURCE := COUNT(GROUP,%Closest%.Diff_SOURCE);
    Count_Diff_CONTRACTOR_KEY := COUNT(GROUP,%Closest%.Diff_CONTRACTOR_KEY);
    Count_Diff_TYPE := COUNT(GROUP,%Closest%.Diff_TYPE);
    Count_Diff_CONTRACTOR_TYPE_KEY := COUNT(GROUP,%Closest%.Diff_CONTRACTOR_TYPE_KEY);
    Count_Diff_CE_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_CE_SHOW_KEY);
    Count_Diff_CE_BOOTH_KEY := COUNT(GROUP,%Closest%.Diff_CE_BOOTH_KEY);
    Count_Diff_CE_CUSTOMER_KEY := COUNT(GROUP,%Closest%.Diff_CE_CUSTOMER_KEY);
    Count_Diff_CONTACT_INTL_PHONE_CD := COUNT(GROUP,%Closest%.Diff_CONTACT_INTL_PHONE_CD);
    Count_Diff_CE_MHA_KEY := COUNT(GROUP,%Closest%.Diff_CE_MHA_KEY);
    Count_Diff_NBR_LABELS_REQ := COUNT(GROUP,%Closest%.Diff_NBR_LABELS_REQ);
    Count_Diff_USER_ROLE := COUNT(GROUP,%Closest%.Diff_USER_ROLE);
    Count_Diff_CREATED_SOURCE := COUNT(GROUP,%Closest%.Diff_CREATED_SOURCE);
    Count_Diff_CONTRACTORTYPE := COUNT(GROUP,%Closest%.Diff_CONTRACTORTYPE);
    Count_Diff_TSSBOOTHID := COUNT(GROUP,%Closest%.Diff_TSSBOOTHID);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
