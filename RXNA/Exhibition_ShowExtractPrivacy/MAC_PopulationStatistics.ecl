EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CustomerID = '',Input_PrivacyIntMail = '',Input_PrivacyIntPhone = '',Input_PrivacyIntFax = '',Input_PrivacyIntEmail = '',Input_PrivacyExtMail = '',Input_PrivacyExtPhone = '',Input_PrivacyExtFax = '',Input_PrivacyExtEmail = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractPrivacy;
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
+    #IF( #TEXT(Input_PrivacyIntMail)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyIntMail = (TYPEOF(le.Input_PrivacyIntMail))'','',':PrivacyIntMail')
    #END
+    #IF( #TEXT(Input_PrivacyIntPhone)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyIntPhone = (TYPEOF(le.Input_PrivacyIntPhone))'','',':PrivacyIntPhone')
    #END
+    #IF( #TEXT(Input_PrivacyIntFax)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyIntFax = (TYPEOF(le.Input_PrivacyIntFax))'','',':PrivacyIntFax')
    #END
+    #IF( #TEXT(Input_PrivacyIntEmail)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyIntEmail = (TYPEOF(le.Input_PrivacyIntEmail))'','',':PrivacyIntEmail')
    #END
+    #IF( #TEXT(Input_PrivacyExtMail)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyExtMail = (TYPEOF(le.Input_PrivacyExtMail))'','',':PrivacyExtMail')
    #END
+    #IF( #TEXT(Input_PrivacyExtPhone)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyExtPhone = (TYPEOF(le.Input_PrivacyExtPhone))'','',':PrivacyExtPhone')
    #END
+    #IF( #TEXT(Input_PrivacyExtFax)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyExtFax = (TYPEOF(le.Input_PrivacyExtFax))'','',':PrivacyExtFax')
    #END
+    #IF( #TEXT(Input_PrivacyExtEmail)='' )
      '' 
    #ELSE
        IF( le.Input_PrivacyExtEmail = (TYPEOF(le.Input_PrivacyExtEmail))'','',':PrivacyExtEmail')
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
