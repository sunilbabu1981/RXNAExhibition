IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'iExhibitorId','iPrismCompanyId','chShowCd','iShowYear','vchBooth','chAssocMemberFlag','vchExhibitorName1','vchExhibitorName2','vchExhibitorName3','Address1','Address2','Address3','City','RegionName','Country','PostalCode','MainPhone','TollFreePhone','Fax','vchTollFreeFax','Email','WebAddress','txtProductDesc','vchPavillion','vchHall','vchPage','txtSpecials','txtRepresentatives','txtNewProducts','vchExporting','vchBusinessInterest','vchCrossRef1','vchCrossRef2','vchCrossRef3','vchCrossRef4','iParentCompanyId');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'iExhibitorId' => 1,'iPrismCompanyId' => 2,'chShowCd' => 3,'iShowYear' => 4,'vchBooth' => 5,'chAssocMemberFlag' => 6,'vchExhibitorName1' => 7,'vchExhibitorName2' => 8,'vchExhibitorName3' => 9,'Address1' => 10,'Address2' => 11,'Address3' => 12,'City' => 13,'RegionName' => 14,'Country' => 15,'PostalCode' => 16,'MainPhone' => 17,'TollFreePhone' => 18,'Fax' => 19,'vchTollFreeFax' => 20,'Email' => 21,'WebAddress' => 22,'txtProductDesc' => 23,'vchPavillion' => 24,'vchHall' => 25,'vchPage' => 26,'txtSpecials' => 27,'txtRepresentatives' => 28,'txtNewProducts' => 29,'vchExporting' => 30,'vchBusinessInterest' => 31,'vchCrossRef1' => 32,'vchCrossRef2' => 33,'vchCrossRef3' => 34,'vchCrossRef4' => 35,'iParentCompanyId' => 36,0);
//Individual field level validation
EXPORT Make_iExhibitorId(SALT28.StrType s0) := s0;
EXPORT InValid_iExhibitorId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iExhibitorId(UNSIGNED1 wh) := '';
EXPORT Make_iPrismCompanyId(SALT28.StrType s0) := s0;
EXPORT InValid_iPrismCompanyId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iPrismCompanyId(UNSIGNED1 wh) := '';
EXPORT Make_chShowCd(SALT28.StrType s0) := s0;
EXPORT InValid_chShowCd(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_chShowCd(UNSIGNED1 wh) := '';
EXPORT Make_iShowYear(SALT28.StrType s0) := s0;
EXPORT InValid_iShowYear(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iShowYear(UNSIGNED1 wh) := '';
EXPORT Make_vchBooth(SALT28.StrType s0) := s0;
EXPORT InValid_vchBooth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchBooth(UNSIGNED1 wh) := '';
EXPORT Make_chAssocMemberFlag(SALT28.StrType s0) := s0;
EXPORT InValid_chAssocMemberFlag(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_chAssocMemberFlag(UNSIGNED1 wh) := '';
EXPORT Make_vchExhibitorName1(SALT28.StrType s0) := s0;
EXPORT InValid_vchExhibitorName1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchExhibitorName1(UNSIGNED1 wh) := '';
EXPORT Make_vchExhibitorName2(SALT28.StrType s0) := s0;
EXPORT InValid_vchExhibitorName2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchExhibitorName2(UNSIGNED1 wh) := '';
EXPORT Make_vchExhibitorName3(SALT28.StrType s0) := s0;
EXPORT InValid_vchExhibitorName3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchExhibitorName3(UNSIGNED1 wh) := '';
EXPORT Make_Address1(SALT28.StrType s0) := s0;
EXPORT InValid_Address1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address1(UNSIGNED1 wh) := '';
EXPORT Make_Address2(SALT28.StrType s0) := s0;
EXPORT InValid_Address2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address2(UNSIGNED1 wh) := '';
EXPORT Make_Address3(SALT28.StrType s0) := s0;
EXPORT InValid_Address3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address3(UNSIGNED1 wh) := '';
EXPORT Make_City(SALT28.StrType s0) := s0;
EXPORT InValid_City(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_City(UNSIGNED1 wh) := '';
EXPORT Make_RegionName(SALT28.StrType s0) := s0;
EXPORT InValid_RegionName(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_RegionName(UNSIGNED1 wh) := '';
EXPORT Make_Country(SALT28.StrType s0) := s0;
EXPORT InValid_Country(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Country(UNSIGNED1 wh) := '';
EXPORT Make_PostalCode(SALT28.StrType s0) := s0;
EXPORT InValid_PostalCode(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PostalCode(UNSIGNED1 wh) := '';
EXPORT Make_MainPhone(SALT28.StrType s0) := s0;
EXPORT InValid_MainPhone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_MainPhone(UNSIGNED1 wh) := '';
EXPORT Make_TollFreePhone(SALT28.StrType s0) := s0;
EXPORT InValid_TollFreePhone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TollFreePhone(UNSIGNED1 wh) := '';
EXPORT Make_Fax(SALT28.StrType s0) := s0;
EXPORT InValid_Fax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Fax(UNSIGNED1 wh) := '';
EXPORT Make_vchTollFreeFax(SALT28.StrType s0) := s0;
EXPORT InValid_vchTollFreeFax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchTollFreeFax(UNSIGNED1 wh) := '';
EXPORT Make_Email(SALT28.StrType s0) := s0;
EXPORT InValid_Email(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Email(UNSIGNED1 wh) := '';
EXPORT Make_WebAddress(SALT28.StrType s0) := s0;
EXPORT InValid_WebAddress(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_WebAddress(UNSIGNED1 wh) := '';
EXPORT Make_txtProductDesc(SALT28.StrType s0) := s0;
EXPORT InValid_txtProductDesc(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_txtProductDesc(UNSIGNED1 wh) := '';
EXPORT Make_vchPavillion(SALT28.StrType s0) := s0;
EXPORT InValid_vchPavillion(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchPavillion(UNSIGNED1 wh) := '';
EXPORT Make_vchHall(SALT28.StrType s0) := s0;
EXPORT InValid_vchHall(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchHall(UNSIGNED1 wh) := '';
EXPORT Make_vchPage(SALT28.StrType s0) := s0;
EXPORT InValid_vchPage(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchPage(UNSIGNED1 wh) := '';
EXPORT Make_txtSpecials(SALT28.StrType s0) := s0;
EXPORT InValid_txtSpecials(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_txtSpecials(UNSIGNED1 wh) := '';
EXPORT Make_txtRepresentatives(SALT28.StrType s0) := s0;
EXPORT InValid_txtRepresentatives(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_txtRepresentatives(UNSIGNED1 wh) := '';
EXPORT Make_txtNewProducts(SALT28.StrType s0) := s0;
EXPORT InValid_txtNewProducts(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_txtNewProducts(UNSIGNED1 wh) := '';
EXPORT Make_vchExporting(SALT28.StrType s0) := s0;
EXPORT InValid_vchExporting(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchExporting(UNSIGNED1 wh) := '';
EXPORT Make_vchBusinessInterest(SALT28.StrType s0) := s0;
EXPORT InValid_vchBusinessInterest(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchBusinessInterest(UNSIGNED1 wh) := '';
EXPORT Make_vchCrossRef1(SALT28.StrType s0) := s0;
EXPORT InValid_vchCrossRef1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCrossRef1(UNSIGNED1 wh) := '';
EXPORT Make_vchCrossRef2(SALT28.StrType s0) := s0;
EXPORT InValid_vchCrossRef2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCrossRef2(UNSIGNED1 wh) := '';
EXPORT Make_vchCrossRef3(SALT28.StrType s0) := s0;
EXPORT InValid_vchCrossRef3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCrossRef3(UNSIGNED1 wh) := '';
EXPORT Make_vchCrossRef4(SALT28.StrType s0) := s0;
EXPORT InValid_vchCrossRef4(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_vchCrossRef4(UNSIGNED1 wh) := '';
EXPORT Make_iParentCompanyId(SALT28.StrType s0) := s0;
EXPORT InValid_iParentCompanyId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iParentCompanyId(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_DirectoryExhibitorData;
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
    BOOLEAN Diff_iExhibitorId;
    BOOLEAN Diff_iPrismCompanyId;
    BOOLEAN Diff_chShowCd;
    BOOLEAN Diff_iShowYear;
    BOOLEAN Diff_vchBooth;
    BOOLEAN Diff_chAssocMemberFlag;
    BOOLEAN Diff_vchExhibitorName1;
    BOOLEAN Diff_vchExhibitorName2;
    BOOLEAN Diff_vchExhibitorName3;
    BOOLEAN Diff_Address1;
    BOOLEAN Diff_Address2;
    BOOLEAN Diff_Address3;
    BOOLEAN Diff_City;
    BOOLEAN Diff_RegionName;
    BOOLEAN Diff_Country;
    BOOLEAN Diff_PostalCode;
    BOOLEAN Diff_MainPhone;
    BOOLEAN Diff_TollFreePhone;
    BOOLEAN Diff_Fax;
    BOOLEAN Diff_vchTollFreeFax;
    BOOLEAN Diff_Email;
    BOOLEAN Diff_WebAddress;
    BOOLEAN Diff_txtProductDesc;
    BOOLEAN Diff_vchPavillion;
    BOOLEAN Diff_vchHall;
    BOOLEAN Diff_vchPage;
    BOOLEAN Diff_txtSpecials;
    BOOLEAN Diff_txtRepresentatives;
    BOOLEAN Diff_txtNewProducts;
    BOOLEAN Diff_vchExporting;
    BOOLEAN Diff_vchBusinessInterest;
    BOOLEAN Diff_vchCrossRef1;
    BOOLEAN Diff_vchCrossRef2;
    BOOLEAN Diff_vchCrossRef3;
    BOOLEAN Diff_vchCrossRef4;
    BOOLEAN Diff_iParentCompanyId;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_iExhibitorId := le.iExhibitorId <> ri.iExhibitorId;
    SELF.Diff_iPrismCompanyId := le.iPrismCompanyId <> ri.iPrismCompanyId;
    SELF.Diff_chShowCd := le.chShowCd <> ri.chShowCd;
    SELF.Diff_iShowYear := le.iShowYear <> ri.iShowYear;
    SELF.Diff_vchBooth := le.vchBooth <> ri.vchBooth;
    SELF.Diff_chAssocMemberFlag := le.chAssocMemberFlag <> ri.chAssocMemberFlag;
    SELF.Diff_vchExhibitorName1 := le.vchExhibitorName1 <> ri.vchExhibitorName1;
    SELF.Diff_vchExhibitorName2 := le.vchExhibitorName2 <> ri.vchExhibitorName2;
    SELF.Diff_vchExhibitorName3 := le.vchExhibitorName3 <> ri.vchExhibitorName3;
    SELF.Diff_Address1 := le.Address1 <> ri.Address1;
    SELF.Diff_Address2 := le.Address2 <> ri.Address2;
    SELF.Diff_Address3 := le.Address3 <> ri.Address3;
    SELF.Diff_City := le.City <> ri.City;
    SELF.Diff_RegionName := le.RegionName <> ri.RegionName;
    SELF.Diff_Country := le.Country <> ri.Country;
    SELF.Diff_PostalCode := le.PostalCode <> ri.PostalCode;
    SELF.Diff_MainPhone := le.MainPhone <> ri.MainPhone;
    SELF.Diff_TollFreePhone := le.TollFreePhone <> ri.TollFreePhone;
    SELF.Diff_Fax := le.Fax <> ri.Fax;
    SELF.Diff_vchTollFreeFax := le.vchTollFreeFax <> ri.vchTollFreeFax;
    SELF.Diff_Email := le.Email <> ri.Email;
    SELF.Diff_WebAddress := le.WebAddress <> ri.WebAddress;
    SELF.Diff_txtProductDesc := le.txtProductDesc <> ri.txtProductDesc;
    SELF.Diff_vchPavillion := le.vchPavillion <> ri.vchPavillion;
    SELF.Diff_vchHall := le.vchHall <> ri.vchHall;
    SELF.Diff_vchPage := le.vchPage <> ri.vchPage;
    SELF.Diff_txtSpecials := le.txtSpecials <> ri.txtSpecials;
    SELF.Diff_txtRepresentatives := le.txtRepresentatives <> ri.txtRepresentatives;
    SELF.Diff_txtNewProducts := le.txtNewProducts <> ri.txtNewProducts;
    SELF.Diff_vchExporting := le.vchExporting <> ri.vchExporting;
    SELF.Diff_vchBusinessInterest := le.vchBusinessInterest <> ri.vchBusinessInterest;
    SELF.Diff_vchCrossRef1 := le.vchCrossRef1 <> ri.vchCrossRef1;
    SELF.Diff_vchCrossRef2 := le.vchCrossRef2 <> ri.vchCrossRef2;
    SELF.Diff_vchCrossRef3 := le.vchCrossRef3 <> ri.vchCrossRef3;
    SELF.Diff_vchCrossRef4 := le.vchCrossRef4 <> ri.vchCrossRef4;
    SELF.Diff_iParentCompanyId := le.iParentCompanyId <> ri.iParentCompanyId;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_iExhibitorId,1,0)+ IF( SELF.Diff_iPrismCompanyId,1,0)+ IF( SELF.Diff_chShowCd,1,0)+ IF( SELF.Diff_iShowYear,1,0)+ IF( SELF.Diff_vchBooth,1,0)+ IF( SELF.Diff_chAssocMemberFlag,1,0)+ IF( SELF.Diff_vchExhibitorName1,1,0)+ IF( SELF.Diff_vchExhibitorName2,1,0)+ IF( SELF.Diff_vchExhibitorName3,1,0)+ IF( SELF.Diff_Address1,1,0)+ IF( SELF.Diff_Address2,1,0)+ IF( SELF.Diff_Address3,1,0)+ IF( SELF.Diff_City,1,0)+ IF( SELF.Diff_RegionName,1,0)+ IF( SELF.Diff_Country,1,0)+ IF( SELF.Diff_PostalCode,1,0)+ IF( SELF.Diff_MainPhone,1,0)+ IF( SELF.Diff_TollFreePhone,1,0)+ IF( SELF.Diff_Fax,1,0)+ IF( SELF.Diff_vchTollFreeFax,1,0)+ IF( SELF.Diff_Email,1,0)+ IF( SELF.Diff_WebAddress,1,0)+ IF( SELF.Diff_txtProductDesc,1,0)+ IF( SELF.Diff_vchPavillion,1,0)+ IF( SELF.Diff_vchHall,1,0)+ IF( SELF.Diff_vchPage,1,0)+ IF( SELF.Diff_txtSpecials,1,0)+ IF( SELF.Diff_txtRepresentatives,1,0)+ IF( SELF.Diff_txtNewProducts,1,0)+ IF( SELF.Diff_vchExporting,1,0)+ IF( SELF.Diff_vchBusinessInterest,1,0)+ IF( SELF.Diff_vchCrossRef1,1,0)+ IF( SELF.Diff_vchCrossRef2,1,0)+ IF( SELF.Diff_vchCrossRef3,1,0)+ IF( SELF.Diff_vchCrossRef4,1,0)+ IF( SELF.Diff_iParentCompanyId,1,0);
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
    Count_Diff_iExhibitorId := COUNT(GROUP,%Closest%.Diff_iExhibitorId);
    Count_Diff_iPrismCompanyId := COUNT(GROUP,%Closest%.Diff_iPrismCompanyId);
    Count_Diff_chShowCd := COUNT(GROUP,%Closest%.Diff_chShowCd);
    Count_Diff_iShowYear := COUNT(GROUP,%Closest%.Diff_iShowYear);
    Count_Diff_vchBooth := COUNT(GROUP,%Closest%.Diff_vchBooth);
    Count_Diff_chAssocMemberFlag := COUNT(GROUP,%Closest%.Diff_chAssocMemberFlag);
    Count_Diff_vchExhibitorName1 := COUNT(GROUP,%Closest%.Diff_vchExhibitorName1);
    Count_Diff_vchExhibitorName2 := COUNT(GROUP,%Closest%.Diff_vchExhibitorName2);
    Count_Diff_vchExhibitorName3 := COUNT(GROUP,%Closest%.Diff_vchExhibitorName3);
    Count_Diff_Address1 := COUNT(GROUP,%Closest%.Diff_Address1);
    Count_Diff_Address2 := COUNT(GROUP,%Closest%.Diff_Address2);
    Count_Diff_Address3 := COUNT(GROUP,%Closest%.Diff_Address3);
    Count_Diff_City := COUNT(GROUP,%Closest%.Diff_City);
    Count_Diff_RegionName := COUNT(GROUP,%Closest%.Diff_RegionName);
    Count_Diff_Country := COUNT(GROUP,%Closest%.Diff_Country);
    Count_Diff_PostalCode := COUNT(GROUP,%Closest%.Diff_PostalCode);
    Count_Diff_MainPhone := COUNT(GROUP,%Closest%.Diff_MainPhone);
    Count_Diff_TollFreePhone := COUNT(GROUP,%Closest%.Diff_TollFreePhone);
    Count_Diff_Fax := COUNT(GROUP,%Closest%.Diff_Fax);
    Count_Diff_vchTollFreeFax := COUNT(GROUP,%Closest%.Diff_vchTollFreeFax);
    Count_Diff_Email := COUNT(GROUP,%Closest%.Diff_Email);
    Count_Diff_WebAddress := COUNT(GROUP,%Closest%.Diff_WebAddress);
    Count_Diff_txtProductDesc := COUNT(GROUP,%Closest%.Diff_txtProductDesc);
    Count_Diff_vchPavillion := COUNT(GROUP,%Closest%.Diff_vchPavillion);
    Count_Diff_vchHall := COUNT(GROUP,%Closest%.Diff_vchHall);
    Count_Diff_vchPage := COUNT(GROUP,%Closest%.Diff_vchPage);
    Count_Diff_txtSpecials := COUNT(GROUP,%Closest%.Diff_txtSpecials);
    Count_Diff_txtRepresentatives := COUNT(GROUP,%Closest%.Diff_txtRepresentatives);
    Count_Diff_txtNewProducts := COUNT(GROUP,%Closest%.Diff_txtNewProducts);
    Count_Diff_vchExporting := COUNT(GROUP,%Closest%.Diff_vchExporting);
    Count_Diff_vchBusinessInterest := COUNT(GROUP,%Closest%.Diff_vchBusinessInterest);
    Count_Diff_vchCrossRef1 := COUNT(GROUP,%Closest%.Diff_vchCrossRef1);
    Count_Diff_vchCrossRef2 := COUNT(GROUP,%Closest%.Diff_vchCrossRef2);
    Count_Diff_vchCrossRef3 := COUNT(GROUP,%Closest%.Diff_vchCrossRef3);
    Count_Diff_vchCrossRef4 := COUNT(GROUP,%Closest%.Diff_vchCrossRef4);
    Count_Diff_iParentCompanyId := COUNT(GROUP,%Closest%.Diff_iParentCompanyId);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
