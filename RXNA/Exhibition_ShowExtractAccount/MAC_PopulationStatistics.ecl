EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CustomerID = '',Input_CustomerName = '',Input_Addr1 = '',Input_Addr2 = '',Input_Addr3 = '',Input_City = '',Input_State = '',Input_StateDesc = '',Input_PostalCode = '',Input_CountryCode = '',Input_CountryDesc = '',Input_PhoneMain = '',Input_FaxMain = '',Input_PhoneTollFree = '',Input_EmailCompany = '',Input_WebAddressCompany = '',Input_PrimaryPhone = '',Input_PrimaryFirstName = '',Input_PrimaryLastName = '',Input_CreateDate = '',Input_ValidAddrFlag = '',Input_PrivacyFlag = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractAccount;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_CustomerID)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerID = (TYPEOF(le.Input_CustomerID))'','',':CustomerID')
    #END
+    #IF( #TEXT(Input_CustomerName)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerName = (TYPEOF(le.Input_CustomerName))'','',':CustomerName')
    #END
+    #IF( #TEXT(Input_Addr1)='' )
      '' 
    #ELSE
        IF( le.Input_Addr1 = (TYPEOF(le.Input_Addr1))'','',':Addr1')
    #END
+    #IF( #TEXT(Input_Addr2)='' )
      '' 
    #ELSE
        IF( le.Input_Addr2 = (TYPEOF(le.Input_Addr2))'','',':Addr2')
    #END
+    #IF( #TEXT(Input_Addr3)='' )
      '' 
    #ELSE
        IF( le.Input_Addr3 = (TYPEOF(le.Input_Addr3))'','',':Addr3')
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
+    #IF( #TEXT(Input_StateDesc)='' )
      '' 
    #ELSE
        IF( le.Input_StateDesc = (TYPEOF(le.Input_StateDesc))'','',':StateDesc')
    #END
+    #IF( #TEXT(Input_PostalCode)='' )
      '' 
    #ELSE
        IF( le.Input_PostalCode = (TYPEOF(le.Input_PostalCode))'','',':PostalCode')
    #END
+    #IF( #TEXT(Input_CountryCode)='' )
      '' 
    #ELSE
        IF( le.Input_CountryCode = (TYPEOF(le.Input_CountryCode))'','',':CountryCode')
    #END
+    #IF( #TEXT(Input_CountryDesc)='' )
      '' 
    #ELSE
        IF( le.Input_CountryDesc = (TYPEOF(le.Input_CountryDesc))'','',':CountryDesc')
    #END
+    #IF( #TEXT(Input_PhoneMain)='' )
      '' 
    #ELSE
        IF( le.Input_PhoneMain = (TYPEOF(le.Input_PhoneMain))'','',':PhoneMain')
    #END
+    #IF( #TEXT(Input_FaxMain)='' )
      '' 
    #ELSE
        IF( le.Input_FaxMain = (TYPEOF(le.Input_FaxMain))'','',':FaxMain')
    #END
+    #IF( #TEXT(Input_PhoneTollFree)='' )
      '' 
    #ELSE
        IF( le.Input_PhoneTollFree = (TYPEOF(le.Input_PhoneTollFree))'','',':PhoneTollFree')
    #END
+    #IF( #TEXT(Input_EmailCompany)='' )
      '' 
    #ELSE
        IF( le.Input_EmailCompany = (TYPEOF(le.Input_EmailCompany))'','',':EmailCompany')
    #END
+    #IF( #TEXT(Input_WebAddressCompany)='' )
      '' 
    #ELSE
        IF( le.Input_WebAddressCompany = (TYPEOF(le.Input_WebAddressCompany))'','',':WebAddressCompany')
    #END
+    #IF( #TEXT(Input_PrimaryPhone)='' )
      '' 
    #ELSE
        IF( le.Input_PrimaryPhone = (TYPEOF(le.Input_PrimaryPhone))'','',':PrimaryPhone')
    #END
+    #IF( #TEXT(Input_PrimaryFirstName)='' )
      '' 
    #ELSE
        IF( le.Input_PrimaryFirstName = (TYPEOF(le.Input_PrimaryFirstName))'','',':PrimaryFirstName')
    #END
+    #IF( #TEXT(Input_PrimaryLastName)='' )
      '' 
    #ELSE
        IF( le.Input_PrimaryLastName = (TYPEOF(le.Input_PrimaryLastName))'','',':PrimaryLastName')
    #END
+    #IF( #TEXT(Input_CreateDate)='' )
      '' 
    #ELSE
        IF( le.Input_CreateDate = (TYPEOF(le.Input_CreateDate))'','',':CreateDate')
    #END
+    #IF( #TEXT(Input_ValidAddrFlag)='' )
      '' 
    #ELSE
        IF( le.Input_ValidAddrFlag = (TYPEOF(le.Input_ValidAddrFlag))'','',':ValidAddrFlag')
    #END
+    #IF( #TEXT(Input_PrivacyFlag)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyFlag = (TYPEOF(le.Input_PrivacyFlag))'','',':PrivacyFlag')
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
