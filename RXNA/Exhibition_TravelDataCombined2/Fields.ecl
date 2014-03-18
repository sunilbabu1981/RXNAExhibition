IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'Event','Edition','Category','Attendance_Id','Group_Id','Last_name','First_name','Company','Address1','Address2','City','State','Postal_Code','Country','Email','Phone','Method_of_Housing','Hotel','Arrive','Depart','Hotel_Confirmation','Payment_type','Room_type','Cost','Comments','Special_requests','Share_With','Booker_First_Name','Booker_Last_Name','Email_Address');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'Event' => 1,'Edition' => 2,'Category' => 3,'Attendance_Id' => 4,'Group_Id' => 5,'Last_name' => 6,'First_name' => 7,'Company' => 8,'Address1' => 9,'Address2' => 10,'City' => 11,'State' => 12,'Postal_Code' => 13,'Country' => 14,'Email' => 15,'Phone' => 16,'Method_of_Housing' => 17,'Hotel' => 18,'Arrive' => 19,'Depart' => 20,'Hotel_Confirmation' => 21,'Payment_type' => 22,'Room_type' => 23,'Cost' => 24,'Comments' => 25,'Special_requests' => 26,'Share_With' => 27,'Booker_First_Name' => 28,'Booker_Last_Name' => 29,'Email_Address' => 30,0);
//Individual field level validation
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_Category(SALT28.StrType s0) := s0;
EXPORT InValid_Category(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Category(UNSIGNED1 wh) := '';
EXPORT Make_Attendance_Id(SALT28.StrType s0) := s0;
EXPORT InValid_Attendance_Id(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Attendance_Id(UNSIGNED1 wh) := '';
EXPORT Make_Group_Id(SALT28.StrType s0) := s0;
EXPORT InValid_Group_Id(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Group_Id(UNSIGNED1 wh) := '';
EXPORT Make_Last_name(SALT28.StrType s0) := s0;
EXPORT InValid_Last_name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Last_name(UNSIGNED1 wh) := '';
EXPORT Make_First_name(SALT28.StrType s0) := s0;
EXPORT InValid_First_name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_First_name(UNSIGNED1 wh) := '';
EXPORT Make_Company(SALT28.StrType s0) := s0;
EXPORT InValid_Company(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Company(UNSIGNED1 wh) := '';
EXPORT Make_Address1(SALT28.StrType s0) := s0;
EXPORT InValid_Address1(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address1(UNSIGNED1 wh) := '';
EXPORT Make_Address2(SALT28.StrType s0) := s0;
EXPORT InValid_Address2(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Address2(UNSIGNED1 wh) := '';
EXPORT Make_City(SALT28.StrType s0) := s0;
EXPORT InValid_City(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_City(UNSIGNED1 wh) := '';
EXPORT Make_State(SALT28.StrType s0) := s0;
EXPORT InValid_State(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_State(UNSIGNED1 wh) := '';
EXPORT Make_Postal_Code(SALT28.StrType s0) := s0;
EXPORT InValid_Postal_Code(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Postal_Code(UNSIGNED1 wh) := '';
EXPORT Make_Country(SALT28.StrType s0) := s0;
EXPORT InValid_Country(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Country(UNSIGNED1 wh) := '';
EXPORT Make_Email(SALT28.StrType s0) := s0;
EXPORT InValid_Email(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Email(UNSIGNED1 wh) := '';
EXPORT Make_Phone(SALT28.StrType s0) := s0;
EXPORT InValid_Phone(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Phone(UNSIGNED1 wh) := '';
EXPORT Make_Method_of_Housing(SALT28.StrType s0) := s0;
EXPORT InValid_Method_of_Housing(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Method_of_Housing(UNSIGNED1 wh) := '';
EXPORT Make_Hotel(SALT28.StrType s0) := s0;
EXPORT InValid_Hotel(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Hotel(UNSIGNED1 wh) := '';
EXPORT Make_Arrive(SALT28.StrType s0) := s0;
EXPORT InValid_Arrive(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Arrive(UNSIGNED1 wh) := '';
EXPORT Make_Depart(SALT28.StrType s0) := s0;
EXPORT InValid_Depart(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Depart(UNSIGNED1 wh) := '';
EXPORT Make_Hotel_Confirmation(SALT28.StrType s0) := s0;
EXPORT InValid_Hotel_Confirmation(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Hotel_Confirmation(UNSIGNED1 wh) := '';
EXPORT Make_Payment_type(SALT28.StrType s0) := s0;
EXPORT InValid_Payment_type(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Payment_type(UNSIGNED1 wh) := '';
EXPORT Make_Room_type(SALT28.StrType s0) := s0;
EXPORT InValid_Room_type(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Room_type(UNSIGNED1 wh) := '';
EXPORT Make_Cost(SALT28.StrType s0) := s0;
EXPORT InValid_Cost(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Cost(UNSIGNED1 wh) := '';
EXPORT Make_Comments(SALT28.StrType s0) := s0;
EXPORT InValid_Comments(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Comments(UNSIGNED1 wh) := '';
EXPORT Make_Special_requests(SALT28.StrType s0) := s0;
EXPORT InValid_Special_requests(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Special_requests(UNSIGNED1 wh) := '';
EXPORT Make_Share_With(SALT28.StrType s0) := s0;
EXPORT InValid_Share_With(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Share_With(UNSIGNED1 wh) := '';
EXPORT Make_Booker_First_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Booker_First_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booker_First_Name(UNSIGNED1 wh) := '';
EXPORT Make_Booker_Last_Name(SALT28.StrType s0) := s0;
EXPORT InValid_Booker_Last_Name(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booker_Last_Name(UNSIGNED1 wh) := '';
EXPORT Make_Email_Address(SALT28.StrType s0) := s0;
EXPORT InValid_Email_Address(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Email_Address(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_TravelDataCombined2;
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
    BOOLEAN Diff_Category;
    BOOLEAN Diff_Attendance_Id;
    BOOLEAN Diff_Group_Id;
    BOOLEAN Diff_Last_name;
    BOOLEAN Diff_First_name;
    BOOLEAN Diff_Company;
    BOOLEAN Diff_Address1;
    BOOLEAN Diff_Address2;
    BOOLEAN Diff_City;
    BOOLEAN Diff_State;
    BOOLEAN Diff_Postal_Code;
    BOOLEAN Diff_Country;
    BOOLEAN Diff_Email;
    BOOLEAN Diff_Phone;
    BOOLEAN Diff_Method_of_Housing;
    BOOLEAN Diff_Hotel;
    BOOLEAN Diff_Arrive;
    BOOLEAN Diff_Depart;
    BOOLEAN Diff_Hotel_Confirmation;
    BOOLEAN Diff_Payment_type;
    BOOLEAN Diff_Room_type;
    BOOLEAN Diff_Cost;
    BOOLEAN Diff_Comments;
    BOOLEAN Diff_Special_requests;
    BOOLEAN Diff_Share_With;
    BOOLEAN Diff_Booker_First_Name;
    BOOLEAN Diff_Booker_Last_Name;
    BOOLEAN Diff_Email_Address;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_Category := le.Category <> ri.Category;
    SELF.Diff_Attendance_Id := le.Attendance_Id <> ri.Attendance_Id;
    SELF.Diff_Group_Id := le.Group_Id <> ri.Group_Id;
    SELF.Diff_Last_name := le.Last_name <> ri.Last_name;
    SELF.Diff_First_name := le.First_name <> ri.First_name;
    SELF.Diff_Company := le.Company <> ri.Company;
    SELF.Diff_Address1 := le.Address1 <> ri.Address1;
    SELF.Diff_Address2 := le.Address2 <> ri.Address2;
    SELF.Diff_City := le.City <> ri.City;
    SELF.Diff_State := le.State <> ri.State;
    SELF.Diff_Postal_Code := le.Postal_Code <> ri.Postal_Code;
    SELF.Diff_Country := le.Country <> ri.Country;
    SELF.Diff_Email := le.Email <> ri.Email;
    SELF.Diff_Phone := le.Phone <> ri.Phone;
    SELF.Diff_Method_of_Housing := le.Method_of_Housing <> ri.Method_of_Housing;
    SELF.Diff_Hotel := le.Hotel <> ri.Hotel;
    SELF.Diff_Arrive := le.Arrive <> ri.Arrive;
    SELF.Diff_Depart := le.Depart <> ri.Depart;
    SELF.Diff_Hotel_Confirmation := le.Hotel_Confirmation <> ri.Hotel_Confirmation;
    SELF.Diff_Payment_type := le.Payment_type <> ri.Payment_type;
    SELF.Diff_Room_type := le.Room_type <> ri.Room_type;
    SELF.Diff_Cost := le.Cost <> ri.Cost;
    SELF.Diff_Comments := le.Comments <> ri.Comments;
    SELF.Diff_Special_requests := le.Special_requests <> ri.Special_requests;
    SELF.Diff_Share_With := le.Share_With <> ri.Share_With;
    SELF.Diff_Booker_First_Name := le.Booker_First_Name <> ri.Booker_First_Name;
    SELF.Diff_Booker_Last_Name := le.Booker_Last_Name <> ri.Booker_Last_Name;
    SELF.Diff_Email_Address := le.Email_Address <> ri.Email_Address;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_Category,1,0)+ IF( SELF.Diff_Attendance_Id,1,0)+ IF( SELF.Diff_Group_Id,1,0)+ IF( SELF.Diff_Last_name,1,0)+ IF( SELF.Diff_First_name,1,0)+ IF( SELF.Diff_Company,1,0)+ IF( SELF.Diff_Address1,1,0)+ IF( SELF.Diff_Address2,1,0)+ IF( SELF.Diff_City,1,0)+ IF( SELF.Diff_State,1,0)+ IF( SELF.Diff_Postal_Code,1,0)+ IF( SELF.Diff_Country,1,0)+ IF( SELF.Diff_Email,1,0)+ IF( SELF.Diff_Phone,1,0)+ IF( SELF.Diff_Method_of_Housing,1,0)+ IF( SELF.Diff_Hotel,1,0)+ IF( SELF.Diff_Arrive,1,0)+ IF( SELF.Diff_Depart,1,0)+ IF( SELF.Diff_Hotel_Confirmation,1,0)+ IF( SELF.Diff_Payment_type,1,0)+ IF( SELF.Diff_Room_type,1,0)+ IF( SELF.Diff_Cost,1,0)+ IF( SELF.Diff_Comments,1,0)+ IF( SELF.Diff_Special_requests,1,0)+ IF( SELF.Diff_Share_With,1,0)+ IF( SELF.Diff_Booker_First_Name,1,0)+ IF( SELF.Diff_Booker_Last_Name,1,0)+ IF( SELF.Diff_Email_Address,1,0);
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
    Count_Diff_Category := COUNT(GROUP,%Closest%.Diff_Category);
    Count_Diff_Attendance_Id := COUNT(GROUP,%Closest%.Diff_Attendance_Id);
    Count_Diff_Group_Id := COUNT(GROUP,%Closest%.Diff_Group_Id);
    Count_Diff_Last_name := COUNT(GROUP,%Closest%.Diff_Last_name);
    Count_Diff_First_name := COUNT(GROUP,%Closest%.Diff_First_name);
    Count_Diff_Company := COUNT(GROUP,%Closest%.Diff_Company);
    Count_Diff_Address1 := COUNT(GROUP,%Closest%.Diff_Address1);
    Count_Diff_Address2 := COUNT(GROUP,%Closest%.Diff_Address2);
    Count_Diff_City := COUNT(GROUP,%Closest%.Diff_City);
    Count_Diff_State := COUNT(GROUP,%Closest%.Diff_State);
    Count_Diff_Postal_Code := COUNT(GROUP,%Closest%.Diff_Postal_Code);
    Count_Diff_Country := COUNT(GROUP,%Closest%.Diff_Country);
    Count_Diff_Email := COUNT(GROUP,%Closest%.Diff_Email);
    Count_Diff_Phone := COUNT(GROUP,%Closest%.Diff_Phone);
    Count_Diff_Method_of_Housing := COUNT(GROUP,%Closest%.Diff_Method_of_Housing);
    Count_Diff_Hotel := COUNT(GROUP,%Closest%.Diff_Hotel);
    Count_Diff_Arrive := COUNT(GROUP,%Closest%.Diff_Arrive);
    Count_Diff_Depart := COUNT(GROUP,%Closest%.Diff_Depart);
    Count_Diff_Hotel_Confirmation := COUNT(GROUP,%Closest%.Diff_Hotel_Confirmation);
    Count_Diff_Payment_type := COUNT(GROUP,%Closest%.Diff_Payment_type);
    Count_Diff_Room_type := COUNT(GROUP,%Closest%.Diff_Room_type);
    Count_Diff_Cost := COUNT(GROUP,%Closest%.Diff_Cost);
    Count_Diff_Comments := COUNT(GROUP,%Closest%.Diff_Comments);
    Count_Diff_Special_requests := COUNT(GROUP,%Closest%.Diff_Special_requests);
    Count_Diff_Share_With := COUNT(GROUP,%Closest%.Diff_Share_With);
    Count_Diff_Booker_First_Name := COUNT(GROUP,%Closest%.Diff_Booker_First_Name);
    Count_Diff_Booker_Last_Name := COUNT(GROUP,%Closest%.Diff_Booker_Last_Name);
    Count_Diff_Email_Address := COUNT(GROUP,%Closest%.Diff_Email_Address);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
