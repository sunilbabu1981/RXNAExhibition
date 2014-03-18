IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'IndividualID','CustomerID','Prefix','FirstName','MiddleInitial','LastName','Suffix','Title','CompanyName','Department','Addr1','Addr2','Addr3','City','State','StateDesc','CountryCode','CountryDesc','PostalCode','PhoneMain','FaxMain','PhoneTollFree','EmailCompany','WebAddressCompany','ValidAddrFlag','PrivacyFlag','CreateDate');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'IndividualID' => 1,'CustomerID' => 2,'Prefix' => 3,'FirstName' => 4,'MiddleInitial' => 5,'LastName' => 6,'Suffix' => 7,'Title' => 8,'CompanyName' => 9,'Department' => 10,'Addr1' => 11,'Addr2' => 12,'Addr3' => 13,'City' => 14,'State' => 15,'StateDesc' => 16,'CountryCode' => 17,'CountryDesc' => 18,'PostalCode' => 19,'PhoneMain' => 20,'FaxMain' => 21,'PhoneTollFree' => 22,'EmailCompany' => 23,'WebAddressCompany' => 24,'ValidAddrFlag' => 25,'PrivacyFlag' => 26,'CreateDate' => 27,0);
//Individual field level validation
EXPORT Make_IndividualID(SALT28.StrType s0) := s0;
EXPORT InValid_IndividualID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_IndividualID(UNSIGNED1 wh) := '';
EXPORT Make_CustomerID(SALT28.StrType s0) := s0;
EXPORT InValid_CustomerID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CustomerID(UNSIGNED1 wh) := '';
EXPORT Make_Prefix(SALT28.StrType s0) := s0;
EXPORT InValid_Prefix(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Prefix(UNSIGNED1 wh) := '';
EXPORT Make_FirstName(SALT28.StrType s0) := s0;
EXPORT InValid_FirstName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FirstName(UNSIGNED1 wh) := '';
EXPORT Make_MiddleInitial(SALT28.StrType s0) := s0;
EXPORT InValid_MiddleInitial(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_MiddleInitial(UNSIGNED1 wh) := '';
EXPORT Make_LastName(SALT28.StrType s0) := s0;
EXPORT InValid_LastName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LastName(UNSIGNED1 wh) := '';
EXPORT Make_Suffix(SALT28.StrType s0) := s0;
EXPORT InValid_Suffix(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Suffix(UNSIGNED1 wh) := '';
EXPORT Make_Title(SALT28.StrType s0) := s0;
EXPORT InValid_Title(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Title(UNSIGNED1 wh) := '';
EXPORT Make_CompanyName(SALT28.StrType s0) := s0;
EXPORT InValid_CompanyName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CompanyName(UNSIGNED1 wh) := '';
EXPORT Make_Department(SALT28.StrType s0) := s0;
EXPORT InValid_Department(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Department(UNSIGNED1 wh) := '';
EXPORT Make_Addr1(SALT28.StrType s0) := s0;
EXPORT InValid_Addr1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Addr1(UNSIGNED1 wh) := '';
EXPORT Make_Addr2(SALT28.StrType s0) := s0;
EXPORT InValid_Addr2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Addr2(UNSIGNED1 wh) := '';
EXPORT Make_Addr3(SALT28.StrType s0) := s0;
EXPORT InValid_Addr3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Addr3(UNSIGNED1 wh) := '';
EXPORT Make_City(SALT28.StrType s0) := s0;
EXPORT InValid_City(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_City(UNSIGNED1 wh) := '';
EXPORT Make_State(SALT28.StrType s0) := s0;
EXPORT InValid_State(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_State(UNSIGNED1 wh) := '';
EXPORT Make_StateDesc(SALT28.StrType s0) := s0;
EXPORT InValid_StateDesc(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_StateDesc(UNSIGNED1 wh) := '';
EXPORT Make_CountryCode(SALT28.StrType s0) := s0;
EXPORT InValid_CountryCode(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CountryCode(UNSIGNED1 wh) := '';
EXPORT Make_CountryDesc(SALT28.StrType s0) := s0;
EXPORT InValid_CountryDesc(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CountryDesc(UNSIGNED1 wh) := '';
EXPORT Make_PostalCode(SALT28.StrType s0) := s0;
EXPORT InValid_PostalCode(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PostalCode(UNSIGNED1 wh) := '';
EXPORT Make_PhoneMain(SALT28.StrType s0) := s0;
EXPORT InValid_PhoneMain(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PhoneMain(UNSIGNED1 wh) := '';
EXPORT Make_FaxMain(SALT28.StrType s0) := s0;
EXPORT InValid_FaxMain(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_FaxMain(UNSIGNED1 wh) := '';
EXPORT Make_PhoneTollFree(SALT28.StrType s0) := s0;
EXPORT InValid_PhoneTollFree(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PhoneTollFree(UNSIGNED1 wh) := '';
EXPORT Make_EmailCompany(SALT28.StrType s0) := s0;
EXPORT InValid_EmailCompany(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_EmailCompany(UNSIGNED1 wh) := '';
EXPORT Make_WebAddressCompany(SALT28.StrType s0) := s0;
EXPORT InValid_WebAddressCompany(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_WebAddressCompany(UNSIGNED1 wh) := '';
EXPORT Make_ValidAddrFlag(SALT28.StrType s0) := s0;
EXPORT InValid_ValidAddrFlag(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ValidAddrFlag(UNSIGNED1 wh) := '';
EXPORT Make_PrivacyFlag(SALT28.StrType s0) := s0;
EXPORT InValid_PrivacyFlag(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PrivacyFlag(UNSIGNED1 wh) := '';
EXPORT Make_CreateDate(SALT28.StrType s0) := s0;
EXPORT InValid_CreateDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CreateDate(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractContacts;
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
    BOOLEAN Diff_IndividualID;
    BOOLEAN Diff_CustomerID;
    BOOLEAN Diff_Prefix;
    BOOLEAN Diff_FirstName;
    BOOLEAN Diff_MiddleInitial;
    BOOLEAN Diff_LastName;
    BOOLEAN Diff_Suffix;
    BOOLEAN Diff_Title;
    BOOLEAN Diff_CompanyName;
    BOOLEAN Diff_Department;
    BOOLEAN Diff_Addr1;
    BOOLEAN Diff_Addr2;
    BOOLEAN Diff_Addr3;
    BOOLEAN Diff_City;
    BOOLEAN Diff_State;
    BOOLEAN Diff_StateDesc;
    BOOLEAN Diff_CountryCode;
    BOOLEAN Diff_CountryDesc;
    BOOLEAN Diff_PostalCode;
    BOOLEAN Diff_PhoneMain;
    BOOLEAN Diff_FaxMain;
    BOOLEAN Diff_PhoneTollFree;
    BOOLEAN Diff_EmailCompany;
    BOOLEAN Diff_WebAddressCompany;
    BOOLEAN Diff_ValidAddrFlag;
    BOOLEAN Diff_PrivacyFlag;
    BOOLEAN Diff_CreateDate;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_IndividualID := le.IndividualID <> ri.IndividualID;
    SELF.Diff_CustomerID := le.CustomerID <> ri.CustomerID;
    SELF.Diff_Prefix := le.Prefix <> ri.Prefix;
    SELF.Diff_FirstName := le.FirstName <> ri.FirstName;
    SELF.Diff_MiddleInitial := le.MiddleInitial <> ri.MiddleInitial;
    SELF.Diff_LastName := le.LastName <> ri.LastName;
    SELF.Diff_Suffix := le.Suffix <> ri.Suffix;
    SELF.Diff_Title := le.Title <> ri.Title;
    SELF.Diff_CompanyName := le.CompanyName <> ri.CompanyName;
    SELF.Diff_Department := le.Department <> ri.Department;
    SELF.Diff_Addr1 := le.Addr1 <> ri.Addr1;
    SELF.Diff_Addr2 := le.Addr2 <> ri.Addr2;
    SELF.Diff_Addr3 := le.Addr3 <> ri.Addr3;
    SELF.Diff_City := le.City <> ri.City;
    SELF.Diff_State := le.State <> ri.State;
    SELF.Diff_StateDesc := le.StateDesc <> ri.StateDesc;
    SELF.Diff_CountryCode := le.CountryCode <> ri.CountryCode;
    SELF.Diff_CountryDesc := le.CountryDesc <> ri.CountryDesc;
    SELF.Diff_PostalCode := le.PostalCode <> ri.PostalCode;
    SELF.Diff_PhoneMain := le.PhoneMain <> ri.PhoneMain;
    SELF.Diff_FaxMain := le.FaxMain <> ri.FaxMain;
    SELF.Diff_PhoneTollFree := le.PhoneTollFree <> ri.PhoneTollFree;
    SELF.Diff_EmailCompany := le.EmailCompany <> ri.EmailCompany;
    SELF.Diff_WebAddressCompany := le.WebAddressCompany <> ri.WebAddressCompany;
    SELF.Diff_ValidAddrFlag := le.ValidAddrFlag <> ri.ValidAddrFlag;
    SELF.Diff_PrivacyFlag := le.PrivacyFlag <> ri.PrivacyFlag;
    SELF.Diff_CreateDate := le.CreateDate <> ri.CreateDate;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_IndividualID,1,0)+ IF( SELF.Diff_CustomerID,1,0)+ IF( SELF.Diff_Prefix,1,0)+ IF( SELF.Diff_FirstName,1,0)+ IF( SELF.Diff_MiddleInitial,1,0)+ IF( SELF.Diff_LastName,1,0)+ IF( SELF.Diff_Suffix,1,0)+ IF( SELF.Diff_Title,1,0)+ IF( SELF.Diff_CompanyName,1,0)+ IF( SELF.Diff_Department,1,0)+ IF( SELF.Diff_Addr1,1,0)+ IF( SELF.Diff_Addr2,1,0)+ IF( SELF.Diff_Addr3,1,0)+ IF( SELF.Diff_City,1,0)+ IF( SELF.Diff_State,1,0)+ IF( SELF.Diff_StateDesc,1,0)+ IF( SELF.Diff_CountryCode,1,0)+ IF( SELF.Diff_CountryDesc,1,0)+ IF( SELF.Diff_PostalCode,1,0)+ IF( SELF.Diff_PhoneMain,1,0)+ IF( SELF.Diff_FaxMain,1,0)+ IF( SELF.Diff_PhoneTollFree,1,0)+ IF( SELF.Diff_EmailCompany,1,0)+ IF( SELF.Diff_WebAddressCompany,1,0)+ IF( SELF.Diff_ValidAddrFlag,1,0)+ IF( SELF.Diff_PrivacyFlag,1,0)+ IF( SELF.Diff_CreateDate,1,0);
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
    Count_Diff_IndividualID := COUNT(GROUP,%Closest%.Diff_IndividualID);
    Count_Diff_CustomerID := COUNT(GROUP,%Closest%.Diff_CustomerID);
    Count_Diff_Prefix := COUNT(GROUP,%Closest%.Diff_Prefix);
    Count_Diff_FirstName := COUNT(GROUP,%Closest%.Diff_FirstName);
    Count_Diff_MiddleInitial := COUNT(GROUP,%Closest%.Diff_MiddleInitial);
    Count_Diff_LastName := COUNT(GROUP,%Closest%.Diff_LastName);
    Count_Diff_Suffix := COUNT(GROUP,%Closest%.Diff_Suffix);
    Count_Diff_Title := COUNT(GROUP,%Closest%.Diff_Title);
    Count_Diff_CompanyName := COUNT(GROUP,%Closest%.Diff_CompanyName);
    Count_Diff_Department := COUNT(GROUP,%Closest%.Diff_Department);
    Count_Diff_Addr1 := COUNT(GROUP,%Closest%.Diff_Addr1);
    Count_Diff_Addr2 := COUNT(GROUP,%Closest%.Diff_Addr2);
    Count_Diff_Addr3 := COUNT(GROUP,%Closest%.Diff_Addr3);
    Count_Diff_City := COUNT(GROUP,%Closest%.Diff_City);
    Count_Diff_State := COUNT(GROUP,%Closest%.Diff_State);
    Count_Diff_StateDesc := COUNT(GROUP,%Closest%.Diff_StateDesc);
    Count_Diff_CountryCode := COUNT(GROUP,%Closest%.Diff_CountryCode);
    Count_Diff_CountryDesc := COUNT(GROUP,%Closest%.Diff_CountryDesc);
    Count_Diff_PostalCode := COUNT(GROUP,%Closest%.Diff_PostalCode);
    Count_Diff_PhoneMain := COUNT(GROUP,%Closest%.Diff_PhoneMain);
    Count_Diff_FaxMain := COUNT(GROUP,%Closest%.Diff_FaxMain);
    Count_Diff_PhoneTollFree := COUNT(GROUP,%Closest%.Diff_PhoneTollFree);
    Count_Diff_EmailCompany := COUNT(GROUP,%Closest%.Diff_EmailCompany);
    Count_Diff_WebAddressCompany := COUNT(GROUP,%Closest%.Diff_WebAddressCompany);
    Count_Diff_ValidAddrFlag := COUNT(GROUP,%Closest%.Diff_ValidAddrFlag);
    Count_Diff_PrivacyFlag := COUNT(GROUP,%Closest%.Diff_PrivacyFlag);
    Count_Diff_CreateDate := COUNT(GROUP,%Closest%.Diff_CreateDate);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
