EXPORT MAC_PopulationStatistics(infile,Ref='',Input_BOOTH_ID = '',Input_KEYVAL = '',Input_SHOW_KEY = '',Input_AREA_KEY = '',Input_CUSTOMER_KEY = '',Input_BILL_TO = '',Input_BOOTH_KEY = '',Input_CARRIER_KEY = '',Input_COMPLETE_IND = '',Input_DESCRIPTION = '',Input_DROP_TRAILER_IND = '',Input_UNCRATED_IND = '',Input_OFF_TARGET_IND = '',Input_PRO_NBR = '',Input_FACILITY_KEY = '',Input_LOCATION_KEY = '',Input_C_WT = '',Input_QTY_BUNDLES = '',Input_QTY_CARPETS = '',Input_QTY_CARTONS = '',Input_QTY_CASES = '',Input_QTY_CRATES = '',Input_QTY_MACHINES = '',Input_QTY_PADS = '',Input_QTY_PIECES = '',Input_QTY_SKIDS = '',Input_RECEIVED_BY = '',Input_RECEIVED_LOCATION = '',Input_RECEIVED_DT = '',Input_SHIPPER = '',Input_SPECIAL_HANDL_IND = '',Input_STORAGE_LOC = '',Input_TARGET_DT = '',Input_TOTAL_PIECE_COUNT = '',Input_TOTAL_WEIGHT = '',Input_TOTAL_REWEIGH = '',Input_TOTAL_PRICE = '',Input_TRAILER_NUM = '',Input_TRUCK_NUM = '',Input_INVOICE_KEY = '',Input_TRANSACTION_KEY = '',Input_COMMENTS = '',Input_COMMENTS_BILLING = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_MULTIPLE_SHIPMENTS = '',Input_CREDIT_RECEIVER = '',Input_MANUAL_RECEIVER_NBR = '',Input_HOLD_CONFIRM_EMAIL_IND = '',Input_HOLD_PRESSED_IND = '',Input_SCAN_IND = '',Input_ORIGINAL_RECEIVER_NBR = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ReedFreightData;
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
+    #IF( #TEXT(Input_AREA_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_AREA_KEY = (TYPEOF(le.Input_AREA_KEY))'','',':AREA_KEY')
    #END
+    #IF( #TEXT(Input_CUSTOMER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMER_KEY = (TYPEOF(le.Input_CUSTOMER_KEY))'','',':CUSTOMER_KEY')
    #END
+    #IF( #TEXT(Input_BILL_TO)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO = (TYPEOF(le.Input_BILL_TO))'','',':BILL_TO')
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
+    #IF( #TEXT(Input_COMPLETE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_COMPLETE_IND = (TYPEOF(le.Input_COMPLETE_IND))'','',':COMPLETE_IND')
    #END
+    #IF( #TEXT(Input_DESCRIPTION)='' )
      '' 
    #ELSE
        IF( le.Input_DESCRIPTION = (TYPEOF(le.Input_DESCRIPTION))'','',':DESCRIPTION')
    #END
+    #IF( #TEXT(Input_DROP_TRAILER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_DROP_TRAILER_IND = (TYPEOF(le.Input_DROP_TRAILER_IND))'','',':DROP_TRAILER_IND')
    #END
+    #IF( #TEXT(Input_UNCRATED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_UNCRATED_IND = (TYPEOF(le.Input_UNCRATED_IND))'','',':UNCRATED_IND')
    #END
+    #IF( #TEXT(Input_OFF_TARGET_IND)='' )
      '' 
    #ELSE
        IF( le.Input_OFF_TARGET_IND = (TYPEOF(le.Input_OFF_TARGET_IND))'','',':OFF_TARGET_IND')
    #END
+    #IF( #TEXT(Input_PRO_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_PRO_NBR = (TYPEOF(le.Input_PRO_NBR))'','',':PRO_NBR')
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
+    #IF( #TEXT(Input_C_WT)='' )
      '' 
    #ELSE
        IF( le.Input_C_WT = (TYPEOF(le.Input_C_WT))'','',':C_WT')
    #END
+    #IF( #TEXT(Input_QTY_BUNDLES)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_BUNDLES = (TYPEOF(le.Input_QTY_BUNDLES))'','',':QTY_BUNDLES')
    #END
+    #IF( #TEXT(Input_QTY_CARPETS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_CARPETS = (TYPEOF(le.Input_QTY_CARPETS))'','',':QTY_CARPETS')
    #END
+    #IF( #TEXT(Input_QTY_CARTONS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_CARTONS = (TYPEOF(le.Input_QTY_CARTONS))'','',':QTY_CARTONS')
    #END
+    #IF( #TEXT(Input_QTY_CASES)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_CASES = (TYPEOF(le.Input_QTY_CASES))'','',':QTY_CASES')
    #END
+    #IF( #TEXT(Input_QTY_CRATES)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_CRATES = (TYPEOF(le.Input_QTY_CRATES))'','',':QTY_CRATES')
    #END
+    #IF( #TEXT(Input_QTY_MACHINES)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_MACHINES = (TYPEOF(le.Input_QTY_MACHINES))'','',':QTY_MACHINES')
    #END
+    #IF( #TEXT(Input_QTY_PADS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_PADS = (TYPEOF(le.Input_QTY_PADS))'','',':QTY_PADS')
    #END
+    #IF( #TEXT(Input_QTY_PIECES)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_PIECES = (TYPEOF(le.Input_QTY_PIECES))'','',':QTY_PIECES')
    #END
+    #IF( #TEXT(Input_QTY_SKIDS)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_SKIDS = (TYPEOF(le.Input_QTY_SKIDS))'','',':QTY_SKIDS')
    #END
+    #IF( #TEXT(Input_RECEIVED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_RECEIVED_BY = (TYPEOF(le.Input_RECEIVED_BY))'','',':RECEIVED_BY')
    #END
+    #IF( #TEXT(Input_RECEIVED_LOCATION)='' )
      '' 
    #ELSE
        IF( le.Input_RECEIVED_LOCATION = (TYPEOF(le.Input_RECEIVED_LOCATION))'','',':RECEIVED_LOCATION')
    #END
+    #IF( #TEXT(Input_RECEIVED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_RECEIVED_DT = (TYPEOF(le.Input_RECEIVED_DT))'','',':RECEIVED_DT')
    #END
+    #IF( #TEXT(Input_SHIPPER)='' )
      '' 
    #ELSE
        IF( le.Input_SHIPPER = (TYPEOF(le.Input_SHIPPER))'','',':SHIPPER')
    #END
+    #IF( #TEXT(Input_SPECIAL_HANDL_IND)='' )
      '' 
    #ELSE
        IF( le.Input_SPECIAL_HANDL_IND = (TYPEOF(le.Input_SPECIAL_HANDL_IND))'','',':SPECIAL_HANDL_IND')
    #END
+    #IF( #TEXT(Input_STORAGE_LOC)='' )
      '' 
    #ELSE
        IF( le.Input_STORAGE_LOC = (TYPEOF(le.Input_STORAGE_LOC))'','',':STORAGE_LOC')
    #END
+    #IF( #TEXT(Input_TARGET_DT)='' )
      '' 
    #ELSE
        IF( le.Input_TARGET_DT = (TYPEOF(le.Input_TARGET_DT))'','',':TARGET_DT')
    #END
+    #IF( #TEXT(Input_TOTAL_PIECE_COUNT)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_PIECE_COUNT = (TYPEOF(le.Input_TOTAL_PIECE_COUNT))'','',':TOTAL_PIECE_COUNT')
    #END
+    #IF( #TEXT(Input_TOTAL_WEIGHT)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_WEIGHT = (TYPEOF(le.Input_TOTAL_WEIGHT))'','',':TOTAL_WEIGHT')
    #END
+    #IF( #TEXT(Input_TOTAL_REWEIGH)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_REWEIGH = (TYPEOF(le.Input_TOTAL_REWEIGH))'','',':TOTAL_REWEIGH')
    #END
+    #IF( #TEXT(Input_TOTAL_PRICE)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_PRICE = (TYPEOF(le.Input_TOTAL_PRICE))'','',':TOTAL_PRICE')
    #END
+    #IF( #TEXT(Input_TRAILER_NUM)='' )
      '' 
    #ELSE
        IF( le.Input_TRAILER_NUM = (TYPEOF(le.Input_TRAILER_NUM))'','',':TRAILER_NUM')
    #END
+    #IF( #TEXT(Input_TRUCK_NUM)='' )
      '' 
    #ELSE
        IF( le.Input_TRUCK_NUM = (TYPEOF(le.Input_TRUCK_NUM))'','',':TRUCK_NUM')
    #END
+    #IF( #TEXT(Input_INVOICE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_INVOICE_KEY = (TYPEOF(le.Input_INVOICE_KEY))'','',':INVOICE_KEY')
    #END
+    #IF( #TEXT(Input_TRANSACTION_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_TRANSACTION_KEY = (TYPEOF(le.Input_TRANSACTION_KEY))'','',':TRANSACTION_KEY')
    #END
+    #IF( #TEXT(Input_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_COMMENTS = (TYPEOF(le.Input_COMMENTS))'','',':COMMENTS')
    #END
+    #IF( #TEXT(Input_COMMENTS_BILLING)='' )
      '' 
    #ELSE
        IF( le.Input_COMMENTS_BILLING = (TYPEOF(le.Input_COMMENTS_BILLING))'','',':COMMENTS_BILLING')
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
+    #IF( #TEXT(Input_MULTIPLE_SHIPMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_MULTIPLE_SHIPMENTS = (TYPEOF(le.Input_MULTIPLE_SHIPMENTS))'','',':MULTIPLE_SHIPMENTS')
    #END
+    #IF( #TEXT(Input_CREDIT_RECEIVER)='' )
      '' 
    #ELSE
        IF( le.Input_CREDIT_RECEIVER = (TYPEOF(le.Input_CREDIT_RECEIVER))'','',':CREDIT_RECEIVER')
    #END
+    #IF( #TEXT(Input_MANUAL_RECEIVER_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_MANUAL_RECEIVER_NBR = (TYPEOF(le.Input_MANUAL_RECEIVER_NBR))'','',':MANUAL_RECEIVER_NBR')
    #END
+    #IF( #TEXT(Input_HOLD_CONFIRM_EMAIL_IND)='' )
      '' 
    #ELSE
        IF( le.Input_HOLD_CONFIRM_EMAIL_IND = (TYPEOF(le.Input_HOLD_CONFIRM_EMAIL_IND))'','',':HOLD_CONFIRM_EMAIL_IND')
    #END
+    #IF( #TEXT(Input_HOLD_PRESSED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_HOLD_PRESSED_IND = (TYPEOF(le.Input_HOLD_PRESSED_IND))'','',':HOLD_PRESSED_IND')
    #END
+    #IF( #TEXT(Input_SCAN_IND)='' )
      '' 
    #ELSE
        IF( le.Input_SCAN_IND = (TYPEOF(le.Input_SCAN_IND))'','',':SCAN_IND')
    #END
+    #IF( #TEXT(Input_ORIGINAL_RECEIVER_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_ORIGINAL_RECEIVER_NBR = (TYPEOF(le.Input_ORIGINAL_RECEIVER_NBR))'','',':ORIGINAL_RECEIVER_NBR')
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
