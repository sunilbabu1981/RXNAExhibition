EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Show = '',Input_Year = '',Input_Category = '',Input_Attendance_Id = '',Input_Group_Id = '',Input_Last_name = '',Input_First_name = '',Input_Company = '',Input_Address1 = '',Input_Address2 = '',Input_City = '',Input_State = '',Input_Postal_Code = '',Input_Country = '',Input_Email = '',Input_Phone = '',Input_Method_of_Housing = '',Input_Hotel = '',Input_Arrive = '',Input_Depart = '',Input_Hotel_Confirmation = '',Input_Payment_type = '',Input_Room_type = '',Input_Cost = '',Input_Comments = '',Input_Special_requests = '',Input_Share_With = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_TravelDataCombined;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_Show)='' )
      '' 
    #ELSE
        IF( le.Input_Show = (TYPEOF(le.Input_Show))'','',':Show')
    #END
+    #IF( #TEXT(Input_Year)='' )
      '' 
    #ELSE
        IF( le.Input_Year = (TYPEOF(le.Input_Year))'','',':Year')
    #END
+    #IF( #TEXT(Input_Category)='' )
      '' 
    #ELSE
        IF( le.Input_Category = (TYPEOF(le.Input_Category))'','',':Category')
    #END
+    #IF( #TEXT(Input_Attendance_Id)='' )
      '' 
    #ELSE
        IF( le.Input_Attendance_Id = (TYPEOF(le.Input_Attendance_Id))'','',':Attendance_Id')
    #END
+    #IF( #TEXT(Input_Group_Id)='' )
      '' 
    #ELSE
        IF( le.Input_Group_Id = (TYPEOF(le.Input_Group_Id))'','',':Group_Id')
    #END
+    #IF( #TEXT(Input_Last_name)='' )
      '' 
    #ELSE
        IF( le.Input_Last_name = (TYPEOF(le.Input_Last_name))'','',':Last_name')
    #END
+    #IF( #TEXT(Input_First_name)='' )
      '' 
    #ELSE
        IF( le.Input_First_name = (TYPEOF(le.Input_First_name))'','',':First_name')
    #END
+    #IF( #TEXT(Input_Company)='' )
      '' 
    #ELSE
        IF( le.Input_Company = (TYPEOF(le.Input_Company))'','',':Company')
    #END
+    #IF( #TEXT(Input_Address1)='' )
      '' 
    #ELSE
        IF( le.Input_Address1 = (TYPEOF(le.Input_Address1))'','',':Address1')
    #END
+    #IF( #TEXT(Input_Address2)='' )
      '' 
    #ELSE
        IF( le.Input_Address2 = (TYPEOF(le.Input_Address2))'','',':Address2')
    #END
+    #IF( #TEXT(Input_City)='' )
      '' 
    #ELSE
        IF( le.Input_City = (TYPEOF(le.Input_City))'','',':City')
    #END
+    #IF( #TEXT(Input_State)='' )
      '' 
    #ELSE
        IF( le.Input_State = (TYPEOF(le.Input_State))'','',':State')
    #END
+    #IF( #TEXT(Input_Postal_Code)='' )
      '' 
    #ELSE
        IF( le.Input_Postal_Code = (TYPEOF(le.Input_Postal_Code))'','',':Postal_Code')
    #END
+    #IF( #TEXT(Input_Country)='' )
      '' 
    #ELSE
        IF( le.Input_Country = (TYPEOF(le.Input_Country))'','',':Country')
    #END
+    #IF( #TEXT(Input_Email)='' )
      '' 
    #ELSE
        IF( le.Input_Email = (TYPEOF(le.Input_Email))'','',':Email')
    #END
+    #IF( #TEXT(Input_Phone)='' )
      '' 
    #ELSE
        IF( le.Input_Phone = (TYPEOF(le.Input_Phone))'','',':Phone')
    #END
+    #IF( #TEXT(Input_Method_of_Housing)='' )
      '' 
    #ELSE
        IF( le.Input_Method_of_Housing = (TYPEOF(le.Input_Method_of_Housing))'','',':Method_of_Housing')
    #END
+    #IF( #TEXT(Input_Hotel)='' )
      '' 
    #ELSE
        IF( le.Input_Hotel = (TYPEOF(le.Input_Hotel))'','',':Hotel')
    #END
+    #IF( #TEXT(Input_Arrive)='' )
      '' 
    #ELSE
        IF( le.Input_Arrive = (TYPEOF(le.Input_Arrive))'','',':Arrive')
    #END
+    #IF( #TEXT(Input_Depart)='' )
      '' 
    #ELSE
        IF( le.Input_Depart = (TYPEOF(le.Input_Depart))'','',':Depart')
    #END
+    #IF( #TEXT(Input_Hotel_Confirmation)='' )
      '' 
    #ELSE
        IF( le.Input_Hotel_Confirmation = (TYPEOF(le.Input_Hotel_Confirmation))'','',':Hotel_Confirmation')
    #END
+    #IF( #TEXT(Input_Payment_type)='' )
      '' 
    #ELSE
        IF( le.Input_Payment_type = (TYPEOF(le.Input_Payment_type))'','',':Payment_type')
    #END
+    #IF( #TEXT(Input_Room_type)='' )
      '' 
    #ELSE
        IF( le.Input_Room_type = (TYPEOF(le.Input_Room_type))'','',':Room_type')
    #END
+    #IF( #TEXT(Input_Cost)='' )
      '' 
    #ELSE
        IF( le.Input_Cost = (TYPEOF(le.Input_Cost))'','',':Cost')
    #END
+    #IF( #TEXT(Input_Comments)='' )
      '' 
    #ELSE
        IF( le.Input_Comments = (TYPEOF(le.Input_Comments))'','',':Comments')
    #END
+    #IF( #TEXT(Input_Special_requests)='' )
      '' 
    #ELSE
        IF( le.Input_Special_requests = (TYPEOF(le.Input_Special_requests))'','',':Special_requests')
    #END
+    #IF( #TEXT(Input_Share_With)='' )
      '' 
    #ELSE
        IF( le.Input_Share_With = (TYPEOF(le.Input_Share_With))'','',':Share_With')
    #END
;
  END;
  #uniquename(op)
  %op% := PROJECT(infile,%ot%(LEFT));
  #uniquename(ort)
  %ort% := RECORD
    %op%.fields;
    UNSIGNED cnt := COUNT(GROUP);
  END;
  outfile := TOPN( TABLE( %op%, %ort%, fields, FEW ), 1000, -cnt );
ENDMACRO;
