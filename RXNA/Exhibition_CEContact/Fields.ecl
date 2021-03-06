﻿IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'KEY','CE_SHOW_KEY','CE_BOOTH_KEY','CE_CUSTOMER_KEY','FIRST_NAME','LAST_NAME','PHONE','FAX','MOBILE','EMAIL','SMS_NOTIFY_IND','EMAIL_NOTIFY_IND','CREATED_DT','CREATED_BY','UPDATED_DT','UPDATED_BY','PRIMARY_IND','ADV_FREIGHT_NOTIFY_IND','M_YARD_ARRIVAL_NOTIFY_IND','OUTBOUND_FREIGHT_NOTIFY_IND','DOCK_ARRIVAL_NOTIFY_IND','EMPTIES_AVAIL_NOTIFY_IND','PKG_SCANNED_NOTIFY_IND','SOURCE','ACTION','ACTION_TAKEN_IND','INTL_PHONE_CD','INTL_MOBILE_CD','SMS_NOTIFY_UPDATED_BY','ELECTRICAL_HOOKUP_IND','TSSBOOTHID','SHOW_KEY');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'KEY' => 1,'CE_SHOW_KEY' => 2,'CE_BOOTH_KEY' => 3,'CE_CUSTOMER_KEY' => 4,'FIRST_NAME' => 5,'LAST_NAME' => 6,'PHONE' => 7,'FAX' => 8,'MOBILE' => 9,'EMAIL' => 10,'SMS_NOTIFY_IND' => 11,'EMAIL_NOTIFY_IND' => 12,'CREATED_DT' => 13,'CREATED_BY' => 14,'UPDATED_DT' => 15,'UPDATED_BY' => 16,'PRIMARY_IND' => 17,'ADV_FREIGHT_NOTIFY_IND' => 18,'M_YARD_ARRIVAL_NOTIFY_IND' => 19,'OUTBOUND_FREIGHT_NOTIFY_IND' => 20,'DOCK_ARRIVAL_NOTIFY_IND' => 21,'EMPTIES_AVAIL_NOTIFY_IND' => 22,'PKG_SCANNED_NOTIFY_IND' => 23,'SOURCE' => 24,'ACTION' => 25,'ACTION_TAKEN_IND' => 26,'INTL_PHONE_CD' => 27,'INTL_MOBILE_CD' => 28,'SMS_NOTIFY_UPDATED_BY' => 29,'ELECTRICAL_HOOKUP_IND' => 30,'TSSBOOTHID' => 31,'SHOW_KEY' => 32,0);
//Individual field level validation
EXPORT Make_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_SHOW_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_BOOTH_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_BOOTH_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_BOOTH_KEY(UNSIGNED1 wh) := '';
EXPORT Make_CE_CUSTOMER_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_CE_CUSTOMER_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CE_CUSTOMER_KEY(UNSIGNED1 wh) := '';
EXPORT Make_FIRST_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_FIRST_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FIRST_NAME(UNSIGNED1 wh) := '';
EXPORT Make_LAST_NAME(SALT28.StrType s0) := s0;
EXPORT InValid_LAST_NAME(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LAST_NAME(UNSIGNED1 wh) := '';
EXPORT Make_PHONE(SALT28.StrType s0) := s0;
EXPORT InValid_PHONE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PHONE(UNSIGNED1 wh) := '';
EXPORT Make_FAX(SALT28.StrType s0) := s0;
EXPORT InValid_FAX(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FAX(UNSIGNED1 wh) := '';
EXPORT Make_MOBILE(SALT28.StrType s0) := s0;
EXPORT InValid_MOBILE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_MOBILE(UNSIGNED1 wh) := '';
EXPORT Make_EMAIL(SALT28.StrType s0) := s0;
EXPORT InValid_EMAIL(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EMAIL(UNSIGNED1 wh) := '';
EXPORT Make_SMS_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_SMS_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SMS_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_EMAIL_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_EMAIL_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EMAIL_NOTIFY_IND(UNSIGNED1 wh) := '';
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
EXPORT Make_PRIMARY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_PRIMARY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PRIMARY_IND(UNSIGNED1 wh) := '';
EXPORT Make_ADV_FREIGHT_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_ADV_FREIGHT_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ADV_FREIGHT_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_M_YARD_ARRIVAL_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_M_YARD_ARRIVAL_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_M_YARD_ARRIVAL_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_OUTBOUND_FREIGHT_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_OUTBOUND_FREIGHT_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OUTBOUND_FREIGHT_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_DOCK_ARRIVAL_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_DOCK_ARRIVAL_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DOCK_ARRIVAL_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_EMPTIES_AVAIL_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_EMPTIES_AVAIL_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EMPTIES_AVAIL_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_PKG_SCANNED_NOTIFY_IND(SALT28.StrType s0) := s0;
EXPORT InValid_PKG_SCANNED_NOTIFY_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PKG_SCANNED_NOTIFY_IND(UNSIGNED1 wh) := '';
EXPORT Make_SOURCE(SALT28.StrType s0) := s0;
EXPORT InValid_SOURCE(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SOURCE(UNSIGNED1 wh) := '';
EXPORT Make_ACTION(SALT28.StrType s0) := s0;
EXPORT InValid_ACTION(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ACTION(UNSIGNED1 wh) := '';
EXPORT Make_ACTION_TAKEN_IND(SALT28.StrType s0) := s0;
EXPORT InValid_ACTION_TAKEN_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ACTION_TAKEN_IND(UNSIGNED1 wh) := '';
EXPORT Make_INTL_PHONE_CD(SALT28.StrType s0) := s0;
EXPORT InValid_INTL_PHONE_CD(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_INTL_PHONE_CD(UNSIGNED1 wh) := '';
EXPORT Make_INTL_MOBILE_CD(SALT28.StrType s0) := s0;
EXPORT InValid_INTL_MOBILE_CD(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_INTL_MOBILE_CD(UNSIGNED1 wh) := '';
EXPORT Make_SMS_NOTIFY_UPDATED_BY(SALT28.StrType s0) := s0;
EXPORT InValid_SMS_NOTIFY_UPDATED_BY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SMS_NOTIFY_UPDATED_BY(UNSIGNED1 wh) := '';
EXPORT Make_ELECTRICAL_HOOKUP_IND(SALT28.StrType s0) := s0;
EXPORT InValid_ELECTRICAL_HOOKUP_IND(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ELECTRICAL_HOOKUP_IND(UNSIGNED1 wh) := '';
EXPORT Make_TSSBOOTHID(SALT28.StrType s0) := s0;
EXPORT InValid_TSSBOOTHID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TSSBOOTHID(UNSIGNED1 wh) := '';
EXPORT Make_SHOW_KEY(SALT28.StrType s0) := s0;
EXPORT InValid_SHOW_KEY(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SHOW_KEY(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_CEContact;
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
    BOOLEAN Diff_KEY;
    BOOLEAN Diff_CE_SHOW_KEY;
    BOOLEAN Diff_CE_BOOTH_KEY;
    BOOLEAN Diff_CE_CUSTOMER_KEY;
    BOOLEAN Diff_FIRST_NAME;
    BOOLEAN Diff_LAST_NAME;
    BOOLEAN Diff_PHONE;
    BOOLEAN Diff_FAX;
    BOOLEAN Diff_MOBILE;
    BOOLEAN Diff_EMAIL;
    BOOLEAN Diff_SMS_NOTIFY_IND;
    BOOLEAN Diff_EMAIL_NOTIFY_IND;
    BOOLEAN Diff_CREATED_DT;
    BOOLEAN Diff_CREATED_BY;
    BOOLEAN Diff_UPDATED_DT;
    BOOLEAN Diff_UPDATED_BY;
    BOOLEAN Diff_PRIMARY_IND;
    BOOLEAN Diff_ADV_FREIGHT_NOTIFY_IND;
    BOOLEAN Diff_M_YARD_ARRIVAL_NOTIFY_IND;
    BOOLEAN Diff_OUTBOUND_FREIGHT_NOTIFY_IND;
    BOOLEAN Diff_DOCK_ARRIVAL_NOTIFY_IND;
    BOOLEAN Diff_EMPTIES_AVAIL_NOTIFY_IND;
    BOOLEAN Diff_PKG_SCANNED_NOTIFY_IND;
    BOOLEAN Diff_SOURCE;
    BOOLEAN Diff_ACTION;
    BOOLEAN Diff_ACTION_TAKEN_IND;
    BOOLEAN Diff_INTL_PHONE_CD;
    BOOLEAN Diff_INTL_MOBILE_CD;
    BOOLEAN Diff_SMS_NOTIFY_UPDATED_BY;
    BOOLEAN Diff_ELECTRICAL_HOOKUP_IND;
    BOOLEAN Diff_TSSBOOTHID;
    BOOLEAN Diff_SHOW_KEY;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_KEY := le.KEY <> ri.KEY;
    SELF.Diff_CE_SHOW_KEY := le.CE_SHOW_KEY <> ri.CE_SHOW_KEY;
    SELF.Diff_CE_BOOTH_KEY := le.CE_BOOTH_KEY <> ri.CE_BOOTH_KEY;
    SELF.Diff_CE_CUSTOMER_KEY := le.CE_CUSTOMER_KEY <> ri.CE_CUSTOMER_KEY;
    SELF.Diff_FIRST_NAME := le.FIRST_NAME <> ri.FIRST_NAME;
    SELF.Diff_LAST_NAME := le.LAST_NAME <> ri.LAST_NAME;
    SELF.Diff_PHONE := le.PHONE <> ri.PHONE;
    SELF.Diff_FAX := le.FAX <> ri.FAX;
    SELF.Diff_MOBILE := le.MOBILE <> ri.MOBILE;
    SELF.Diff_EMAIL := le.EMAIL <> ri.EMAIL;
    SELF.Diff_SMS_NOTIFY_IND := le.SMS_NOTIFY_IND <> ri.SMS_NOTIFY_IND;
    SELF.Diff_EMAIL_NOTIFY_IND := le.EMAIL_NOTIFY_IND <> ri.EMAIL_NOTIFY_IND;
    SELF.Diff_CREATED_DT := le.CREATED_DT <> ri.CREATED_DT;
    SELF.Diff_CREATED_BY := le.CREATED_BY <> ri.CREATED_BY;
    SELF.Diff_UPDATED_DT := le.UPDATED_DT <> ri.UPDATED_DT;
    SELF.Diff_UPDATED_BY := le.UPDATED_BY <> ri.UPDATED_BY;
    SELF.Diff_PRIMARY_IND := le.PRIMARY_IND <> ri.PRIMARY_IND;
    SELF.Diff_ADV_FREIGHT_NOTIFY_IND := le.ADV_FREIGHT_NOTIFY_IND <> ri.ADV_FREIGHT_NOTIFY_IND;
    SELF.Diff_M_YARD_ARRIVAL_NOTIFY_IND := le.M_YARD_ARRIVAL_NOTIFY_IND <> ri.M_YARD_ARRIVAL_NOTIFY_IND;
    SELF.Diff_OUTBOUND_FREIGHT_NOTIFY_IND := le.OUTBOUND_FREIGHT_NOTIFY_IND <> ri.OUTBOUND_FREIGHT_NOTIFY_IND;
    SELF.Diff_DOCK_ARRIVAL_NOTIFY_IND := le.DOCK_ARRIVAL_NOTIFY_IND <> ri.DOCK_ARRIVAL_NOTIFY_IND;
    SELF.Diff_EMPTIES_AVAIL_NOTIFY_IND := le.EMPTIES_AVAIL_NOTIFY_IND <> ri.EMPTIES_AVAIL_NOTIFY_IND;
    SELF.Diff_PKG_SCANNED_NOTIFY_IND := le.PKG_SCANNED_NOTIFY_IND <> ri.PKG_SCANNED_NOTIFY_IND;
    SELF.Diff_SOURCE := le.SOURCE <> ri.SOURCE;
    SELF.Diff_ACTION := le.ACTION <> ri.ACTION;
    SELF.Diff_ACTION_TAKEN_IND := le.ACTION_TAKEN_IND <> ri.ACTION_TAKEN_IND;
    SELF.Diff_INTL_PHONE_CD := le.INTL_PHONE_CD <> ri.INTL_PHONE_CD;
    SELF.Diff_INTL_MOBILE_CD := le.INTL_MOBILE_CD <> ri.INTL_MOBILE_CD;
    SELF.Diff_SMS_NOTIFY_UPDATED_BY := le.SMS_NOTIFY_UPDATED_BY <> ri.SMS_NOTIFY_UPDATED_BY;
    SELF.Diff_ELECTRICAL_HOOKUP_IND := le.ELECTRICAL_HOOKUP_IND <> ri.ELECTRICAL_HOOKUP_IND;
    SELF.Diff_TSSBOOTHID := le.TSSBOOTHID <> ri.TSSBOOTHID;
    SELF.Diff_SHOW_KEY := le.SHOW_KEY <> ri.SHOW_KEY;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_KEY,1,0)+ IF( SELF.Diff_CE_SHOW_KEY,1,0)+ IF( SELF.Diff_CE_BOOTH_KEY,1,0)+ IF( SELF.Diff_CE_CUSTOMER_KEY,1,0)+ IF( SELF.Diff_FIRST_NAME,1,0)+ IF( SELF.Diff_LAST_NAME,1,0)+ IF( SELF.Diff_PHONE,1,0)+ IF( SELF.Diff_FAX,1,0)+ IF( SELF.Diff_MOBILE,1,0)+ IF( SELF.Diff_EMAIL,1,0)+ IF( SELF.Diff_SMS_NOTIFY_IND,1,0)+ IF( SELF.Diff_EMAIL_NOTIFY_IND,1,0)+ IF( SELF.Diff_CREATED_DT,1,0)+ IF( SELF.Diff_CREATED_BY,1,0)+ IF( SELF.Diff_UPDATED_DT,1,0)+ IF( SELF.Diff_UPDATED_BY,1,0)+ IF( SELF.Diff_PRIMARY_IND,1,0)+ IF( SELF.Diff_ADV_FREIGHT_NOTIFY_IND,1,0)+ IF( SELF.Diff_M_YARD_ARRIVAL_NOTIFY_IND,1,0)+ IF( SELF.Diff_OUTBOUND_FREIGHT_NOTIFY_IND,1,0)+ IF( SELF.Diff_DOCK_ARRIVAL_NOTIFY_IND,1,0)+ IF( SELF.Diff_EMPTIES_AVAIL_NOTIFY_IND,1,0)+ IF( SELF.Diff_PKG_SCANNED_NOTIFY_IND,1,0)+ IF( SELF.Diff_SOURCE,1,0)+ IF( SELF.Diff_ACTION,1,0)+ IF( SELF.Diff_ACTION_TAKEN_IND,1,0)+ IF( SELF.Diff_INTL_PHONE_CD,1,0)+ IF( SELF.Diff_INTL_MOBILE_CD,1,0)+ IF( SELF.Diff_SMS_NOTIFY_UPDATED_BY,1,0)+ IF( SELF.Diff_ELECTRICAL_HOOKUP_IND,1,0)+ IF( SELF.Diff_TSSBOOTHID,1,0)+ IF( SELF.Diff_SHOW_KEY,1,0);
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
    Count_Diff_KEY := COUNT(GROUP,%Closest%.Diff_KEY);
    Count_Diff_CE_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_CE_SHOW_KEY);
    Count_Diff_CE_BOOTH_KEY := COUNT(GROUP,%Closest%.Diff_CE_BOOTH_KEY);
    Count_Diff_CE_CUSTOMER_KEY := COUNT(GROUP,%Closest%.Diff_CE_CUSTOMER_KEY);
    Count_Diff_FIRST_NAME := COUNT(GROUP,%Closest%.Diff_FIRST_NAME);
    Count_Diff_LAST_NAME := COUNT(GROUP,%Closest%.Diff_LAST_NAME);
    Count_Diff_PHONE := COUNT(GROUP,%Closest%.Diff_PHONE);
    Count_Diff_FAX := COUNT(GROUP,%Closest%.Diff_FAX);
    Count_Diff_MOBILE := COUNT(GROUP,%Closest%.Diff_MOBILE);
    Count_Diff_EMAIL := COUNT(GROUP,%Closest%.Diff_EMAIL);
    Count_Diff_SMS_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_SMS_NOTIFY_IND);
    Count_Diff_EMAIL_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_EMAIL_NOTIFY_IND);
    Count_Diff_CREATED_DT := COUNT(GROUP,%Closest%.Diff_CREATED_DT);
    Count_Diff_CREATED_BY := COUNT(GROUP,%Closest%.Diff_CREATED_BY);
    Count_Diff_UPDATED_DT := COUNT(GROUP,%Closest%.Diff_UPDATED_DT);
    Count_Diff_UPDATED_BY := COUNT(GROUP,%Closest%.Diff_UPDATED_BY);
    Count_Diff_PRIMARY_IND := COUNT(GROUP,%Closest%.Diff_PRIMARY_IND);
    Count_Diff_ADV_FREIGHT_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_ADV_FREIGHT_NOTIFY_IND);
    Count_Diff_M_YARD_ARRIVAL_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_M_YARD_ARRIVAL_NOTIFY_IND);
    Count_Diff_OUTBOUND_FREIGHT_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_OUTBOUND_FREIGHT_NOTIFY_IND);
    Count_Diff_DOCK_ARRIVAL_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_DOCK_ARRIVAL_NOTIFY_IND);
    Count_Diff_EMPTIES_AVAIL_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_EMPTIES_AVAIL_NOTIFY_IND);
    Count_Diff_PKG_SCANNED_NOTIFY_IND := COUNT(GROUP,%Closest%.Diff_PKG_SCANNED_NOTIFY_IND);
    Count_Diff_SOURCE := COUNT(GROUP,%Closest%.Diff_SOURCE);
    Count_Diff_ACTION := COUNT(GROUP,%Closest%.Diff_ACTION);
    Count_Diff_ACTION_TAKEN_IND := COUNT(GROUP,%Closest%.Diff_ACTION_TAKEN_IND);
    Count_Diff_INTL_PHONE_CD := COUNT(GROUP,%Closest%.Diff_INTL_PHONE_CD);
    Count_Diff_INTL_MOBILE_CD := COUNT(GROUP,%Closest%.Diff_INTL_MOBILE_CD);
    Count_Diff_SMS_NOTIFY_UPDATED_BY := COUNT(GROUP,%Closest%.Diff_SMS_NOTIFY_UPDATED_BY);
    Count_Diff_ELECTRICAL_HOOKUP_IND := COUNT(GROUP,%Closest%.Diff_ELECTRICAL_HOOKUP_IND);
    Count_Diff_TSSBOOTHID := COUNT(GROUP,%Closest%.Diff_TSSBOOTHID);
    Count_Diff_SHOW_KEY := COUNT(GROUP,%Closest%.Diff_SHOW_KEY);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
