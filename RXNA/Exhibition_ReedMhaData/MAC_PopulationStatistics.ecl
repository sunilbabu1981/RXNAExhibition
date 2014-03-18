EXPORT MAC_PopulationStatistics(infile,Ref='',Input_BOOTH_ID = '',Input_KEYVAL = '',Input_SHOW_KEY = '',Input_MANUAL_MHA_NBR = '',Input_DRIVER_KEY = '',Input_QTY_LABELS = '',Input_STATUS = '',Input_MHA_DATE = '',Input_MHA_COMPLETE_DT = '',Input_MATCHED_DT = '',Input_DISPATCHED_DT = '',Input_BILL_TO_TYPE = '',Input_BILL_TO_KEY = '',Input_BT_ORG_NAME = '',Input_BT_ORG_CONTACT_ID = '',Input_BT_ORG_CONTACT_SALUTATION = '',Input_BT_ORG_CONTACT_FIRST_NAME = '',Input_BT_ORG_CONTACT_MIDDLE_NAME = '',Input_BT_ORG_CONTACT_LAST_NAME = '',Input_BT_ORG_CONTACT_TITLE = '',Input_BT_ORG_CONTACT_PHONE = '',Input_BT_ORG_CONTACT_PHONE_EXT = '',Input_BT_ORG_CONTACT_FAX = '',Input_BT_ORG_CONTACT_FAX_EXT = '',Input_BT_ORG_CONTACT_EMAIL = '',Input_BT_ORG_ADDRESS1 = '',Input_BT_ORG_ADDRESS2 = '',Input_BT_ORG_COUNTRY_CD = '',Input_BT_ORG_STATE_CD = '',Input_BT_ORG_CITY = '',Input_BT_ORG_POSTAL_CODE = '',Input_ST_ORG_NAME = '',Input_ST_ORG_CONTACT_ID = '',Input_ST_ORG_CONTACT_SALUTATION = '',Input_ST_ORG_CONTACT_FIRST_NAME = '',Input_ST_ORG_CONTACT_MIDDLE_NAME = '',Input_ST_ORG_CONTACT_LAST_NAME = '',Input_ST_ORG_CONTACT_TITLE = '',Input_ST_ORG_CONTACT_PHONE = '',Input_ST_ORG_CONTACT_PHONE_EXT = '',Input_ST_ORG_CONTACT_FAX = '',Input_ST_ORG_CONTACT_FAX_EXT = '',Input_ST_ORG_CONTACT_EMAIL = '',Input_ST_ORG_ADDRESS1 = '',Input_ST_ORG_ADDRESS2 = '',Input_ST_ORG_COUNTRY_CD = '',Input_ST_ORG_STATE_CD = '',Input_ST_ORG_CITY = '',Input_ST_ORG_POSTAL_CODE = '',Input_COMMENTS = '',Input_BOOTH_KEY = '',Input_CARRIER_KEY = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_FOL_CREATED_IND = '',Input_SOURCE_KEY = '',Input_OWNER_ID = '',Input_COLLECTION_TYPE = '',Input_DECLARED_VALUE = '',Input_RETURN_TO_WAREHOUSE_IND = '',Input_REROUTE_VIA_FREEMAN_IND = '',Input_SEPARATE_DESTINATION_CNT = '',Input_CARPET_QTY = '',Input_CARPET_COLOR = '',Input_CARTON_QTY = '',Input_CASE_QTY = '',Input_CASE_COLOR = '',Input_CRATE_QTY = '',Input_PAD_QTY = '',Input_SKID_QTY = '',Input_OTHER_CARRIER_NAME = '',Input_OTHER_CARRIER_TYPE = '',Input_CRATE_COMMENTS = '',Input_CARTON_COMMENTS = '',Input_CASE_COMMENTS = '',Input_SKID_COMMENTS = '',Input_CARPET_COMMENTS = '',Input_PAD_COMMENTS = '',Input_OTHER_COMMENTS = '',Input_OTHER_QTY = '',Input_SKID_WRAPPED = '',Input_CARPET_WRAPPED = '',Input_PAD_WRAPPED = '',Input_TOTAL_WT = '',Input_DELETED_IND = '',Input_DELETED_DT = '',Input_ELECTRONIC_SIGNATURE_IND = '',Input_CE_CARRIER_TYPE = '',Input_EMERGENCY_CONTACT = '',Input_EMERGENCY_PHONE = '',Input_EMERGENCY_PHONE_INTL = '',Input_ELECTRONIC_SIGNATURE_NAME = '',Input_SOURCE_KEY_LAST_UPDATED = '',Input_LOADING_DOCK_IND = '',Input_RESIDENCE_IND = '',Input_INSIDE_IND = '',Input_LIFT_GATE_IND = '',Input_PAD_WRAPPED_IND = '',Input_AIR_RIDE_IND = '',Input_DO_NOT_STACK_IND = '',Input_REROUTE_FET_IND = '',Input_RATE_QUOTE = '',Input_CARRIER_PRO_NBR = '',Input_ACTUAL_FET_CARRIER = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ReedMhaData;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_BOOTH_ID)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_ID = (TYPEOF(le.Input_BOOTH_ID))'','',':BOOTH_ID')
    #END
+    #IF( #TEXT(Input_KEYVAL)='' )
      '' 
    #ELSE
        IF( le.Input_KEYVAL = (TYPEOF(le.Input_KEYVAL))'','',':KEYVAL')
    #END
+    #IF( #TEXT(Input_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_KEY = (TYPEOF(le.Input_SHOW_KEY))'','',':SHOW_KEY')
    #END
+    #IF( #TEXT(Input_MANUAL_MHA_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_MANUAL_MHA_NBR = (TYPEOF(le.Input_MANUAL_MHA_NBR))'','',':MANUAL_MHA_NBR')
    #END
+    #IF( #TEXT(Input_DRIVER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_DRIVER_KEY = (TYPEOF(le.Input_DRIVER_KEY))'','',':DRIVER_KEY')
    #END
+    #IF( #TEXT(Input_QTY_LABELS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_LABELS = (TYPEOF(le.Input_QTY_LABELS))'','',':QTY_LABELS')
    #END
+    #IF( #TEXT(Input_STATUS)='' )
      '' 
    #ELSE
        IF( le.Input_STATUS = (TYPEOF(le.Input_STATUS))'','',':STATUS')
    #END
+    #IF( #TEXT(Input_MHA_DATE)='' )
      '' 
    #ELSE
        IF( le.Input_MHA_DATE = (TYPEOF(le.Input_MHA_DATE))'','',':MHA_DATE')
    #END
+    #IF( #TEXT(Input_MHA_COMPLETE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_MHA_COMPLETE_DT = (TYPEOF(le.Input_MHA_COMPLETE_DT))'','',':MHA_COMPLETE_DT')
    #END
+    #IF( #TEXT(Input_MATCHED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_MATCHED_DT = (TYPEOF(le.Input_MATCHED_DT))'','',':MATCHED_DT')
    #END
+    #IF( #TEXT(Input_DISPATCHED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_DISPATCHED_DT = (TYPEOF(le.Input_DISPATCHED_DT))'','',':DISPATCHED_DT')
    #END
+    #IF( #TEXT(Input_BILL_TO_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO_TYPE = (TYPEOF(le.Input_BILL_TO_TYPE))'','',':BILL_TO_TYPE')
    #END
+    #IF( #TEXT(Input_BILL_TO_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO_KEY = (TYPEOF(le.Input_BILL_TO_KEY))'','',':BILL_TO_KEY')
    #END
+    #IF( #TEXT(Input_BT_ORG_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_NAME = (TYPEOF(le.Input_BT_ORG_NAME))'','',':BT_ORG_NAME')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_ID)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_ID = (TYPEOF(le.Input_BT_ORG_CONTACT_ID))'','',':BT_ORG_CONTACT_ID')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_SALUTATION)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_SALUTATION = (TYPEOF(le.Input_BT_ORG_CONTACT_SALUTATION))'','',':BT_ORG_CONTACT_SALUTATION')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_FIRST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_FIRST_NAME = (TYPEOF(le.Input_BT_ORG_CONTACT_FIRST_NAME))'','',':BT_ORG_CONTACT_FIRST_NAME')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_MIDDLE_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_MIDDLE_NAME = (TYPEOF(le.Input_BT_ORG_CONTACT_MIDDLE_NAME))'','',':BT_ORG_CONTACT_MIDDLE_NAME')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_LAST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_LAST_NAME = (TYPEOF(le.Input_BT_ORG_CONTACT_LAST_NAME))'','',':BT_ORG_CONTACT_LAST_NAME')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_TITLE)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_TITLE = (TYPEOF(le.Input_BT_ORG_CONTACT_TITLE))'','',':BT_ORG_CONTACT_TITLE')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_PHONE = (TYPEOF(le.Input_BT_ORG_CONTACT_PHONE))'','',':BT_ORG_CONTACT_PHONE')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_PHONE_EXT)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_PHONE_EXT = (TYPEOF(le.Input_BT_ORG_CONTACT_PHONE_EXT))'','',':BT_ORG_CONTACT_PHONE_EXT')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_FAX)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_FAX = (TYPEOF(le.Input_BT_ORG_CONTACT_FAX))'','',':BT_ORG_CONTACT_FAX')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_FAX_EXT)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_FAX_EXT = (TYPEOF(le.Input_BT_ORG_CONTACT_FAX_EXT))'','',':BT_ORG_CONTACT_FAX_EXT')
    #END
+    #IF( #TEXT(Input_BT_ORG_CONTACT_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CONTACT_EMAIL = (TYPEOF(le.Input_BT_ORG_CONTACT_EMAIL))'','',':BT_ORG_CONTACT_EMAIL')
    #END
+    #IF( #TEXT(Input_BT_ORG_ADDRESS1)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_ADDRESS1 = (TYPEOF(le.Input_BT_ORG_ADDRESS1))'','',':BT_ORG_ADDRESS1')
    #END
+    #IF( #TEXT(Input_BT_ORG_ADDRESS2)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_ADDRESS2 = (TYPEOF(le.Input_BT_ORG_ADDRESS2))'','',':BT_ORG_ADDRESS2')
    #END
+    #IF( #TEXT(Input_BT_ORG_COUNTRY_CD)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_COUNTRY_CD = (TYPEOF(le.Input_BT_ORG_COUNTRY_CD))'','',':BT_ORG_COUNTRY_CD')
    #END
+    #IF( #TEXT(Input_BT_ORG_STATE_CD)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_STATE_CD = (TYPEOF(le.Input_BT_ORG_STATE_CD))'','',':BT_ORG_STATE_CD')
    #END
+    #IF( #TEXT(Input_BT_ORG_CITY)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_CITY = (TYPEOF(le.Input_BT_ORG_CITY))'','',':BT_ORG_CITY')
    #END
+    #IF( #TEXT(Input_BT_ORG_POSTAL_CODE)='' )
      '' 
    #ELSE
        IF( le.Input_BT_ORG_POSTAL_CODE = (TYPEOF(le.Input_BT_ORG_POSTAL_CODE))'','',':BT_ORG_POSTAL_CODE')
    #END
+    #IF( #TEXT(Input_ST_ORG_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_NAME = (TYPEOF(le.Input_ST_ORG_NAME))'','',':ST_ORG_NAME')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_ID)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_ID = (TYPEOF(le.Input_ST_ORG_CONTACT_ID))'','',':ST_ORG_CONTACT_ID')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_SALUTATION)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_SALUTATION = (TYPEOF(le.Input_ST_ORG_CONTACT_SALUTATION))'','',':ST_ORG_CONTACT_SALUTATION')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_FIRST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_FIRST_NAME = (TYPEOF(le.Input_ST_ORG_CONTACT_FIRST_NAME))'','',':ST_ORG_CONTACT_FIRST_NAME')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_MIDDLE_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_MIDDLE_NAME = (TYPEOF(le.Input_ST_ORG_CONTACT_MIDDLE_NAME))'','',':ST_ORG_CONTACT_MIDDLE_NAME')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_LAST_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_LAST_NAME = (TYPEOF(le.Input_ST_ORG_CONTACT_LAST_NAME))'','',':ST_ORG_CONTACT_LAST_NAME')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_TITLE)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_TITLE = (TYPEOF(le.Input_ST_ORG_CONTACT_TITLE))'','',':ST_ORG_CONTACT_TITLE')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_PHONE = (TYPEOF(le.Input_ST_ORG_CONTACT_PHONE))'','',':ST_ORG_CONTACT_PHONE')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_PHONE_EXT)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_PHONE_EXT = (TYPEOF(le.Input_ST_ORG_CONTACT_PHONE_EXT))'','',':ST_ORG_CONTACT_PHONE_EXT')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_FAX)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_FAX = (TYPEOF(le.Input_ST_ORG_CONTACT_FAX))'','',':ST_ORG_CONTACT_FAX')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_FAX_EXT)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_FAX_EXT = (TYPEOF(le.Input_ST_ORG_CONTACT_FAX_EXT))'','',':ST_ORG_CONTACT_FAX_EXT')
    #END
+    #IF( #TEXT(Input_ST_ORG_CONTACT_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CONTACT_EMAIL = (TYPEOF(le.Input_ST_ORG_CONTACT_EMAIL))'','',':ST_ORG_CONTACT_EMAIL')
    #END
+    #IF( #TEXT(Input_ST_ORG_ADDRESS1)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_ADDRESS1 = (TYPEOF(le.Input_ST_ORG_ADDRESS1))'','',':ST_ORG_ADDRESS1')
    #END
+    #IF( #TEXT(Input_ST_ORG_ADDRESS2)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_ADDRESS2 = (TYPEOF(le.Input_ST_ORG_ADDRESS2))'','',':ST_ORG_ADDRESS2')
    #END
+    #IF( #TEXT(Input_ST_ORG_COUNTRY_CD)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_COUNTRY_CD = (TYPEOF(le.Input_ST_ORG_COUNTRY_CD))'','',':ST_ORG_COUNTRY_CD')
    #END
+    #IF( #TEXT(Input_ST_ORG_STATE_CD)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_STATE_CD = (TYPEOF(le.Input_ST_ORG_STATE_CD))'','',':ST_ORG_STATE_CD')
    #END
+    #IF( #TEXT(Input_ST_ORG_CITY)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_CITY = (TYPEOF(le.Input_ST_ORG_CITY))'','',':ST_ORG_CITY')
    #END
+    #IF( #TEXT(Input_ST_ORG_POSTAL_CODE)='' )
      '' 
    #ELSE
        IF( le.Input_ST_ORG_POSTAL_CODE = (TYPEOF(le.Input_ST_ORG_POSTAL_CODE))'','',':ST_ORG_POSTAL_CODE')
    #END
+    #IF( #TEXT(Input_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_COMMENTS = (TYPEOF(le.Input_COMMENTS))'','',':COMMENTS')
    #END
+    #IF( #TEXT(Input_BOOTH_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_KEY = (TYPEOF(le.Input_BOOTH_KEY))'','',':BOOTH_KEY')
    #END
+    #IF( #TEXT(Input_CARRIER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CARRIER_KEY = (TYPEOF(le.Input_CARRIER_KEY))'','',':CARRIER_KEY')
    #END
+    #IF( #TEXT(Input_USER_ID)='' )
      '' 
    #ELSE
        IF( le.Input_USER_ID = (TYPEOF(le.Input_USER_ID))'','',':USER_ID')
    #END
+    #IF( #TEXT(Input_LAST_UPDATE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_LAST_UPDATE_DT = (TYPEOF(le.Input_LAST_UPDATE_DT))'','',':LAST_UPDATE_DT')
    #END
+    #IF( #TEXT(Input_FOL_CREATED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_FOL_CREATED_IND = (TYPEOF(le.Input_FOL_CREATED_IND))'','',':FOL_CREATED_IND')
    #END
+    #IF( #TEXT(Input_SOURCE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE_KEY = (TYPEOF(le.Input_SOURCE_KEY))'','',':SOURCE_KEY')
    #END
+    #IF( #TEXT(Input_OWNER_ID)='' )
      '' 
    #ELSE
        IF( le.Input_OWNER_ID = (TYPEOF(le.Input_OWNER_ID))'','',':OWNER_ID')
    #END
+    #IF( #TEXT(Input_COLLECTION_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_COLLECTION_TYPE = (TYPEOF(le.Input_COLLECTION_TYPE))'','',':COLLECTION_TYPE')
    #END
+    #IF( #TEXT(Input_DECLARED_VALUE)='' )
      '' 
    #ELSE
        IF( le.Input_DECLARED_VALUE = (TYPEOF(le.Input_DECLARED_VALUE))'','',':DECLARED_VALUE')
    #END
+    #IF( #TEXT(Input_RETURN_TO_WAREHOUSE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_RETURN_TO_WAREHOUSE_IND = (TYPEOF(le.Input_RETURN_TO_WAREHOUSE_IND))'','',':RETURN_TO_WAREHOUSE_IND')
    #END
+    #IF( #TEXT(Input_REROUTE_VIA_FREEMAN_IND)='' )
      '' 
    #ELSE
        IF( le.Input_REROUTE_VIA_FREEMAN_IND = (TYPEOF(le.Input_REROUTE_VIA_FREEMAN_IND))'','',':REROUTE_VIA_FREEMAN_IND')
    #END
+    #IF( #TEXT(Input_SEPARATE_DESTINATION_CNT)='' )
      '' 
    #ELSE
        IF( le.Input_SEPARATE_DESTINATION_CNT = (TYPEOF(le.Input_SEPARATE_DESTINATION_CNT))'','',':SEPARATE_DESTINATION_CNT')
    #END
+    #IF( #TEXT(Input_CARPET_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_CARPET_QTY = (TYPEOF(le.Input_CARPET_QTY))'','',':CARPET_QTY')
    #END
+    #IF( #TEXT(Input_CARPET_COLOR)='' )
      '' 
    #ELSE
        IF( le.Input_CARPET_COLOR = (TYPEOF(le.Input_CARPET_COLOR))'','',':CARPET_COLOR')
    #END
+    #IF( #TEXT(Input_CARTON_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_CARTON_QTY = (TYPEOF(le.Input_CARTON_QTY))'','',':CARTON_QTY')
    #END
+    #IF( #TEXT(Input_CASE_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_CASE_QTY = (TYPEOF(le.Input_CASE_QTY))'','',':CASE_QTY')
    #END
+    #IF( #TEXT(Input_CASE_COLOR)='' )
      '' 
    #ELSE
        IF( le.Input_CASE_COLOR = (TYPEOF(le.Input_CASE_COLOR))'','',':CASE_COLOR')
    #END
+    #IF( #TEXT(Input_CRATE_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_CRATE_QTY = (TYPEOF(le.Input_CRATE_QTY))'','',':CRATE_QTY')
    #END
+    #IF( #TEXT(Input_PAD_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_PAD_QTY = (TYPEOF(le.Input_PAD_QTY))'','',':PAD_QTY')
    #END
+    #IF( #TEXT(Input_SKID_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_SKID_QTY = (TYPEOF(le.Input_SKID_QTY))'','',':SKID_QTY')
    #END
+    #IF( #TEXT(Input_OTHER_CARRIER_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_OTHER_CARRIER_NAME = (TYPEOF(le.Input_OTHER_CARRIER_NAME))'','',':OTHER_CARRIER_NAME')
    #END
+    #IF( #TEXT(Input_OTHER_CARRIER_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_OTHER_CARRIER_TYPE = (TYPEOF(le.Input_OTHER_CARRIER_TYPE))'','',':OTHER_CARRIER_TYPE')
    #END
+    #IF( #TEXT(Input_CRATE_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_CRATE_COMMENTS = (TYPEOF(le.Input_CRATE_COMMENTS))'','',':CRATE_COMMENTS')
    #END
+    #IF( #TEXT(Input_CARTON_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_CARTON_COMMENTS = (TYPEOF(le.Input_CARTON_COMMENTS))'','',':CARTON_COMMENTS')
    #END
+    #IF( #TEXT(Input_CASE_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_CASE_COMMENTS = (TYPEOF(le.Input_CASE_COMMENTS))'','',':CASE_COMMENTS')
    #END
+    #IF( #TEXT(Input_SKID_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_SKID_COMMENTS = (TYPEOF(le.Input_SKID_COMMENTS))'','',':SKID_COMMENTS')
    #END
+    #IF( #TEXT(Input_CARPET_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_CARPET_COMMENTS = (TYPEOF(le.Input_CARPET_COMMENTS))'','',':CARPET_COMMENTS')
    #END
+    #IF( #TEXT(Input_PAD_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_PAD_COMMENTS = (TYPEOF(le.Input_PAD_COMMENTS))'','',':PAD_COMMENTS')
    #END
+    #IF( #TEXT(Input_OTHER_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_OTHER_COMMENTS = (TYPEOF(le.Input_OTHER_COMMENTS))'','',':OTHER_COMMENTS')
    #END
+    #IF( #TEXT(Input_OTHER_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_OTHER_QTY = (TYPEOF(le.Input_OTHER_QTY))'','',':OTHER_QTY')
    #END
+    #IF( #TEXT(Input_SKID_WRAPPED)='' )
      '' 
    #ELSE
        IF( le.Input_SKID_WRAPPED = (TYPEOF(le.Input_SKID_WRAPPED))'','',':SKID_WRAPPED')
    #END
+    #IF( #TEXT(Input_CARPET_WRAPPED)='' )
      '' 
    #ELSE
        IF( le.Input_CARPET_WRAPPED = (TYPEOF(le.Input_CARPET_WRAPPED))'','',':CARPET_WRAPPED')
    #END
+    #IF( #TEXT(Input_PAD_WRAPPED)='' )
      '' 
    #ELSE
        IF( le.Input_PAD_WRAPPED = (TYPEOF(le.Input_PAD_WRAPPED))'','',':PAD_WRAPPED')
    #END
+    #IF( #TEXT(Input_TOTAL_WT)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_WT = (TYPEOF(le.Input_TOTAL_WT))'','',':TOTAL_WT')
    #END
+    #IF( #TEXT(Input_DELETED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_DELETED_IND = (TYPEOF(le.Input_DELETED_IND))'','',':DELETED_IND')
    #END
+    #IF( #TEXT(Input_DELETED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_DELETED_DT = (TYPEOF(le.Input_DELETED_DT))'','',':DELETED_DT')
    #END
+    #IF( #TEXT(Input_ELECTRONIC_SIGNATURE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_ELECTRONIC_SIGNATURE_IND = (TYPEOF(le.Input_ELECTRONIC_SIGNATURE_IND))'','',':ELECTRONIC_SIGNATURE_IND')
    #END
+    #IF( #TEXT(Input_CE_CARRIER_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_CE_CARRIER_TYPE = (TYPEOF(le.Input_CE_CARRIER_TYPE))'','',':CE_CARRIER_TYPE')
    #END
+    #IF( #TEXT(Input_EMERGENCY_CONTACT)='' )
      '' 
    #ELSE
        IF( le.Input_EMERGENCY_CONTACT = (TYPEOF(le.Input_EMERGENCY_CONTACT))'','',':EMERGENCY_CONTACT')
    #END
+    #IF( #TEXT(Input_EMERGENCY_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_EMERGENCY_PHONE = (TYPEOF(le.Input_EMERGENCY_PHONE))'','',':EMERGENCY_PHONE')
    #END
+    #IF( #TEXT(Input_EMERGENCY_PHONE_INTL)='' )
      '' 
    #ELSE
        IF( le.Input_EMERGENCY_PHONE_INTL = (TYPEOF(le.Input_EMERGENCY_PHONE_INTL))'','',':EMERGENCY_PHONE_INTL')
    #END
+    #IF( #TEXT(Input_ELECTRONIC_SIGNATURE_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ELECTRONIC_SIGNATURE_NAME = (TYPEOF(le.Input_ELECTRONIC_SIGNATURE_NAME))'','',':ELECTRONIC_SIGNATURE_NAME')
    #END
+    #IF( #TEXT(Input_SOURCE_KEY_LAST_UPDATED)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE_KEY_LAST_UPDATED = (TYPEOF(le.Input_SOURCE_KEY_LAST_UPDATED))'','',':SOURCE_KEY_LAST_UPDATED')
    #END
+    #IF( #TEXT(Input_LOADING_DOCK_IND)='' )
      '' 
    #ELSE
        IF( le.Input_LOADING_DOCK_IND = (TYPEOF(le.Input_LOADING_DOCK_IND))'','',':LOADING_DOCK_IND')
    #END
+    #IF( #TEXT(Input_RESIDENCE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_RESIDENCE_IND = (TYPEOF(le.Input_RESIDENCE_IND))'','',':RESIDENCE_IND')
    #END
+    #IF( #TEXT(Input_INSIDE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_INSIDE_IND = (TYPEOF(le.Input_INSIDE_IND))'','',':INSIDE_IND')
    #END
+    #IF( #TEXT(Input_LIFT_GATE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_LIFT_GATE_IND = (TYPEOF(le.Input_LIFT_GATE_IND))'','',':LIFT_GATE_IND')
    #END
+    #IF( #TEXT(Input_PAD_WRAPPED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PAD_WRAPPED_IND = (TYPEOF(le.Input_PAD_WRAPPED_IND))'','',':PAD_WRAPPED_IND')
    #END
+    #IF( #TEXT(Input_AIR_RIDE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_AIR_RIDE_IND = (TYPEOF(le.Input_AIR_RIDE_IND))'','',':AIR_RIDE_IND')
    #END
+    #IF( #TEXT(Input_DO_NOT_STACK_IND)='' )
      '' 
    #ELSE
        IF( le.Input_DO_NOT_STACK_IND = (TYPEOF(le.Input_DO_NOT_STACK_IND))'','',':DO_NOT_STACK_IND')
    #END
+    #IF( #TEXT(Input_REROUTE_FET_IND)='' )
      '' 
    #ELSE
        IF( le.Input_REROUTE_FET_IND = (TYPEOF(le.Input_REROUTE_FET_IND))'','',':REROUTE_FET_IND')
    #END
+    #IF( #TEXT(Input_RATE_QUOTE)='' )
      '' 
    #ELSE
        IF( le.Input_RATE_QUOTE = (TYPEOF(le.Input_RATE_QUOTE))'','',':RATE_QUOTE')
    #END
+    #IF( #TEXT(Input_CARRIER_PRO_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_CARRIER_PRO_NBR = (TYPEOF(le.Input_CARRIER_PRO_NBR))'','',':CARRIER_PRO_NBR')
    #END
+    #IF( #TEXT(Input_ACTUAL_FET_CARRIER)='' )
      '' 
    #ELSE
        IF( le.Input_ACTUAL_FET_CARRIER = (TYPEOF(le.Input_ACTUAL_FET_CARRIER))'','',':ACTUAL_FET_CARRIER')
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
