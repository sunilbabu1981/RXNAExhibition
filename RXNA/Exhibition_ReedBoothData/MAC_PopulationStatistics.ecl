EXPORT MAC_PopulationStatistics(infile,Ref='',Input_ORG_NAME = '',Input_FDC_CUSTOMER_NBR = '',Input_BOOTH_ID = '',Input_SHOW_KEY = '',Input_KEYVAL = '',Input_BOOTH_ID_1 = '',Input_WIDTH = '',Input_DEPTH = '',Input_MAINTENANCE = '',Input_QTY_SIGNS = '',Input_SIGN_LINE1 = '',Input_SIGN_LINE2 = '',Input_TARGET_DT = '',Input_NO_SIGN_IND = '',Input_SIGN_PRINTED_IND = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_BOOTH_TYPE_ID = '',Input_PARENT_BOOTH_KEY = '',Input_FACILITY_KEY = '',Input_LOCATION_KEY = '',Input_EXHIBITOR_ID = '',Input_COMPETITOR_KEY = '',Input_AREA = '',Input_OWNER_TYPE = '',Input_PROGRAM_ACCT_IND = '',Input_USE_PRIMARY_CARD_IND = '',Input_SOURCE_KEY = '',Input_SORTABLE_BOOTH = '',Input_RECOMMEND_CNT = '',Input_CREATE_DT = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ReedBoothData;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_ORG_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_ORG_NAME = (TYPEOF(le.Input_ORG_NAME))'','',':ORG_NAME')
    #END
+    #IF( #TEXT(Input_FDC_CUSTOMER_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_FDC_CUSTOMER_NBR = (TYPEOF(le.Input_FDC_CUSTOMER_NBR))'','',':FDC_CUSTOMER_NBR')
    #END
+    #IF( #TEXT(Input_BOOTH_ID)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_ID = (TYPEOF(le.Input_BOOTH_ID))'','',':BOOTH_ID')
    #END
+    #IF( #TEXT(Input_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_KEY = (TYPEOF(le.Input_SHOW_KEY))'','',':SHOW_KEY')
    #END
+    #IF( #TEXT(Input_KEYVAL)='' )
      '' 
    #ELSE
        IF( le.Input_KEYVAL = (TYPEOF(le.Input_KEYVAL))'','',':KEYVAL')
    #END
+    #IF( #TEXT(Input_BOOTH_ID_1)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_ID_1 = (TYPEOF(le.Input_BOOTH_ID_1))'','',':BOOTH_ID_1')
    #END
+    #IF( #TEXT(Input_WIDTH)='' )
      '' 
    #ELSE
        IF( le.Input_WIDTH = (TYPEOF(le.Input_WIDTH))'','',':WIDTH')
    #END
+    #IF( #TEXT(Input_DEPTH)='' )
      '' 
    #ELSE
        IF( le.Input_DEPTH = (TYPEOF(le.Input_DEPTH))'','',':DEPTH')
    #END
+    #IF( #TEXT(Input_MAINTENANCE)='' )
      '' 
    #ELSE
        IF( le.Input_MAINTENANCE = (TYPEOF(le.Input_MAINTENANCE))'','',':MAINTENANCE')
    #END
+    #IF( #TEXT(Input_QTY_SIGNS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_SIGNS = (TYPEOF(le.Input_QTY_SIGNS))'','',':QTY_SIGNS')
    #END
+    #IF( #TEXT(Input_SIGN_LINE1)='' )
      '' 
    #ELSE
        IF( le.Input_SIGN_LINE1 = (TYPEOF(le.Input_SIGN_LINE1))'','',':SIGN_LINE1')
    #END
+    #IF( #TEXT(Input_SIGN_LINE2)='' )
      '' 
    #ELSE
        IF( le.Input_SIGN_LINE2 = (TYPEOF(le.Input_SIGN_LINE2))'','',':SIGN_LINE2')
    #END
+    #IF( #TEXT(Input_TARGET_DT)='' )
      '' 
    #ELSE
        IF( le.Input_TARGET_DT = (TYPEOF(le.Input_TARGET_DT))'','',':TARGET_DT')
    #END
+    #IF( #TEXT(Input_NO_SIGN_IND)='' )
      '' 
    #ELSE
        IF( le.Input_NO_SIGN_IND = (TYPEOF(le.Input_NO_SIGN_IND))'','',':NO_SIGN_IND')
    #END
+    #IF( #TEXT(Input_SIGN_PRINTED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_SIGN_PRINTED_IND = (TYPEOF(le.Input_SIGN_PRINTED_IND))'','',':SIGN_PRINTED_IND')
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
+    #IF( #TEXT(Input_BOOTH_TYPE_ID)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_TYPE_ID = (TYPEOF(le.Input_BOOTH_TYPE_ID))'','',':BOOTH_TYPE_ID')
    #END
+    #IF( #TEXT(Input_PARENT_BOOTH_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_PARENT_BOOTH_KEY = (TYPEOF(le.Input_PARENT_BOOTH_KEY))'','',':PARENT_BOOTH_KEY')
    #END
+    #IF( #TEXT(Input_FACILITY_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_FACILITY_KEY = (TYPEOF(le.Input_FACILITY_KEY))'','',':FACILITY_KEY')
    #END
+    #IF( #TEXT(Input_LOCATION_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_LOCATION_KEY = (TYPEOF(le.Input_LOCATION_KEY))'','',':LOCATION_KEY')
    #END
+    #IF( #TEXT(Input_EXHIBITOR_ID)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR_ID = (TYPEOF(le.Input_EXHIBITOR_ID))'','',':EXHIBITOR_ID')
    #END
+    #IF( #TEXT(Input_COMPETITOR_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_COMPETITOR_KEY = (TYPEOF(le.Input_COMPETITOR_KEY))'','',':COMPETITOR_KEY')
    #END
+    #IF( #TEXT(Input_AREA)='' )
      '' 
    #ELSE
        IF( le.Input_AREA = (TYPEOF(le.Input_AREA))'','',':AREA')
    #END
+    #IF( #TEXT(Input_OWNER_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_OWNER_TYPE = (TYPEOF(le.Input_OWNER_TYPE))'','',':OWNER_TYPE')
    #END
+    #IF( #TEXT(Input_PROGRAM_ACCT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PROGRAM_ACCT_IND = (TYPEOF(le.Input_PROGRAM_ACCT_IND))'','',':PROGRAM_ACCT_IND')
    #END
+    #IF( #TEXT(Input_USE_PRIMARY_CARD_IND)='' )
      '' 
    #ELSE
        IF( le.Input_USE_PRIMARY_CARD_IND = (TYPEOF(le.Input_USE_PRIMARY_CARD_IND))'','',':USE_PRIMARY_CARD_IND')
    #END
+    #IF( #TEXT(Input_SOURCE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE_KEY = (TYPEOF(le.Input_SOURCE_KEY))'','',':SOURCE_KEY')
    #END
+    #IF( #TEXT(Input_SORTABLE_BOOTH)='' )
      '' 
    #ELSE
        IF( le.Input_SORTABLE_BOOTH = (TYPEOF(le.Input_SORTABLE_BOOTH))'','',':SORTABLE_BOOTH')
    #END
+    #IF( #TEXT(Input_RECOMMEND_CNT)='' )
      '' 
    #ELSE
        IF( le.Input_RECOMMEND_CNT = (TYPEOF(le.Input_RECOMMEND_CNT))'','',':RECOMMEND_CNT')
    #END
+    #IF( #TEXT(Input_CREATE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_CREATE_DT = (TYPEOF(le.Input_CREATE_DT))'','',':CREATE_DT')
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
