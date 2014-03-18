EXPORT MAC_PopulationStatistics(infile,Ref='',Input_KEY = '',Input_CE_SHOW_KEY = '',Input_CE_BOOTH_KEY = '',Input_CE_CUSTOMER_KEY = '',Input_FIRST_NAME = '',Input_LAST_NAME = '',Input_PHONE = '',Input_FAX = '',Input_MOBILE = '',Input_EMAIL = '',Input_SMS_NOTIFY_IND = '',Input_EMAIL_NOTIFY_IND = '',Input_CREATED_DT = '',Input_CREATED_BY = '',Input_UPDATED_DT = '',Input_UPDATED_BY = '',Input_PRIMARY_IND = '',Input_ADV_FREIGHT_NOTIFY_IND = '',Input_M_YARD_ARRIVAL_NOTIFY_IND = '',Input_OUTBOUND_FREIGHT_NOTIFY_IND = '',Input_DOCK_ARRIVAL_NOTIFY_IND = '',Input_EMPTIES_AVAIL_NOTIFY_IND = '',Input_PKG_SCANNED_NOTIFY_IND = '',Input_SOURCE = '',Input_ACTION = '',Input_ACTION_TAKEN_IND = '',Input_INTL_PHONE_CD = '',Input_INTL_MOBILE_CD = '',Input_SMS_NOTIFY_UPDATED_BY = '',Input_ELECTRICAL_HOOKUP_IND = '',Input_TSSBOOTHID = '',Input_SHOW_KEY = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_CEContact;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_KEY = (TYPEOF(le.Input_KEY))'','',':KEY')
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
+    #IF( #TEXT(Input_FIRST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_FIRST_NAME = (TYPEOF(le.Input_FIRST_NAME))'','',':FIRST_NAME')
    #END
+    #IF( #TEXT(Input_LAST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_LAST_NAME = (TYPEOF(le.Input_LAST_NAME))'','',':LAST_NAME')
    #END
+    #IF( #TEXT(Input_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_PHONE = (TYPEOF(le.Input_PHONE))'','',':PHONE')
    #END
+    #IF( #TEXT(Input_FAX)='' )
      '' 
    #ELSE
        IF( le.Input_FAX = (TYPEOF(le.Input_FAX))'','',':FAX')
    #END
+    #IF( #TEXT(Input_MOBILE)='' )
      '' 
    #ELSE
        IF( le.Input_MOBILE = (TYPEOF(le.Input_MOBILE))'','',':MOBILE')
    #END
+    #IF( #TEXT(Input_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_EMAIL = (TYPEOF(le.Input_EMAIL))'','',':EMAIL')
    #END
+    #IF( #TEXT(Input_SMS_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_SMS_NOTIFY_IND = (TYPEOF(le.Input_SMS_NOTIFY_IND))'','',':SMS_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_EMAIL_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_EMAIL_NOTIFY_IND = (TYPEOF(le.Input_EMAIL_NOTIFY_IND))'','',':EMAIL_NOTIFY_IND')
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
+    #IF( #TEXT(Input_PRIMARY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PRIMARY_IND = (TYPEOF(le.Input_PRIMARY_IND))'','',':PRIMARY_IND')
    #END
+    #IF( #TEXT(Input_ADV_FREIGHT_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_ADV_FREIGHT_NOTIFY_IND = (TYPEOF(le.Input_ADV_FREIGHT_NOTIFY_IND))'','',':ADV_FREIGHT_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_M_YARD_ARRIVAL_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_M_YARD_ARRIVAL_NOTIFY_IND = (TYPEOF(le.Input_M_YARD_ARRIVAL_NOTIFY_IND))'','',':M_YARD_ARRIVAL_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_OUTBOUND_FREIGHT_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_OUTBOUND_FREIGHT_NOTIFY_IND = (TYPEOF(le.Input_OUTBOUND_FREIGHT_NOTIFY_IND))'','',':OUTBOUND_FREIGHT_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_DOCK_ARRIVAL_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_DOCK_ARRIVAL_NOTIFY_IND = (TYPEOF(le.Input_DOCK_ARRIVAL_NOTIFY_IND))'','',':DOCK_ARRIVAL_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_EMPTIES_AVAIL_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_EMPTIES_AVAIL_NOTIFY_IND = (TYPEOF(le.Input_EMPTIES_AVAIL_NOTIFY_IND))'','',':EMPTIES_AVAIL_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_PKG_SCANNED_NOTIFY_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PKG_SCANNED_NOTIFY_IND = (TYPEOF(le.Input_PKG_SCANNED_NOTIFY_IND))'','',':PKG_SCANNED_NOTIFY_IND')
    #END
+    #IF( #TEXT(Input_SOURCE)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE = (TYPEOF(le.Input_SOURCE))'','',':SOURCE')
    #END
+    #IF( #TEXT(Input_ACTION)='' )
      '' 
    #ELSE
        IF( le.Input_ACTION = (TYPEOF(le.Input_ACTION))'','',':ACTION')
    #END
+    #IF( #TEXT(Input_ACTION_TAKEN_IND)='' )
      '' 
    #ELSE
        IF( le.Input_ACTION_TAKEN_IND = (TYPEOF(le.Input_ACTION_TAKEN_IND))'','',':ACTION_TAKEN_IND')
    #END
+    #IF( #TEXT(Input_INTL_PHONE_CD)='' )
      '' 
    #ELSE
        IF( le.Input_INTL_PHONE_CD = (TYPEOF(le.Input_INTL_PHONE_CD))'','',':INTL_PHONE_CD')
    #END
+    #IF( #TEXT(Input_INTL_MOBILE_CD)='' )
      '' 
    #ELSE
        IF( le.Input_INTL_MOBILE_CD = (TYPEOF(le.Input_INTL_MOBILE_CD))'','',':INTL_MOBILE_CD')
    #END
+    #IF( #TEXT(Input_SMS_NOTIFY_UPDATED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_SMS_NOTIFY_UPDATED_BY = (TYPEOF(le.Input_SMS_NOTIFY_UPDATED_BY))'','',':SMS_NOTIFY_UPDATED_BY')
    #END
+    #IF( #TEXT(Input_ELECTRICAL_HOOKUP_IND)='' )
      '' 
    #ELSE
        IF( le.Input_ELECTRICAL_HOOKUP_IND = (TYPEOF(le.Input_ELECTRICAL_HOOKUP_IND))'','',':ELECTRICAL_HOOKUP_IND')
    #END
+    #IF( #TEXT(Input_TSSBOOTHID)='' )
      '' 
    #ELSE
        IF( le.Input_TSSBOOTHID = (TYPEOF(le.Input_TSSBOOTHID))'','',':TSSBOOTHID')
    #END
+    #IF( #TEXT(Input_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_KEY = (TYPEOF(le.Input_SHOW_KEY))'','',':SHOW_KEY')
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
