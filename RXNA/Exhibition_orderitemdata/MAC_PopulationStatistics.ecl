EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_ORDER_KEY = '',Input_FOL_ORDER_KEY = '',Input_CREATION_DT = '',Input_ORDER_CREATOR_ID = '',Input_ITEM_CREATE_DT = '',Input_ITEM_CREATOR_ID = '',Input_KEYVAL = '',Input_ORDER_ITEM_NBR = '',Input_EXHIBITOR_KEY = '',Input_BILL_TO_KEY = '',Input_BOOTH_KEY = '',Input_BOOTH_ID = '',Input_BOOTH_SORT = '',Input_PRG_ACCT_BOOTH_IND = '',Input_PRG_ACCT_CUST_IND = '',Input_FACILITY_KEY = '',Input_LOCATION_KEY = '',Input_AREA_KEY = '',Input_VOID_ORDER_IND = '',Input_ORDER_DESCR = '',Input_ORDER_COMMENT = '',Input_CC_KEY = '',Input_CC_TYPE = '',Input_CC_LAST_FOUR_DIGITS = '',Input_PARENT_INV_PART_NBR = '',Input_PARENT_BOM_KEY = '',Input_INV_PART_NBR = '',Input_BOM_NBR = '',Input_INVOICE_KEY = '',Input_REV_LEVEL = '',Input_TRANSACTION_KEY = '',Input_QTY_MEN = '',Input_TOTAL_TIME = '',Input_QUANTITY = '',Input_STD_PRICE = '',Input_DIS_AMOUNT = '',Input_DIS_PCT = '',Input_UNIT_PRICE = '',Input_EXT_PRICE = '',Input_TAX_RATE = '',Input_TAX_AMOUNT = '',Input_TICKET_KEY = '',Input_TICKET_TYPE = '',Input_SUPEV_COMPANY = '',Input_LBR_SUPERVISOR = '',Input_CUSTOMER_CONTACT = '',Input_CUSTOMER_PHONE = '',Input_BILLED_IND = '',Input_OPS_RELEASED_IND = '',Input_LOCKED_IND = '',Input_WIP_IND = '',Input_COMPLETE_IND = '',Input_TARGET_DT = '',Input_EXPECTED_DT = '',Input_COMPLETE_DT = '',Input_COMMENTS = '',Input_COMMENTS_BILLING = '',Input_PRINTED_IND = '',Input_GROUP_NBR = '',Input_SUBGROUP_NBR = '',Input_PART_NBR = '',Input_CUSTOM_DESCR = '',Input_PRICE_ITEM_DESCR = '',Input_CSUS_EMP_NBR = '',Input_CSUS_ACTION = '',Input_CSUS_TRIGGER_PART = '',Input_PART_WIDTH = '',Input_PART_WIDTH_UOM = '',Input_PART_LENGTH = '',Input_PART_LENGTH_UOM = '',Input_PART_SQ_FEET = '',Input_DIM_EDITABLE_IND = '',Input_TAX_IND = '',Input_TELECOM_IND = '',Input_LA_PARISH_TAX_IND = '',Input_SELLABLE_IND = '',Input_GST_TAXABLE_IND = '',Input_HST_TAXABLE_IND = '',Input_PST_TAXABLE_IND = '',Input_GST_TAX_TAX_IND = '',Input_UOM = '',Input_MIN_QTY = '',Input_CUST_TAX_EXEMPT_IND = '',Input_CUST_GST_EXEMPT_IND = '',Input_CUST_HST_EXEMPT_IND = '',Input_CUST_PST_EXEMPT_IND = '',Input_CUST_GLOBAL_EXEMPT_IND = '',Input_CUSTOMER_TYPE = '',Input_BILL_TO_NAME = '',Input_BILL_TO_CREDIT_STATUS = '',Input_EMS_ORDER_IND = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_FET_SHIPMENT_NBR = '',Input_MHA_KEY = '',Input_MANUAL_MHA_NBR = '',Input_DESTINATION = '',Input_PIECES = '',Input_WEIGHT = '',Input_RECEIVER_IND = '',Input_ACCOUNTING_CODE = '',Input_SHOW_SITE_ORDER = '',Input_SHOW_SITE_REVISION = '',Input_ORDERWIP = '',Input_FOL_ORDER_IND = '',Input_ESS_ORDER_IND = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_orderitemdata;
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
+    #IF( #TEXT(Input_ORDER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_ORDER_KEY = (TYPEOF(le.Input_ORDER_KEY))'','',':ORDER_KEY')
    #END
+    #IF( #TEXT(Input_FOL_ORDER_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_FOL_ORDER_KEY = (TYPEOF(le.Input_FOL_ORDER_KEY))'','',':FOL_ORDER_KEY')
    #END
+    #IF( #TEXT(Input_CREATION_DT)='' )
      '' 
    #ELSE
        IF( le.Input_CREATION_DT = (TYPEOF(le.Input_CREATION_DT))'','',':CREATION_DT')
    #END
+    #IF( #TEXT(Input_ORDER_CREATOR_ID)='' )
      '' 
    #ELSE
        IF( le.Input_ORDER_CREATOR_ID = (TYPEOF(le.Input_ORDER_CREATOR_ID))'','',':ORDER_CREATOR_ID')
    #END
+    #IF( #TEXT(Input_ITEM_CREATE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_ITEM_CREATE_DT = (TYPEOF(le.Input_ITEM_CREATE_DT))'','',':ITEM_CREATE_DT')
    #END
+    #IF( #TEXT(Input_ITEM_CREATOR_ID)='' )
      '' 
    #ELSE
        IF( le.Input_ITEM_CREATOR_ID = (TYPEOF(le.Input_ITEM_CREATOR_ID))'','',':ITEM_CREATOR_ID')
    #END
+    #IF( #TEXT(Input_KEYVAL)='' )
      '' 
    #ELSE
        IF( le.Input_KEYVAL = (TYPEOF(le.Input_KEYVAL))'','',':KEYVAL')
    #END
+    #IF( #TEXT(Input_ORDER_ITEM_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_ORDER_ITEM_NBR = (TYPEOF(le.Input_ORDER_ITEM_NBR))'','',':ORDER_ITEM_NBR')
    #END
+    #IF( #TEXT(Input_EXHIBITOR_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR_KEY = (TYPEOF(le.Input_EXHIBITOR_KEY))'','',':EXHIBITOR_KEY')
    #END
+    #IF( #TEXT(Input_BILL_TO_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO_KEY = (TYPEOF(le.Input_BILL_TO_KEY))'','',':BILL_TO_KEY')
    #END
+    #IF( #TEXT(Input_BOOTH_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_KEY = (TYPEOF(le.Input_BOOTH_KEY))'','',':BOOTH_KEY')
    #END
+    #IF( #TEXT(Input_BOOTH_ID)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_ID = (TYPEOF(le.Input_BOOTH_ID))'','',':BOOTH_ID')
    #END
+    #IF( #TEXT(Input_BOOTH_SORT)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH_SORT = (TYPEOF(le.Input_BOOTH_SORT))'','',':BOOTH_SORT')
    #END
+    #IF( #TEXT(Input_PRG_ACCT_BOOTH_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PRG_ACCT_BOOTH_IND = (TYPEOF(le.Input_PRG_ACCT_BOOTH_IND))'','',':PRG_ACCT_BOOTH_IND')
    #END
+    #IF( #TEXT(Input_PRG_ACCT_CUST_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PRG_ACCT_CUST_IND = (TYPEOF(le.Input_PRG_ACCT_CUST_IND))'','',':PRG_ACCT_CUST_IND')
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
+    #IF( #TEXT(Input_AREA_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_AREA_KEY = (TYPEOF(le.Input_AREA_KEY))'','',':AREA_KEY')
    #END
+    #IF( #TEXT(Input_VOID_ORDER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_VOID_ORDER_IND = (TYPEOF(le.Input_VOID_ORDER_IND))'','',':VOID_ORDER_IND')
    #END
+    #IF( #TEXT(Input_ORDER_DESCR)='' )
      '' 
    #ELSE
        IF( le.Input_ORDER_DESCR = (TYPEOF(le.Input_ORDER_DESCR))'','',':ORDER_DESCR')
    #END
+    #IF( #TEXT(Input_ORDER_COMMENT)='' )
      '' 
    #ELSE
        IF( le.Input_ORDER_COMMENT = (TYPEOF(le.Input_ORDER_COMMENT))'','',':ORDER_COMMENT')
    #END
+    #IF( #TEXT(Input_CC_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CC_KEY = (TYPEOF(le.Input_CC_KEY))'','',':CC_KEY')
    #END
+    #IF( #TEXT(Input_CC_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_CC_TYPE = (TYPEOF(le.Input_CC_TYPE))'','',':CC_TYPE')
    #END
+    #IF( #TEXT(Input_CC_LAST_FOUR_DIGITS)='' )
      '' 
    #ELSE
        IF( le.Input_CC_LAST_FOUR_DIGITS = (TYPEOF(le.Input_CC_LAST_FOUR_DIGITS))'','',':CC_LAST_FOUR_DIGITS')
    #END
+    #IF( #TEXT(Input_PARENT_INV_PART_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_PARENT_INV_PART_NBR = (TYPEOF(le.Input_PARENT_INV_PART_NBR))'','',':PARENT_INV_PART_NBR')
    #END
+    #IF( #TEXT(Input_PARENT_BOM_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_PARENT_BOM_KEY = (TYPEOF(le.Input_PARENT_BOM_KEY))'','',':PARENT_BOM_KEY')
    #END
+    #IF( #TEXT(Input_INV_PART_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_INV_PART_NBR = (TYPEOF(le.Input_INV_PART_NBR))'','',':INV_PART_NBR')
    #END
+    #IF( #TEXT(Input_BOM_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_BOM_NBR = (TYPEOF(le.Input_BOM_NBR))'','',':BOM_NBR')
    #END
+    #IF( #TEXT(Input_INVOICE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_INVOICE_KEY = (TYPEOF(le.Input_INVOICE_KEY))'','',':INVOICE_KEY')
    #END
+    #IF( #TEXT(Input_REV_LEVEL)='' )
      '' 
    #ELSE
        IF( le.Input_REV_LEVEL = (TYPEOF(le.Input_REV_LEVEL))'','',':REV_LEVEL')
    #END
+    #IF( #TEXT(Input_TRANSACTION_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_TRANSACTION_KEY = (TYPEOF(le.Input_TRANSACTION_KEY))'','',':TRANSACTION_KEY')
    #END
+    #IF( #TEXT(Input_QTY_MEN)='' )
      '' 
    #ELSE
        IF( le.Input_QTY_MEN = (TYPEOF(le.Input_QTY_MEN))'','',':QTY_MEN')
    #END
+    #IF( #TEXT(Input_TOTAL_TIME)='' )
      '' 
    #ELSE
        IF( le.Input_TOTAL_TIME = (TYPEOF(le.Input_TOTAL_TIME))'','',':TOTAL_TIME')
    #END
+    #IF( #TEXT(Input_QUANTITY)='' )
      '' 
    #ELSE
        IF( le.Input_QUANTITY = (TYPEOF(le.Input_QUANTITY))'','',':QUANTITY')
    #END
+    #IF( #TEXT(Input_STD_PRICE)='' )
      '' 
    #ELSE
        IF( le.Input_STD_PRICE = (TYPEOF(le.Input_STD_PRICE))'','',':STD_PRICE')
    #END
+    #IF( #TEXT(Input_DIS_AMOUNT)='' )
      '' 
    #ELSE
        IF( le.Input_DIS_AMOUNT = (TYPEOF(le.Input_DIS_AMOUNT))'','',':DIS_AMOUNT')
    #END
+    #IF( #TEXT(Input_DIS_PCT)='' )
      '' 
    #ELSE
        IF( le.Input_DIS_PCT = (TYPEOF(le.Input_DIS_PCT))'','',':DIS_PCT')
    #END
+    #IF( #TEXT(Input_UNIT_PRICE)='' )
      '' 
    #ELSE
        IF( le.Input_UNIT_PRICE = (TYPEOF(le.Input_UNIT_PRICE))'','',':UNIT_PRICE')
    #END
+    #IF( #TEXT(Input_EXT_PRICE)='' )
      '' 
    #ELSE
        IF( le.Input_EXT_PRICE = (TYPEOF(le.Input_EXT_PRICE))'','',':EXT_PRICE')
    #END
+    #IF( #TEXT(Input_TAX_RATE)='' )
      '' 
    #ELSE
        IF( le.Input_TAX_RATE = (TYPEOF(le.Input_TAX_RATE))'','',':TAX_RATE')
    #END
+    #IF( #TEXT(Input_TAX_AMOUNT)='' )
      '' 
    #ELSE
        IF( le.Input_TAX_AMOUNT = (TYPEOF(le.Input_TAX_AMOUNT))'','',':TAX_AMOUNT')
    #END
+    #IF( #TEXT(Input_TICKET_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_TICKET_KEY = (TYPEOF(le.Input_TICKET_KEY))'','',':TICKET_KEY')
    #END
+    #IF( #TEXT(Input_TICKET_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_TICKET_TYPE = (TYPEOF(le.Input_TICKET_TYPE))'','',':TICKET_TYPE')
    #END
+    #IF( #TEXT(Input_SUPEV_COMPANY)='' )
      '' 
    #ELSE
        IF( le.Input_SUPEV_COMPANY = (TYPEOF(le.Input_SUPEV_COMPANY))'','',':SUPEV_COMPANY')
    #END
+    #IF( #TEXT(Input_LBR_SUPERVISOR)='' )
      '' 
    #ELSE
        IF( le.Input_LBR_SUPERVISOR = (TYPEOF(le.Input_LBR_SUPERVISOR))'','',':LBR_SUPERVISOR')
    #END
+    #IF( #TEXT(Input_CUSTOMER_CONTACT)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMER_CONTACT = (TYPEOF(le.Input_CUSTOMER_CONTACT))'','',':CUSTOMER_CONTACT')
    #END
+    #IF( #TEXT(Input_CUSTOMER_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMER_PHONE = (TYPEOF(le.Input_CUSTOMER_PHONE))'','',':CUSTOMER_PHONE')
    #END
+    #IF( #TEXT(Input_BILLED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_BILLED_IND = (TYPEOF(le.Input_BILLED_IND))'','',':BILLED_IND')
    #END
+    #IF( #TEXT(Input_OPS_RELEASED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_OPS_RELEASED_IND = (TYPEOF(le.Input_OPS_RELEASED_IND))'','',':OPS_RELEASED_IND')
    #END
+    #IF( #TEXT(Input_LOCKED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_LOCKED_IND = (TYPEOF(le.Input_LOCKED_IND))'','',':LOCKED_IND')
    #END
+    #IF( #TEXT(Input_WIP_IND)='' )
      '' 
    #ELSE
        IF( le.Input_WIP_IND = (TYPEOF(le.Input_WIP_IND))'','',':WIP_IND')
    #END
+    #IF( #TEXT(Input_COMPLETE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_COMPLETE_IND = (TYPEOF(le.Input_COMPLETE_IND))'','',':COMPLETE_IND')
    #END
+    #IF( #TEXT(Input_TARGET_DT)='' )
      '' 
    #ELSE
        IF( le.Input_TARGET_DT = (TYPEOF(le.Input_TARGET_DT))'','',':TARGET_DT')
    #END
+    #IF( #TEXT(Input_EXPECTED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_EXPECTED_DT = (TYPEOF(le.Input_EXPECTED_DT))'','',':EXPECTED_DT')
    #END
+    #IF( #TEXT(Input_COMPLETE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_COMPLETE_DT = (TYPEOF(le.Input_COMPLETE_DT))'','',':COMPLETE_DT')
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
+    #IF( #TEXT(Input_PRINTED_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PRINTED_IND = (TYPEOF(le.Input_PRINTED_IND))'','',':PRINTED_IND')
    #END
+    #IF( #TEXT(Input_GROUP_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_GROUP_NBR = (TYPEOF(le.Input_GROUP_NBR))'','',':GROUP_NBR')
    #END
+    #IF( #TEXT(Input_SUBGROUP_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_SUBGROUP_NBR = (TYPEOF(le.Input_SUBGROUP_NBR))'','',':SUBGROUP_NBR')
    #END
+    #IF( #TEXT(Input_PART_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_PART_NBR = (TYPEOF(le.Input_PART_NBR))'','',':PART_NBR')
    #END
+    #IF( #TEXT(Input_CUSTOM_DESCR)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOM_DESCR = (TYPEOF(le.Input_CUSTOM_DESCR))'','',':CUSTOM_DESCR')
    #END
+    #IF( #TEXT(Input_PRICE_ITEM_DESCR)='' )
      '' 
    #ELSE
        IF( le.Input_PRICE_ITEM_DESCR = (TYPEOF(le.Input_PRICE_ITEM_DESCR))'','',':PRICE_ITEM_DESCR')
    #END
+    #IF( #TEXT(Input_CSUS_EMP_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_CSUS_EMP_NBR = (TYPEOF(le.Input_CSUS_EMP_NBR))'','',':CSUS_EMP_NBR')
    #END
+    #IF( #TEXT(Input_CSUS_ACTION)='' )
      '' 
    #ELSE
        IF( le.Input_CSUS_ACTION = (TYPEOF(le.Input_CSUS_ACTION))'','',':CSUS_ACTION')
    #END
+    #IF( #TEXT(Input_CSUS_TRIGGER_PART)='' )
      '' 
    #ELSE
        IF( le.Input_CSUS_TRIGGER_PART = (TYPEOF(le.Input_CSUS_TRIGGER_PART))'','',':CSUS_TRIGGER_PART')
    #END
+    #IF( #TEXT(Input_PART_WIDTH)='' )
      '' 
    #ELSE
        IF( le.Input_PART_WIDTH = (TYPEOF(le.Input_PART_WIDTH))'','',':PART_WIDTH')
    #END
+    #IF( #TEXT(Input_PART_WIDTH_UOM)='' )
      '' 
    #ELSE
        IF( le.Input_PART_WIDTH_UOM = (TYPEOF(le.Input_PART_WIDTH_UOM))'','',':PART_WIDTH_UOM')
    #END
+    #IF( #TEXT(Input_PART_LENGTH)='' )
      '' 
    #ELSE
        IF( le.Input_PART_LENGTH = (TYPEOF(le.Input_PART_LENGTH))'','',':PART_LENGTH')
    #END
+    #IF( #TEXT(Input_PART_LENGTH_UOM)='' )
      '' 
    #ELSE
        IF( le.Input_PART_LENGTH_UOM = (TYPEOF(le.Input_PART_LENGTH_UOM))'','',':PART_LENGTH_UOM')
    #END
+    #IF( #TEXT(Input_PART_SQ_FEET)='' )
      '' 
    #ELSE
        IF( le.Input_PART_SQ_FEET = (TYPEOF(le.Input_PART_SQ_FEET))'','',':PART_SQ_FEET')
    #END
+    #IF( #TEXT(Input_DIM_EDITABLE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_DIM_EDITABLE_IND = (TYPEOF(le.Input_DIM_EDITABLE_IND))'','',':DIM_EDITABLE_IND')
    #END
+    #IF( #TEXT(Input_TAX_IND)='' )
      '' 
    #ELSE
        IF( le.Input_TAX_IND = (TYPEOF(le.Input_TAX_IND))'','',':TAX_IND')
    #END
+    #IF( #TEXT(Input_TELECOM_IND)='' )
      '' 
    #ELSE
        IF( le.Input_TELECOM_IND = (TYPEOF(le.Input_TELECOM_IND))'','',':TELECOM_IND')
    #END
+    #IF( #TEXT(Input_LA_PARISH_TAX_IND)='' )
      '' 
    #ELSE
        IF( le.Input_LA_PARISH_TAX_IND = (TYPEOF(le.Input_LA_PARISH_TAX_IND))'','',':LA_PARISH_TAX_IND')
    #END
+    #IF( #TEXT(Input_SELLABLE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_SELLABLE_IND = (TYPEOF(le.Input_SELLABLE_IND))'','',':SELLABLE_IND')
    #END
+    #IF( #TEXT(Input_GST_TAXABLE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_GST_TAXABLE_IND = (TYPEOF(le.Input_GST_TAXABLE_IND))'','',':GST_TAXABLE_IND')
    #END
+    #IF( #TEXT(Input_HST_TAXABLE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_HST_TAXABLE_IND = (TYPEOF(le.Input_HST_TAXABLE_IND))'','',':HST_TAXABLE_IND')
    #END
+    #IF( #TEXT(Input_PST_TAXABLE_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PST_TAXABLE_IND = (TYPEOF(le.Input_PST_TAXABLE_IND))'','',':PST_TAXABLE_IND')
    #END
+    #IF( #TEXT(Input_GST_TAX_TAX_IND)='' )
      '' 
    #ELSE
        IF( le.Input_GST_TAX_TAX_IND = (TYPEOF(le.Input_GST_TAX_TAX_IND))'','',':GST_TAX_TAX_IND')
    #END
+    #IF( #TEXT(Input_UOM)='' )
      '' 
    #ELSE
        IF( le.Input_UOM = (TYPEOF(le.Input_UOM))'','',':UOM')
    #END
+    #IF( #TEXT(Input_MIN_QTY)='' )
      '' 
    #ELSE
        IF( le.Input_MIN_QTY = (TYPEOF(le.Input_MIN_QTY))'','',':MIN_QTY')
    #END
+    #IF( #TEXT(Input_CUST_TAX_EXEMPT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_CUST_TAX_EXEMPT_IND = (TYPEOF(le.Input_CUST_TAX_EXEMPT_IND))'','',':CUST_TAX_EXEMPT_IND')
    #END
+    #IF( #TEXT(Input_CUST_GST_EXEMPT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_CUST_GST_EXEMPT_IND = (TYPEOF(le.Input_CUST_GST_EXEMPT_IND))'','',':CUST_GST_EXEMPT_IND')
    #END
+    #IF( #TEXT(Input_CUST_HST_EXEMPT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_CUST_HST_EXEMPT_IND = (TYPEOF(le.Input_CUST_HST_EXEMPT_IND))'','',':CUST_HST_EXEMPT_IND')
    #END
+    #IF( #TEXT(Input_CUST_PST_EXEMPT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_CUST_PST_EXEMPT_IND = (TYPEOF(le.Input_CUST_PST_EXEMPT_IND))'','',':CUST_PST_EXEMPT_IND')
    #END
+    #IF( #TEXT(Input_CUST_GLOBAL_EXEMPT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_CUST_GLOBAL_EXEMPT_IND = (TYPEOF(le.Input_CUST_GLOBAL_EXEMPT_IND))'','',':CUST_GLOBAL_EXEMPT_IND')
    #END
+    #IF( #TEXT(Input_CUSTOMER_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMER_TYPE = (TYPEOF(le.Input_CUSTOMER_TYPE))'','',':CUSTOMER_TYPE')
    #END
+    #IF( #TEXT(Input_BILL_TO_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO_NAME = (TYPEOF(le.Input_BILL_TO_NAME))'','',':BILL_TO_NAME')
    #END
+    #IF( #TEXT(Input_BILL_TO_CREDIT_STATUS)='' )
      '' 
    #ELSE
        IF( le.Input_BILL_TO_CREDIT_STATUS = (TYPEOF(le.Input_BILL_TO_CREDIT_STATUS))'','',':BILL_TO_CREDIT_STATUS')
    #END
+    #IF( #TEXT(Input_EMS_ORDER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_EMS_ORDER_IND = (TYPEOF(le.Input_EMS_ORDER_IND))'','',':EMS_ORDER_IND')
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
+    #IF( #TEXT(Input_FET_SHIPMENT_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_FET_SHIPMENT_NBR = (TYPEOF(le.Input_FET_SHIPMENT_NBR))'','',':FET_SHIPMENT_NBR')
    #END
+    #IF( #TEXT(Input_MHA_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_MHA_KEY = (TYPEOF(le.Input_MHA_KEY))'','',':MHA_KEY')
    #END
+    #IF( #TEXT(Input_MANUAL_MHA_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_MANUAL_MHA_NBR = (TYPEOF(le.Input_MANUAL_MHA_NBR))'','',':MANUAL_MHA_NBR')
    #END
+    #IF( #TEXT(Input_DESTINATION)='' )
      '' 
    #ELSE
        IF( le.Input_DESTINATION = (TYPEOF(le.Input_DESTINATION))'','',':DESTINATION')
    #END
+    #IF( #TEXT(Input_PIECES)='' )
      '' 
    #ELSE
        IF( le.Input_PIECES = (TYPEOF(le.Input_PIECES))'','',':PIECES')
    #END
+    #IF( #TEXT(Input_WEIGHT)='' )
      '' 
    #ELSE
        IF( le.Input_WEIGHT = (TYPEOF(le.Input_WEIGHT))'','',':WEIGHT')
    #END
+    #IF( #TEXT(Input_RECEIVER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_RECEIVER_IND = (TYPEOF(le.Input_RECEIVER_IND))'','',':RECEIVER_IND')
    #END
+    #IF( #TEXT(Input_ACCOUNTING_CODE)='' )
      '' 
    #ELSE
        IF( le.Input_ACCOUNTING_CODE = (TYPEOF(le.Input_ACCOUNTING_CODE))'','',':ACCOUNTING_CODE')
    #END
+    #IF( #TEXT(Input_SHOW_SITE_ORDER)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_SITE_ORDER = (TYPEOF(le.Input_SHOW_SITE_ORDER))'','',':SHOW_SITE_ORDER')
    #END
+    #IF( #TEXT(Input_SHOW_SITE_REVISION)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_SITE_REVISION = (TYPEOF(le.Input_SHOW_SITE_REVISION))'','',':SHOW_SITE_REVISION')
    #END
+    #IF( #TEXT(Input_ORDERWIP)='' )
      '' 
    #ELSE
        IF( le.Input_ORDERWIP = (TYPEOF(le.Input_ORDERWIP))'','',':ORDERWIP')
    #END
+    #IF( #TEXT(Input_FOL_ORDER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_FOL_ORDER_IND = (TYPEOF(le.Input_FOL_ORDER_IND))'','',':FOL_ORDER_IND')
    #END
+    #IF( #TEXT(Input_ESS_ORDER_IND)='' )
      '' 
    #ELSE
        IF( le.Input_ESS_ORDER_IND = (TYPEOF(le.Input_ESS_ORDER_IND))'','',':ESS_ORDER_IND')
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
