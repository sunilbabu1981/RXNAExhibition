EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_STATUS = '',Input_ISSUE_TEXT = '',Input_BOOTH_KEY = '',Input_CUSTOMER_KEY = '',Input_CONTACT_NAME = '',Input_CONTACT_PHONE = '',Input_NOTIFICATION_IND = '',Input_PRIORITY = '',Input_KEY = '',Input_EXHIBITOR_PRESENT_IND = '',Input_CREATED_DT = '',Input_CREATED_BY = '',Input_UPDATED_DT = '',Input_UPDATED_BY = '',Input_SOURCE = '',Input_CONTRACTOR_KEY = '',Input_TYPE = '',Input_CONTRACTOR_TYPE_KEY = '',Input_CE_SHOW_KEY = '',Input_CE_BOOTH_KEY = '',Input_CE_CUSTOMER_KEY = '',Input_CONTACT_INTL_PHONE_CD = '',Input_CE_MHA_KEY = '',Input_NBR_LABELS_REQ = '',Input_USER_ROLE = '',Input_CREATED_SOURCE = '',Input_CONTRACTORTYPE = '',Input_TSSBOOTHID = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_CeIssue;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_KEY = (TYPEOF(le.Input_SHOW_KEY))'','',':SHOW_KEY')
    #END
+    #IF( #TEXT(Input_STATUS)='' )
      '' 
    #ELSE
        IF( le.Input_STATUS = (TYPEOF(le.Input_STATUS))'','',':STATUS')
    #END
+    #IF( #TEXT(Input_ISSUE_TEXT)='' )
      '' 
    #ELSE
        IF( le.Input_ISSUE_TEXT = (TYPEOF(le.Input_ISSUE_TEXT))'','',':ISSUE_TEXT')
    #END
+    #IF( #TEXT(Input_BOOTH_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_KEY = (TYPEOF(le.Input_BOOTH_KEY))'','',':BOOTH_KEY')
    #END
+    #IF( #TEXT(Input_CUSTOMER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMER_KEY = (TYPEOF(le.Input_CUSTOMER_KEY))'','',':CUSTOMER_KEY')
    #END
+    #IF( #TEXT(Input_CONTACT_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_CONTACT_NAME = (TYPEOF(le.Input_CONTACT_NAME))'','',':CONTACT_NAME')
    #END
+    #IF( #TEXT(Input_CONTACT_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_CONTACT_PHONE = (TYPEOF(le.Input_CONTACT_PHONE))'','',':CONTACT_PHONE')
    #END
+    #IF( #TEXT(Input_NOTIFICATION_IND)='' )
      '' 
    #ELSE
        IF( le.Input_NOTIFICATION_IND = (TYPEOF(le.Input_NOTIFICATION_IND))'','',':NOTIFICATION_IND')
    #END
+    #IF( #TEXT(Input_PRIORITY)='' )
      '' 
    #ELSE
        IF( le.Input_PRIORITY = (TYPEOF(le.Input_PRIORITY))'','',':PRIORITY')
    #END
+    #IF( #TEXT(Input_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_KEY = (TYPEOF(le.Input_KEY))'','',':KEY')
    #END
+    #IF( #TEXT(Input_EXHIBITOR_PRESENT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR_PRESENT_IND = (TYPEOF(le.Input_EXHIBITOR_PRESENT_IND))'','',':EXHIBITOR_PRESENT_IND')
    #END
+    #IF( #TEXT(Input_CREATED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_DT = (TYPEOF(le.Input_CREATED_DT))'','',':CREATED_DT')
    #END
+    #IF( #TEXT(Input_CREATED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_BY = (TYPEOF(le.Input_CREATED_BY))'','',':CREATED_BY')
    #END
+    #IF( #TEXT(Input_UPDATED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_UPDATED_DT = (TYPEOF(le.Input_UPDATED_DT))'','',':UPDATED_DT')
    #END
+    #IF( #TEXT(Input_UPDATED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_UPDATED_BY = (TYPEOF(le.Input_UPDATED_BY))'','',':UPDATED_BY')
    #END
+    #IF( #TEXT(Input_SOURCE)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE = (TYPEOF(le.Input_SOURCE))'','',':SOURCE')
    #END
+    #IF( #TEXT(Input_CONTRACTOR_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CONTRACTOR_KEY = (TYPEOF(le.Input_CONTRACTOR_KEY))'','',':CONTRACTOR_KEY')
    #END
+    #IF( #TEXT(Input_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_TYPE = (TYPEOF(le.Input_TYPE))'','',':TYPE')
    #END
+    #IF( #TEXT(Input_CONTRACTOR_TYPE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CONTRACTOR_TYPE_KEY = (TYPEOF(le.Input_CONTRACTOR_TYPE_KEY))'','',':CONTRACTOR_TYPE_KEY')
    #END
+    #IF( #TEXT(Input_CE_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CE_SHOW_KEY = (TYPEOF(le.Input_CE_SHOW_KEY))'','',':CE_SHOW_KEY')
    #END
+    #IF( #TEXT(Input_CE_BOOTH_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CE_BOOTH_KEY = (TYPEOF(le.Input_CE_BOOTH_KEY))'','',':CE_BOOTH_KEY')
    #END
+    #IF( #TEXT(Input_CE_CUSTOMER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CE_CUSTOMER_KEY = (TYPEOF(le.Input_CE_CUSTOMER_KEY))'','',':CE_CUSTOMER_KEY')
    #END
+    #IF( #TEXT(Input_CONTACT_INTL_PHONE_CD)='' )
      '' 
    #ELSE
        IF( le.Input_CONTACT_INTL_PHONE_CD = (TYPEOF(le.Input_CONTACT_INTL_PHONE_CD))'','',':CONTACT_INTL_PHONE_CD')
    #END
+    #IF( #TEXT(Input_CE_MHA_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CE_MHA_KEY = (TYPEOF(le.Input_CE_MHA_KEY))'','',':CE_MHA_KEY')
    #END
+    #IF( #TEXT(Input_NBR_LABELS_REQ)='' )
      '' 
    #ELSE
        IF( le.Input_NBR_LABELS_REQ = (TYPEOF(le.Input_NBR_LABELS_REQ))'','',':NBR_LABELS_REQ')
    #END
+    #IF( #TEXT(Input_USER_ROLE)='' )
      '' 
    #ELSE
        IF( le.Input_USER_ROLE = (TYPEOF(le.Input_USER_ROLE))'','',':USER_ROLE')
    #END
+    #IF( #TEXT(Input_CREATED_SOURCE)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_SOURCE = (TYPEOF(le.Input_CREATED_SOURCE))'','',':CREATED_SOURCE')
    #END
+    #IF( #TEXT(Input_CONTRACTORTYPE)='' )
      '' 
    #ELSE
        IF( le.Input_CONTRACTORTYPE = (TYPEOF(le.Input_CONTRACTORTYPE))'','',':CONTRACTORTYPE')
    #END
+    #IF( #TEXT(Input_TSSBOOTHID)='' )
      '' 
    #ELSE
        IF( le.Input_TSSBOOTHID = (TYPEOF(le.Input_TSSBOOTHID))'','',':TSSBOOTHID')
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
