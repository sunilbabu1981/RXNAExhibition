EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_Exhibitor_ID = '',Input_Company_ID = '',Input_Booth = '',Input_Company_Name = '',Input_Alternate_Name = '',Input_Address = '',Input_Address_2 = '',Input_Address_3 = '',Input_City = '',Input_State = '',Input_Zip = '',Input_Phone = '',Input_Toll_Free_Phone = '',Input_Fax1 = '',Input_Fax2 = '',Input_Toll_Free_Fax = '',Input_Website = '',Input_Description = '',Input_Product_Categories = '',Input_New_Exhibitor = '',Input_SIA_Member = '',Input_Facebook = '',Input_Twitter = '',Input_LinkedIn = '',Input_Print_Status = '',Input_Show_Specials = '',Input_New_Products = '',Input_New_Product_Gallery = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSPrintedDir;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_Event)='' )
      '' 
    #ELSE
        IF( le.Input_Event = (TYPEOF(le.Input_Event))'','',':Event')
    #END
+    #IF( #TEXT(Input_Edition)='' )
      '' 
    #ELSE
        IF( le.Input_Edition = (TYPEOF(le.Input_Edition))'','',':Edition')
    #END
+    #IF( #TEXT(Input_Exhibitor_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor_ID = (TYPEOF(le.Input_Exhibitor_ID))'','',':Exhibitor_ID')
    #END
+    #IF( #TEXT(Input_Company_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Company_ID = (TYPEOF(le.Input_Company_ID))'','',':Company_ID')
    #END
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_Company_Name)='' )
      '' 
    #ELSE
        IF( le.Input_Company_Name = (TYPEOF(le.Input_Company_Name))'','',':Company_Name')
    #END
+    #IF( #TEXT(Input_Alternate_Name)='' )
      '' 
    #ELSE
        IF( le.Input_Alternate_Name = (TYPEOF(le.Input_Alternate_Name))'','',':Alternate_Name')
    #END
+    #IF( #TEXT(Input_Address)='' )
      '' 
    #ELSE
        IF( le.Input_Address = (TYPEOF(le.Input_Address))'','',':Address')
    #END
+    #IF( #TEXT(Input_Address_2)='' )
      '' 
    #ELSE
        IF( le.Input_Address_2 = (TYPEOF(le.Input_Address_2))'','',':Address_2')
    #END
+    #IF( #TEXT(Input_Address_3)='' )
      '' 
    #ELSE
        IF( le.Input_Address_3 = (TYPEOF(le.Input_Address_3))'','',':Address_3')
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
+    #IF( #TEXT(Input_Zip)='' )
      '' 
    #ELSE
        IF( le.Input_Zip = (TYPEOF(le.Input_Zip))'','',':Zip')
    #END
+    #IF( #TEXT(Input_Phone)='' )
      '' 
    #ELSE
        IF( le.Input_Phone = (TYPEOF(le.Input_Phone))'','',':Phone')
    #END
+    #IF( #TEXT(Input_Toll_Free_Phone)='' )
      '' 
    #ELSE
        IF( le.Input_Toll_Free_Phone = (TYPEOF(le.Input_Toll_Free_Phone))'','',':Toll_Free_Phone')
    #END
+    #IF( #TEXT(Input_Fax1)='' )
      '' 
    #ELSE
        IF( le.Input_Fax1 = (TYPEOF(le.Input_Fax1))'','',':Fax1')
    #END
+    #IF( #TEXT(Input_Fax2)='' )
      '' 
    #ELSE
        IF( le.Input_Fax2 = (TYPEOF(le.Input_Fax2))'','',':Fax2')
    #END
+    #IF( #TEXT(Input_Toll_Free_Fax)='' )
      '' 
    #ELSE
        IF( le.Input_Toll_Free_Fax = (TYPEOF(le.Input_Toll_Free_Fax))'','',':Toll_Free_Fax')
    #END
+    #IF( #TEXT(Input_Website)='' )
      '' 
    #ELSE
        IF( le.Input_Website = (TYPEOF(le.Input_Website))'','',':Website')
    #END
+    #IF( #TEXT(Input_Description)='' )
      '' 
    #ELSE
        IF( le.Input_Description = (TYPEOF(le.Input_Description))'','',':Description')
    #END
+    #IF( #TEXT(Input_Product_Categories)='' )
      '' 
    #ELSE
        IF( le.Input_Product_Categories = (TYPEOF(le.Input_Product_Categories))'','',':Product_Categories')
    #END
+    #IF( #TEXT(Input_New_Exhibitor)='' )
      '' 
    #ELSE
        IF( le.Input_New_Exhibitor = (TYPEOF(le.Input_New_Exhibitor))'','',':New_Exhibitor')
    #END
+    #IF( #TEXT(Input_SIA_Member)='' )
      '' 
    #ELSE
        IF( le.Input_SIA_Member = (TYPEOF(le.Input_SIA_Member))'','',':SIA_Member')
    #END
+    #IF( #TEXT(Input_Facebook)='' )
      '' 
    #ELSE
        IF( le.Input_Facebook = (TYPEOF(le.Input_Facebook))'','',':Facebook')
    #END
+    #IF( #TEXT(Input_Twitter)='' )
      '' 
    #ELSE
        IF( le.Input_Twitter = (TYPEOF(le.Input_Twitter))'','',':Twitter')
    #END
+    #IF( #TEXT(Input_LinkedIn)='' )
      '' 
    #ELSE
        IF( le.Input_LinkedIn = (TYPEOF(le.Input_LinkedIn))'','',':LinkedIn')
    #END
+    #IF( #TEXT(Input_Print_Status)='' )
      '' 
    #ELSE
        IF( le.Input_Print_Status = (TYPEOF(le.Input_Print_Status))'','',':Print_Status')
    #END
+    #IF( #TEXT(Input_Show_Specials)='' )
      '' 
    #ELSE
        IF( le.Input_Show_Specials = (TYPEOF(le.Input_Show_Specials))'','',':Show_Specials')
    #END
+    #IF( #TEXT(Input_New_Products)='' )
      '' 
    #ELSE
        IF( le.Input_New_Products = (TYPEOF(le.Input_New_Products))'','',':New_Products')
    #END
+    #IF( #TEXT(Input_New_Product_Gallery)='' )
      '' 
    #ELSE
        IF( le.Input_New_Product_Gallery = (TYPEOF(le.Input_New_Product_Gallery))'','',':New_Product_Gallery')
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
