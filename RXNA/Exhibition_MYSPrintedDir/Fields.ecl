IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','Exhibitor_ID','Company_ID','Booth','Company_Name','Alternate_Name','Address','Address_2','Address_3','City','State','Zip','Phone','Toll_Free_Phone','Fax1','Fax2','Toll_Free_Fax','Website','Description','Product_Categories','New_Exhibitor','SIA_Member','Facebook','Twitter','LinkedIn','Print_Status','Show_Specials','New_Products','New_Product_Gallery');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'Exhibitor_ID' => 3,'Company_ID' => 4,'Booth' => 5,'Company_Name' => 6,'Alternate_Name' => 7,'Address' => 8,'Address_2' => 9,'Address_3' => 10,'City' => 11,'State' => 12,'Zip' => 13,'Phone' => 14,'Toll_Free_Phone' => 15,'Fax1' => 16,'Fax2' => 17,'Toll_Free_Fax' => 18,'Website' => 19,'Description' => 20,'Product_Categories' => 21,'New_Exhibitor' => 22,'SIA_Member' => 23,'Facebook' => 24,'Twitter' => 25,'LinkedIn' => 26,'Print_Status' => 27,'Show_Specials' => 28,'New_Products' => 29,'New_Product_Gallery' => 30,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_Exhibitor_ID(SALT28.StrType s0) := s0;
EXPORT InValid_Exhibitor_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Exhibitor_ID(UNSIGNED1 wh) := '';
EXPORT Make_Company_ID(SALT28.StrType s0) := s0;
EXPORT InValid_Company_ID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Company_ID(UNSIGNED1 wh) := '';
EXPORT Make_Booth(SALT28.StrType s0) := s0;
EXPORT InValid_Booth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth(UNSIGNED1 wh) := '';
EXPORT Make_Company_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Company_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Company_Name(UNSIGNED1 wh) := '';
EXPORT Make_Alternate_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Alternate_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Alternate_Name(UNSIGNED1 wh) := '';
EXPORT Make_Address(SALT28.StrType s0) := s0;
EXPORT InValid_Address(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address(UNSIGNED1 wh) := '';
EXPORT Make_Address_2(SALT28.StrType s0) := s0;
EXPORT InValid_Address_2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address_2(UNSIGNED1 wh) := '';
EXPORT Make_Address_3(SALT28.StrType s0) := s0;
EXPORT InValid_Address_3(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address_3(UNSIGNED1 wh) := '';
EXPORT Make_City(SALT28.StrType s0) := s0;
EXPORT InValid_City(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_City(UNSIGNED1 wh) := '';
EXPORT Make_State(SALT28.StrType s0) := s0;
EXPORT InValid_State(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_State(UNSIGNED1 wh) := '';
EXPORT Make_Zip(SALT28.StrType s0) := s0;
EXPORT InValid_Zip(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Zip(UNSIGNED1 wh) := '';
EXPORT Make_Phone(SALT28.StrType s0) := s0;
EXPORT InValid_Phone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Phone(UNSIGNED1 wh) := '';
EXPORT Make_Toll_Free_Phone(SALT28.StrType s0) := s0;
EXPORT InValid_Toll_Free_Phone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Toll_Free_Phone(UNSIGNED1 wh) := '';
EXPORT Make_Fax1(SALT28.StrType s0) := s0;
EXPORT InValid_Fax1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Fax1(UNSIGNED1 wh) := '';
EXPORT Make_Fax2(SALT28.StrType s0) := s0;
EXPORT InValid_Fax2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Fax2(UNSIGNED1 wh) := '';
EXPORT Make_Toll_Free_Fax(SALT28.StrType s0) := s0;
EXPORT InValid_Toll_Free_Fax(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Toll_Free_Fax(UNSIGNED1 wh) := '';
EXPORT Make_Website(SALT28.StrType s0) := s0;
EXPORT InValid_Website(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Website(UNSIGNED1 wh) := '';
EXPORT Make_Description(SALT28.StrType s0) := s0;
EXPORT InValid_Description(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Description(UNSIGNED1 wh) := '';
EXPORT Make_Product_Categories(SALT28.StrType s0) := s0;
EXPORT InValid_Product_Categories(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Product_Categories(UNSIGNED1 wh) := '';
EXPORT Make_New_Exhibitor(SALT28.StrType s0) := s0;
EXPORT InValid_New_Exhibitor(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_New_Exhibitor(UNSIGNED1 wh) := '';
EXPORT Make_SIA_Member(SALT28.StrType s0) := s0;
EXPORT InValid_SIA_Member(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SIA_Member(UNSIGNED1 wh) := '';
EXPORT Make_Facebook(SALT28.StrType s0) := s0;
EXPORT InValid_Facebook(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Facebook(UNSIGNED1 wh) := '';
EXPORT Make_Twitter(SALT28.StrType s0) := s0;
EXPORT InValid_Twitter(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Twitter(UNSIGNED1 wh) := '';
EXPORT Make_LinkedIn(SALT28.StrType s0) := s0;
EXPORT InValid_LinkedIn(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_LinkedIn(UNSIGNED1 wh) := '';
EXPORT Make_Print_Status(SALT28.StrType s0) := s0;
EXPORT InValid_Print_Status(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Print_Status(UNSIGNED1 wh) := '';
EXPORT Make_Show_Specials(SALT28.StrType s0) := s0;
EXPORT InValid_Show_Specials(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Show_Specials(UNSIGNED1 wh) := '';
EXPORT Make_New_Products(SALT28.StrType s0) := s0;
EXPORT InValid_New_Products(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_New_Products(UNSIGNED1 wh) := '';
EXPORT Make_New_Product_Gallery(SALT28.StrType s0) := s0;
EXPORT InValid_New_Product_Gallery(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_New_Product_Gallery(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_MYSPrintedDir;
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
    BOOLEAN Diff_Exhibitor_ID;
    BOOLEAN Diff_Company_ID;
    BOOLEAN Diff_Booth;
    BOOLEAN Diff_Company_Name;
    BOOLEAN Diff_Alternate_Name;
    BOOLEAN Diff_Address;
    BOOLEAN Diff_Address_2;
    BOOLEAN Diff_Address_3;
    BOOLEAN Diff_City;
    BOOLEAN Diff_State;
    BOOLEAN Diff_Zip;
    BOOLEAN Diff_Phone;
    BOOLEAN Diff_Toll_Free_Phone;
    BOOLEAN Diff_Fax1;
    BOOLEAN Diff_Fax2;
    BOOLEAN Diff_Toll_Free_Fax;
    BOOLEAN Diff_Website;
    BOOLEAN Diff_Description;
    BOOLEAN Diff_Product_Categories;
    BOOLEAN Diff_New_Exhibitor;
    BOOLEAN Diff_SIA_Member;
    BOOLEAN Diff_Facebook;
    BOOLEAN Diff_Twitter;
    BOOLEAN Diff_LinkedIn;
    BOOLEAN Diff_Print_Status;
    BOOLEAN Diff_Show_Specials;
    BOOLEAN Diff_New_Products;
    BOOLEAN Diff_New_Product_Gallery;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_Exhibitor_ID := le.Exhibitor_ID <> ri.Exhibitor_ID;
    SELF.Diff_Company_ID := le.Company_ID <> ri.Company_ID;
    SELF.Diff_Booth := le.Booth <> ri.Booth;
    SELF.Diff_Company_Name := le.Company_Name <> ri.Company_Name;
    SELF.Diff_Alternate_Name := le.Alternate_Name <> ri.Alternate_Name;
    SELF.Diff_Address := le.Address <> ri.Address;
    SELF.Diff_Address_2 := le.Address_2 <> ri.Address_2;
    SELF.Diff_Address_3 := le.Address_3 <> ri.Address_3;
    SELF.Diff_City := le.City <> ri.City;
    SELF.Diff_State := le.State <> ri.State;
    SELF.Diff_Zip := le.Zip <> ri.Zip;
    SELF.Diff_Phone := le.Phone <> ri.Phone;
    SELF.Diff_Toll_Free_Phone := le.Toll_Free_Phone <> ri.Toll_Free_Phone;
    SELF.Diff_Fax1 := le.Fax1 <> ri.Fax1;
    SELF.Diff_Fax2 := le.Fax2 <> ri.Fax2;
    SELF.Diff_Toll_Free_Fax := le.Toll_Free_Fax <> ri.Toll_Free_Fax;
    SELF.Diff_Website := le.Website <> ri.Website;
    SELF.Diff_Description := le.Description <> ri.Description;
    SELF.Diff_Product_Categories := le.Product_Categories <> ri.Product_Categories;
    SELF.Diff_New_Exhibitor := le.New_Exhibitor <> ri.New_Exhibitor;
    SELF.Diff_SIA_Member := le.SIA_Member <> ri.SIA_Member;
    SELF.Diff_Facebook := le.Facebook <> ri.Facebook;
    SELF.Diff_Twitter := le.Twitter <> ri.Twitter;
    SELF.Diff_LinkedIn := le.LinkedIn <> ri.LinkedIn;
    SELF.Diff_Print_Status := le.Print_Status <> ri.Print_Status;
    SELF.Diff_Show_Specials := le.Show_Specials <> ri.Show_Specials;
    SELF.Diff_New_Products := le.New_Products <> ri.New_Products;
    SELF.Diff_New_Product_Gallery := le.New_Product_Gallery <> ri.New_Product_Gallery;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_Exhibitor_ID,1,0)+ IF( SELF.Diff_Company_ID,1,0)+ IF( SELF.Diff_Booth,1,0)+ IF( SELF.Diff_Company_Name,1,0)+ IF( SELF.Diff_Alternate_Name,1,0)+ IF( SELF.Diff_Address,1,0)+ IF( SELF.Diff_Address_2,1,0)+ IF( SELF.Diff_Address_3,1,0)+ IF( SELF.Diff_City,1,0)+ IF( SELF.Diff_State,1,0)+ IF( SELF.Diff_Zip,1,0)+ IF( SELF.Diff_Phone,1,0)+ IF( SELF.Diff_Toll_Free_Phone,1,0)+ IF( SELF.Diff_Fax1,1,0)+ IF( SELF.Diff_Fax2,1,0)+ IF( SELF.Diff_Toll_Free_Fax,1,0)+ IF( SELF.Diff_Website,1,0)+ IF( SELF.Diff_Description,1,0)+ IF( SELF.Diff_Product_Categories,1,0)+ IF( SELF.Diff_New_Exhibitor,1,0)+ IF( SELF.Diff_SIA_Member,1,0)+ IF( SELF.Diff_Facebook,1,0)+ IF( SELF.Diff_Twitter,1,0)+ IF( SELF.Diff_LinkedIn,1,0)+ IF( SELF.Diff_Print_Status,1,0)+ IF( SELF.Diff_Show_Specials,1,0)+ IF( SELF.Diff_New_Products,1,0)+ IF( SELF.Diff_New_Product_Gallery,1,0);
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
    Count_Diff_Exhibitor_ID := COUNT(GROUP,%Closest%.Diff_Exhibitor_ID);
    Count_Diff_Company_ID := COUNT(GROUP,%Closest%.Diff_Company_ID);
    Count_Diff_Booth := COUNT(GROUP,%Closest%.Diff_Booth);
    Count_Diff_Company_Name := COUNT(GROUP,%Closest%.Diff_Company_Name);
    Count_Diff_Alternate_Name := COUNT(GROUP,%Closest%.Diff_Alternate_Name);
    Count_Diff_Address := COUNT(GROUP,%Closest%.Diff_Address);
    Count_Diff_Address_2 := COUNT(GROUP,%Closest%.Diff_Address_2);
    Count_Diff_Address_3 := COUNT(GROUP,%Closest%.Diff_Address_3);
    Count_Diff_City := COUNT(GROUP,%Closest%.Diff_City);
    Count_Diff_State := COUNT(GROUP,%Closest%.Diff_State);
    Count_Diff_Zip := COUNT(GROUP,%Closest%.Diff_Zip);
    Count_Diff_Phone := COUNT(GROUP,%Closest%.Diff_Phone);
    Count_Diff_Toll_Free_Phone := COUNT(GROUP,%Closest%.Diff_Toll_Free_Phone);
    Count_Diff_Fax1 := COUNT(GROUP,%Closest%.Diff_Fax1);
    Count_Diff_Fax2 := COUNT(GROUP,%Closest%.Diff_Fax2);
    Count_Diff_Toll_Free_Fax := COUNT(GROUP,%Closest%.Diff_Toll_Free_Fax);
    Count_Diff_Website := COUNT(GROUP,%Closest%.Diff_Website);
    Count_Diff_Description := COUNT(GROUP,%Closest%.Diff_Description);
    Count_Diff_Product_Categories := COUNT(GROUP,%Closest%.Diff_Product_Categories);
    Count_Diff_New_Exhibitor := COUNT(GROUP,%Closest%.Diff_New_Exhibitor);
    Count_Diff_SIA_Member := COUNT(GROUP,%Closest%.Diff_SIA_Member);
    Count_Diff_Facebook := COUNT(GROUP,%Closest%.Diff_Facebook);
    Count_Diff_Twitter := COUNT(GROUP,%Closest%.Diff_Twitter);
    Count_Diff_LinkedIn := COUNT(GROUP,%Closest%.Diff_LinkedIn);
    Count_Diff_Print_Status := COUNT(GROUP,%Closest%.Diff_Print_Status);
    Count_Diff_Show_Specials := COUNT(GROUP,%Closest%.Diff_Show_Specials);
    Count_Diff_New_Products := COUNT(GROUP,%Closest%.Diff_New_Products);
    Count_Diff_New_Product_Gallery := COUNT(GROUP,%Closest%.Diff_New_Product_Gallery);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
