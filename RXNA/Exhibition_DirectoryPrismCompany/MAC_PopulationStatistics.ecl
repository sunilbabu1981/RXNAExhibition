EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CompanyID = '',Input_vchCompanyName = '',Input_vchAddress1 = '',Input_vchAddress2 = '',Input_vchAddress3 = '',Input_vchCity = '',Input_vchRegionName = '',Input_vchCountry = '',Input_vchPostCode = '',Input_vchPhone = '',Input_vchFax = '',Input_vchEmailAddress = '',Input_vchContactFirstName = '',Input_vchContactLastName = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_DirectoryPrismCompany;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_CompanyID)='' )
      '' 
    #ELSE
        IF( le.Input_CompanyID = (TYPEOF(le.Input_CompanyID))'','',':CompanyID')
    #END
+    #IF( #TEXT(Input_vchCompanyName)='' )
      '' 
    #ELSE
        IF( le.Input_vchCompanyName = (TYPEOF(le.Input_vchCompanyName))'','',':vchCompanyName')
    #END
+    #IF( #TEXT(Input_vchAddress1)='' )
      '' 
    #ELSE
        IF( le.Input_vchAddress1 = (TYPEOF(le.Input_vchAddress1))'','',':vchAddress1')
    #END
+    #IF( #TEXT(Input_vchAddress2)='' )
      '' 
    #ELSE
        IF( le.Input_vchAddress2 = (TYPEOF(le.Input_vchAddress2))'','',':vchAddress2')
    #END
+    #IF( #TEXT(Input_vchAddress3)='' )
      '' 
    #ELSE
        IF( le.Input_vchAddress3 = (TYPEOF(le.Input_vchAddress3))'','',':vchAddress3')
    #END
+    #IF( #TEXT(Input_vchCity)='' )
      '' 
    #ELSE
        IF( le.Input_vchCity = (TYPEOF(le.Input_vchCity))'','',':vchCity')
    #END
+    #IF( #TEXT(Input_vchRegionName)='' )
      '' 
    #ELSE
        IF( le.Input_vchRegionName = (TYPEOF(le.Input_vchRegionName))'','',':vchRegionName')
    #END
+    #IF( #TEXT(Input_vchCountry)='' )
      '' 
    #ELSE
        IF( le.Input_vchCountry = (TYPEOF(le.Input_vchCountry))'','',':vchCountry')
    #END
+    #IF( #TEXT(Input_vchPostCode)='' )
      '' 
    #ELSE
        IF( le.Input_vchPostCode = (TYPEOF(le.Input_vchPostCode))'','',':vchPostCode')
    #END
+    #IF( #TEXT(Input_vchPhone)='' )
      '' 
    #ELSE
        IF( le.Input_vchPhone = (TYPEOF(le.Input_vchPhone))'','',':vchPhone')
    #END
+    #IF( #TEXT(Input_vchFax)='' )
      '' 
    #ELSE
        IF( le.Input_vchFax = (TYPEOF(le.Input_vchFax))'','',':vchFax')
    #END
+    #IF( #TEXT(Input_vchEmailAddress)='' )
      '' 
    #ELSE
        IF( le.Input_vchEmailAddress = (TYPEOF(le.Input_vchEmailAddress))'','',':vchEmailAddress')
    #END
+    #IF( #TEXT(Input_vchContactFirstName)='' )
      '' 
    #ELSE
        IF( le.Input_vchContactFirstName = (TYPEOF(le.Input_vchContactFirstName))'','',':vchContactFirstName')
    #END
+    #IF( #TEXT(Input_vchContactLastName)='' )
      '' 
    #ELSE
        IF( le.Input_vchContactLastName = (TYPEOF(le.Input_vchContactLastName))'','',':vchContactLastName')
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
