IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'CustomerID','PrivacyIntMail','PrivacyIntPhone','PrivacyIntFax','PrivacyIntEmail','PrivacyExtMail','PrivacyExtPhone','PrivacyExtFax','PrivacyExtEmail');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'CustomerID' => 1,'PrivacyIntMail' => 2,'PrivacyIntPhone' => 3,'PrivacyIntFax' => 4,'PrivacyIntEmail' => 5,'PrivacyExtMail' => 6,'PrivacyExtPhone' => 7,'PrivacyExtFax' => 8,'PrivacyExtEmail' => 9,0);
//Individual field level validation
EXPORT Make_CustomerID(SALT28.StrType s0) := s0;
EXPORT InValid_CustomerID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CustomerID(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyIntMail(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyIntMail(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyIntMail(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyIntPhone(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyIntPhone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyIntPhone(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyIntFax(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyIntFax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyIntFax(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyIntEmail(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyIntEmail(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyIntEmail(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyExtMail(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyExtMail(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyExtMail(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyExtPhone(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyExtPhone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyExtPhone(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyExtFax(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyExtFax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyExtFax(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyExtEmail(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyExtEmail(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyExtEmail(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractPrivacy;
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
    BOOLEAN Diff_CustomerID;
    BOOLEAN Diff_PrivacyIntMail;
    BOOLEAN Diff_PrivacyIntPhone;
    BOOLEAN Diff_PrivacyIntFax;
    BOOLEAN Diff_PrivacyIntEmail;
    BOOLEAN Diff_PrivacyExtMail;
    BOOLEAN Diff_PrivacyExtPhone;
    BOOLEAN Diff_PrivacyExtFax;
    BOOLEAN Diff_PrivacyExtEmail;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_CustomerID := le.CustomerID <> ri.CustomerID;
    SELF.Diff_PrivacyIntMail := le.PrivacyIntMail <> ri.PrivacyIntMail;
    SELF.Diff_PrivacyIntPhone := le.PrivacyIntPhone <> ri.PrivacyIntPhone;
    SELF.Diff_PrivacyIntFax := le.PrivacyIntFax <> ri.PrivacyIntFax;
    SELF.Diff_PrivacyIntEmail := le.PrivacyIntEmail <> ri.PrivacyIntEmail;
    SELF.Diff_PrivacyExtMail := le.PrivacyExtMail <> ri.PrivacyExtMail;
    SELF.Diff_PrivacyExtPhone := le.PrivacyExtPhone <> ri.PrivacyExtPhone;
    SELF.Diff_PrivacyExtFax := le.PrivacyExtFax <> ri.PrivacyExtFax;
    SELF.Diff_PrivacyExtEmail := le.PrivacyExtEmail <> ri.PrivacyExtEmail;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_CustomerID,1,0)+ IF( SELF.Diff_PrivacyIntMail,1,0)+ IF( SELF.Diff_PrivacyIntPhone,1,0)+ IF( SELF.Diff_PrivacyIntFax,1,0)+ IF( SELF.Diff_PrivacyIntEmail,1,0)+ IF( SELF.Diff_PrivacyExtMail,1,0)+ IF( SELF.Diff_PrivacyExtPhone,1,0)+ IF( SELF.Diff_PrivacyExtFax,1,0)+ IF( SELF.Diff_PrivacyExtEmail,1,0);
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
    Count_Diff_CustomerID := COUNT(GROUP,%Closest%.Diff_CustomerID);
    Count_Diff_PrivacyIntMail := COUNT(GROUP,%Closest%.Diff_PrivacyIntMail);
    Count_Diff_PrivacyIntPhone := COUNT(GROUP,%Closest%.Diff_PrivacyIntPhone);
    Count_Diff_PrivacyIntFax := COUNT(GROUP,%Closest%.Diff_PrivacyIntFax);
    Count_Diff_PrivacyIntEmail := COUNT(GROUP,%Closest%.Diff_PrivacyIntEmail);
    Count_Diff_PrivacyExtMail := COUNT(GROUP,%Closest%.Diff_PrivacyExtMail);
    Count_Diff_PrivacyExtPhone := COUNT(GROUP,%Closest%.Diff_PrivacyExtPhone);
    Count_Diff_PrivacyExtFax := COUNT(GROUP,%Closest%.Diff_PrivacyExtFax);
    Count_Diff_PrivacyExtEmail := COUNT(GROUP,%Closest%.Diff_PrivacyExtEmail);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
