IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'CompanyID','vchCompanyName','vchAddress1','vchAddress2','vchAddress3','vchCity','vchRegionName','vchCountry','vchPostCode','vchPhone','vchFax','vchEmailAddress','vchContactFirstName','vchContactLastName');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'CompanyID' => 1,'vchCompanyName' => 2,'vchAddress1' => 3,'vchAddress2' => 4,'vchAddress3' => 5,'vchCity' => 6,'vchRegionName' => 7,'vchCountry' => 8,'vchPostCode' => 9,'vchPhone' => 10,'vchFax' => 11,'vchEmailAddress' => 12,'vchContactFirstName' => 13,'vchContactLastName' => 14,0);
//Individual field level validation
EXPORT Make_CompanyID(SALT28.StrType s0) := s0;
EXPORT InValid_CompanyID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CompanyID(UNSIGNED1 wh) := '';
EXPORT Make_vchCompanyName(SALT28.StrType s0) := s0;
EXPORT InValid_vchCompanyName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCompanyName(UNSIGNED1 wh) := '';
EXPORT Make_vchAddress1(SALT28.StrType s0) := s0;
EXPORT InValid_vchAddress1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchAddress1(UNSIGNED1 wh) := '';
EXPORT Make_vchAddress2(SALT28.StrType s0) := s0;
EXPORT InValid_vchAddress2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchAddress2(UNSIGNED1 wh) := '';
EXPORT Make_vchAddress3(SALT28.StrType s0) := s0;
EXPORT InValid_vchAddress3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchAddress3(UNSIGNED1 wh) := '';
EXPORT Make_vchCity(SALT28.StrType s0) := s0;
EXPORT InValid_vchCity(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCity(UNSIGNED1 wh) := '';
EXPORT Make_vchRegionName(SALT28.StrType s0) := s0;
EXPORT InValid_vchRegionName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchRegionName(UNSIGNED1 wh) := '';
EXPORT Make_vchCountry(SALT28.StrType s0) := s0;
EXPORT InValid_vchCountry(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCountry(UNSIGNED1 wh) := '';
EXPORT Make_vchPostCode(SALT28.StrType s0) := s0;
EXPORT InValid_vchPostCode(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchPostCode(UNSIGNED1 wh) := '';
EXPORT Make_vchPhone(SALT28.StrType s0) := s0;
EXPORT InValid_vchPhone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchPhone(UNSIGNED1 wh) := '';
EXPORT Make_vchFax(SALT28.StrType s0) := s0;
EXPORT InValid_vchFax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchFax(UNSIGNED1 wh) := '';
EXPORT Make_vchEmailAddress(SALT28.StrType s0) := s0;
EXPORT InValid_vchEmailAddress(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchEmailAddress(UNSIGNED1 wh) := '';
EXPORT Make_vchContactFirstName(SALT28.StrType s0) := s0;
EXPORT InValid_vchContactFirstName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchContactFirstName(UNSIGNED1 wh) := '';
EXPORT Make_vchContactLastName(SALT28.StrType s0) := s0;
EXPORT InValid_vchContactLastName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchContactLastName(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_DirectoryPrismCompany;
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
    BOOLEAN Diff_CompanyID;
    BOOLEAN Diff_vchCompanyName;
    BOOLEAN Diff_vchAddress1;
    BOOLEAN Diff_vchAddress2;
    BOOLEAN Diff_vchAddress3;
    BOOLEAN Diff_vchCity;
    BOOLEAN Diff_vchRegionName;
    BOOLEAN Diff_vchCountry;
    BOOLEAN Diff_vchPostCode;
    BOOLEAN Diff_vchPhone;
    BOOLEAN Diff_vchFax;
    BOOLEAN Diff_vchEmailAddress;
    BOOLEAN Diff_vchContactFirstName;
    BOOLEAN Diff_vchContactLastName;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_CompanyID := le.CompanyID <> ri.CompanyID;
    SELF.Diff_vchCompanyName := le.vchCompanyName <> ri.vchCompanyName;
    SELF.Diff_vchAddress1 := le.vchAddress1 <> ri.vchAddress1;
    SELF.Diff_vchAddress2 := le.vchAddress2 <> ri.vchAddress2;
    SELF.Diff_vchAddress3 := le.vchAddress3 <> ri.vchAddress3;
    SELF.Diff_vchCity := le.vchCity <> ri.vchCity;
    SELF.Diff_vchRegionName := le.vchRegionName <> ri.vchRegionName;
    SELF.Diff_vchCountry := le.vchCountry <> ri.vchCountry;
    SELF.Diff_vchPostCode := le.vchPostCode <> ri.vchPostCode;
    SELF.Diff_vchPhone := le.vchPhone <> ri.vchPhone;
    SELF.Diff_vchFax := le.vchFax <> ri.vchFax;
    SELF.Diff_vchEmailAddress := le.vchEmailAddress <> ri.vchEmailAddress;
    SELF.Diff_vchContactFirstName := le.vchContactFirstName <> ri.vchContactFirstName;
    SELF.Diff_vchContactLastName := le.vchContactLastName <> ri.vchContactLastName;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_CompanyID,1,0)+ IF( SELF.Diff_vchCompanyName,1,0)+ IF( SELF.Diff_vchAddress1,1,0)+ IF( SELF.Diff_vchAddress2,1,0)+ IF( SELF.Diff_vchAddress3,1,0)+ IF( SELF.Diff_vchCity,1,0)+ IF( SELF.Diff_vchRegionName,1,0)+ IF( SELF.Diff_vchCountry,1,0)+ IF( SELF.Diff_vchPostCode,1,0)+ IF( SELF.Diff_vchPhone,1,0)+ IF( SELF.Diff_vchFax,1,0)+ IF( SELF.Diff_vchEmailAddress,1,0)+ IF( SELF.Diff_vchContactFirstName,1,0)+ IF( SELF.Diff_vchContactLastName,1,0);
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
    Count_Diff_CompanyID := COUNT(GROUP,%Closest%.Diff_CompanyID);
    Count_Diff_vchCompanyName := COUNT(GROUP,%Closest%.Diff_vchCompanyName);
    Count_Diff_vchAddress1 := COUNT(GROUP,%Closest%.Diff_vchAddress1);
    Count_Diff_vchAddress2 := COUNT(GROUP,%Closest%.Diff_vchAddress2);
    Count_Diff_vchAddress3 := COUNT(GROUP,%Closest%.Diff_vchAddress3);
    Count_Diff_vchCity := COUNT(GROUP,%Closest%.Diff_vchCity);
    Count_Diff_vchRegionName := COUNT(GROUP,%Closest%.Diff_vchRegionName);
    Count_Diff_vchCountry := COUNT(GROUP,%Closest%.Diff_vchCountry);
    Count_Diff_vchPostCode := COUNT(GROUP,%Closest%.Diff_vchPostCode);
    Count_Diff_vchPhone := COUNT(GROUP,%Closest%.Diff_vchPhone);
    Count_Diff_vchFax := COUNT(GROUP,%Closest%.Diff_vchFax);
    Count_Diff_vchEmailAddress := COUNT(GROUP,%Closest%.Diff_vchEmailAddress);
    Count_Diff_vchContactFirstName := COUNT(GROUP,%Closest%.Diff_vchContactFirstName);
    Count_Diff_vchContactLastName := COUNT(GROUP,%Closest%.Diff_vchContactLastName);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
