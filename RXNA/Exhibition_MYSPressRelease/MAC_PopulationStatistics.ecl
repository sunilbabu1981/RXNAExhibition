EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_ID = '',Input_EXHIBITOR = '',Input_ALTERNATE_NAME = '',Input_SORT = '',Input_ADDRESS1 = '',Input_ADDRESS2 = '',Input_ADDRESS3 = '',Input_CITY = '',Input_STATE = '',Input_ZIP = '',Input_COUNTRY = '',Input_PHONE = '',Input_PHONE2 = '',Input_FAX = '',Input_FAX2 = '',Input_WEBSITE = '',Input_BOOTH = '',Input_DESCRIPTION = '',Input_PR_CONTACT_FIRST_NAME = '',Input_PR_CONTACT_LAST_NAME = '',Input_PR_CONTACT_EMAIL = '',Input_TITLE = '',Input_AUTHOR = '',Input_AUTHOR_EMAIL = '',Input_RELEASE_DATE = '',Input_FILE = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSPressRelease;
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
+    #IF( #TEXT(Input_ID)='' )
      '' 
    #ELSE
        IF( le.Input_ID = (TYPEOF(le.Input_ID))'','',':ID')
    #END
+    #IF( #TEXT(Input_EXHIBITOR)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR = (TYPEOF(le.Input_EXHIBITOR))'','',':EXHIBITOR')
    #END
+    #IF( #TEXT(Input_ALTERNATE_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ALTERNATE_NAME = (TYPEOF(le.Input_ALTERNATE_NAME))'','',':ALTERNATE_NAME')
    #END
+    #IF( #TEXT(Input_SORT)='' )
      '' 
    #ELSE
        IF( le.Input_SORT = (TYPEOF(le.Input_SORT))'','',':SORT')
    #END
+    #IF( #TEXT(Input_ADDRESS1)='' )
      '' 
    #ELSE
        IF( le.Input_ADDRESS1 = (TYPEOF(le.Input_ADDRESS1))'','',':ADDRESS1')
    #END
+    #IF( #TEXT(Input_ADDRESS2)='' )
      '' 
    #ELSE
        IF( le.Input_ADDRESS2 = (TYPEOF(le.Input_ADDRESS2))'','',':ADDRESS2')
    #END
+    #IF( #TEXT(Input_ADDRESS3)='' )
      '' 
    #ELSE
        IF( le.Input_ADDRESS3 = (TYPEOF(le.Input_ADDRESS3))'','',':ADDRESS3')
    #END
+    #IF( #TEXT(Input_CITY)='' )
      '' 
    #ELSE
        IF( le.Input_CITY = (TYPEOF(le.Input_CITY))'','',':CITY')
    #END
+    #IF( #TEXT(Input_STATE)='' )
      '' 
    #ELSE
        IF( le.Input_STATE = (TYPEOF(le.Input_STATE))'','',':STATE')
    #END
+    #IF( #TEXT(Input_ZIP)='' )
      '' 
    #ELSE
        IF( le.Input_ZIP = (TYPEOF(le.Input_ZIP))'','',':ZIP')
    #END
+    #IF( #TEXT(Input_COUNTRY)='' )
      '' 
    #ELSE
        IF( le.Input_COUNTRY = (TYPEOF(le.Input_COUNTRY))'','',':COUNTRY')
    #END
+    #IF( #TEXT(Input_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_PHONE = (TYPEOF(le.Input_PHONE))'','',':PHONE')
    #END
+    #IF( #TEXT(Input_PHONE2)='' )
      '' 
    #ELSE
        IF( le.Input_PHONE2 = (TYPEOF(le.Input_PHONE2))'','',':PHONE2')
    #END
+    #IF( #TEXT(Input_FAX)='' )
      '' 
    #ELSE
        IF( le.Input_FAX = (TYPEOF(le.Input_FAX))'','',':FAX')
    #END
+    #IF( #TEXT(Input_FAX2)='' )
      '' 
    #ELSE
        IF( le.Input_FAX2 = (TYPEOF(le.Input_FAX2))'','',':FAX2')
    #END
+    #IF( #TEXT(Input_WEBSITE)='' )
      '' 
    #ELSE
        IF( le.Input_WEBSITE = (TYPEOF(le.Input_WEBSITE))'','',':WEBSITE')
    #END
+    #IF( #TEXT(Input_BOOTH)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH = (TYPEOF(le.Input_BOOTH))'','',':BOOTH')
    #END
+    #IF( #TEXT(Input_DESCRIPTION)='' )
      '' 
    #ELSE
        IF( le.Input_DESCRIPTION = (TYPEOF(le.Input_DESCRIPTION))'','',':DESCRIPTION')
    #END
+    #IF( #TEXT(Input_PR_CONTACT_FIRST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_PR_CONTACT_FIRST_NAME = (TYPEOF(le.Input_PR_CONTACT_FIRST_NAME))'','',':PR_CONTACT_FIRST_NAME')
    #END
+    #IF( #TEXT(Input_PR_CONTACT_LAST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_PR_CONTACT_LAST_NAME = (TYPEOF(le.Input_PR_CONTACT_LAST_NAME))'','',':PR_CONTACT_LAST_NAME')
    #END
+    #IF( #TEXT(Input_PR_CONTACT_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_PR_CONTACT_EMAIL = (TYPEOF(le.Input_PR_CONTACT_EMAIL))'','',':PR_CONTACT_EMAIL')
    #END
+    #IF( #TEXT(Input_TITLE)='' )
      '' 
    #ELSE
        IF( le.Input_TITLE = (TYPEOF(le.Input_TITLE))'','',':TITLE')
    #END
+    #IF( #TEXT(Input_AUTHOR)='' )
      '' 
    #ELSE
        IF( le.Input_AUTHOR = (TYPEOF(le.Input_AUTHOR))'','',':AUTHOR')
    #END
+    #IF( #TEXT(Input_AUTHOR_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_AUTHOR_EMAIL = (TYPEOF(le.Input_AUTHOR_EMAIL))'','',':AUTHOR_EMAIL')
    #END
+    #IF( #TEXT(Input_RELEASE_DATE)='' )
      '' 
    #ELSE
        IF( le.Input_RELEASE_DATE = (TYPEOF(le.Input_RELEASE_DATE))'','',':RELEASE_DATE')
    #END
+    #IF( #TEXT(Input_FILE)='' )
      '' 
    #ELSE
        IF( le.Input_FILE = (TYPEOF(le.Input_FILE))'','',':FILE')
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
