﻿EXPORT layout_orderitemdata := RECORD
  UNICODE10 SHOW_KEY;
  UNICODE9 ORDER_KEY;
  UNICODE10 FOL_ORDER_KEY;
  UNICODE19 CREATION_DT;
  UNICODE8 ORDER_CREATOR_ID;
  UNICODE19 ITEM_CREATE_DT;
  UNICODE8 ITEM_CREATOR_ID;
  UNICODE5 KEYVAL;
  UNSIGNED2 ORDER_ITEM_NBR;
  UNICODE10 EXHIBITOR_KEY;
  UNICODE10 BILL_TO_KEY;
  UNICODE9 BOOTH_KEY;
  UNICODE9 BOOTH_ID;
  UNICODE19 BOOTH_SORT;
  UNICODE1 PRG_ACCT_BOOTH_IND;
  UNICODE1 PRG_ACCT_CUST_IND;
  UNICODE9 FACILITY_KEY;
  UNICODE9 LOCATION_KEY;
  UNICODE9 AREA_KEY;
  UNICODE1 VOID_ORDER_IND;
  UNICODE49 ORDER_DESCR;
  UNICODE ORDER_COMMENT;
  UNICODE8 CC_KEY;
  UNICODE4 CC_TYPE;
  UNSIGNED2 CC_LAST_FOUR_DIGITS;
  UNICODE13 PARENT_INV_PART_NBR;
  UNSIGNED1 PARENT_BOM_KEY;
  UNICODE13 INV_PART_NBR;
  REAL4 BOM_NBR;
  UNICODE9 INVOICE_KEY;
  UNSIGNED1 REV_LEVEL;
  UNSIGNED1 TRANSACTION_KEY;
  UNSIGNED1 QTY_MEN;
  REAL4 TOTAL_TIME;
  UNICODE9 QUANTITY;
  UNICODE10 STD_PRICE;
  UNICODE9 DIS_AMOUNT;
  REAL4 DIS_PCT;
  UNICODE10 UNIT_PRICE;
  UNICODE10 EXT_PRICE;
  REAL4 TAX_RATE;
  UNICODE9 TAX_AMOUNT;
  UNICODE5 TICKET_KEY;
  UNICODE10 TICKET_TYPE;
  UNICODE13 SUPEV_COMPANY;
  UNICODE23 LBR_SUPERVISOR;
  UNICODE25 CUSTOMER_CONTACT;
  UNICODE18 CUSTOMER_PHONE;
  UNICODE1 BILLED_IND;
  UNSIGNED1 OPS_RELEASED_IND;
  UNICODE1 LOCKED_IND;
  UNICODE1 WIP_IND;
  UNICODE1 COMPLETE_IND;
  UNICODE19 TARGET_DT;
  UNICODE19 EXPECTED_DT;
  UNICODE19 COMPLETE_DT;
  UNICODE COMMENTS;
  UNICODE COMMENTS_BILLING;
  UNICODE1 PRINTED_IND;
  UNSIGNED1 GROUP_NBR;
  UNSIGNED1 SUBGROUP_NBR;
  UNICODE5 PART_NBR;
  UNICODE50 CUSTOM_DESCR;
  UNICODE50 PRICE_ITEM_DESCR;
  UNICODE10 CSUS_EMP_NBR;
  UNICODE1 CSUS_ACTION;
  UNICODE13 CSUS_TRIGGER_PART;
  REAL4 PART_WIDTH;
  UNICODE1 PART_WIDTH_UOM;
  REAL4 PART_LENGTH;
  UNICODE1 PART_LENGTH_UOM;
  UNICODE9 PART_SQ_FEET;
  UNICODE1 DIM_EDITABLE_IND;
  UNICODE1 TAX_IND;
  UNICODE1 TELECOM_IND;
  UNICODE1 LA_PARISH_TAX_IND;
  UNICODE1 SELLABLE_IND;
  UNICODE1 GST_TAXABLE_IND;
  UNICODE1 HST_TAXABLE_IND;
  UNICODE1 PST_TAXABLE_IND;
  UNICODE1 GST_TAX_TAX_IND;
  UNICODE4 UOM;
  REAL4 MIN_QTY;
  UNICODE1 CUST_TAX_EXEMPT_IND;
  UNICODE1 CUST_GST_EXEMPT_IND;
  UNICODE1 CUST_HST_EXEMPT_IND;
  UNICODE1 CUST_PST_EXEMPT_IND;
  UNICODE1 CUST_GLOBAL_EXEMPT_IND;
  UNICODE5 CUSTOMER_TYPE;
  UNICODE40 BILL_TO_NAME;
  UNICODE4 BILL_TO_CREDIT_STATUS;
  UNICODE1 EMS_ORDER_IND;
  UNICODE8 USER_ID;
  UNICODE19 LAST_UPDATE_DT;
  UNICODE16 FET_SHIPMENT_NBR;
  UNICODE8 MHA_KEY;
  UNSIGNED1 MANUAL_MHA_NBR;
  UNICODE27 DESTINATION;
  REAL4 PIECES;
  UNICODE9 WEIGHT;
  UNICODE1 RECEIVER_IND;
  UNSIGNED1 ACCOUNTING_CODE;
  UNSIGNED1 SHOW_SITE_ORDER;
  UNSIGNED1 SHOW_SITE_REVISION;
  UNICODE1 ORDERWIP;
  UNICODE1 FOL_ORDER_IND;
  UNICODE1 ESS_ORDER_IND;
END;