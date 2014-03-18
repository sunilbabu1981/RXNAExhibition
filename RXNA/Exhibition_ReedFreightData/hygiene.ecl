import ut,SALT28;
export hygiene(dataset(layout_ReedFreightData) h) := MODULE
//A simple summary record
export Summary(SALT28.Str30Type txt) := FUNCTION
  SummaryLayout := RECORD
    txt;
    NumberOfRecords := COUNT(GROUP);
    populated_BOOTH_ID_pcnt := AVE(GROUP,IF(h.BOOTH_ID = (TYPEOF(h.BOOTH_ID))'',0,100));
    maxlength_BOOTH_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID)));
    avelength_BOOTH_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_ID)),h.BOOTH_ID<>(typeof(h.BOOTH_ID))'');
    populated_KEYVAL_pcnt := AVE(GROUP,IF(h.KEYVAL = (TYPEOF(h.KEYVAL))'',0,100));
    maxlength_KEYVAL := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEYVAL)));
    avelength_KEYVAL := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.KEYVAL)),h.KEYVAL<>(typeof(h.KEYVAL))'');
    populated_SHOW_KEY_pcnt := AVE(GROUP,IF(h.SHOW_KEY = (TYPEOF(h.SHOW_KEY))'',0,100));
    maxlength_SHOW_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)));
    avelength_SHOW_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHOW_KEY)),h.SHOW_KEY<>(typeof(h.SHOW_KEY))'');
    populated_AREA_KEY_pcnt := AVE(GROUP,IF(h.AREA_KEY = (TYPEOF(h.AREA_KEY))'',0,100));
    maxlength_AREA_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.AREA_KEY)));
    avelength_AREA_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.AREA_KEY)),h.AREA_KEY<>(typeof(h.AREA_KEY))'');
    populated_CUSTOMER_KEY_pcnt := AVE(GROUP,IF(h.CUSTOMER_KEY = (TYPEOF(h.CUSTOMER_KEY))'',0,100));
    maxlength_CUSTOMER_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMER_KEY)));
    avelength_CUSTOMER_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CUSTOMER_KEY)),h.CUSTOMER_KEY<>(typeof(h.CUSTOMER_KEY))'');
    populated_BILL_TO_pcnt := AVE(GROUP,IF(h.BILL_TO = (TYPEOF(h.BILL_TO))'',0,100));
    maxlength_BILL_TO := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BILL_TO)));
    avelength_BILL_TO := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BILL_TO)),h.BILL_TO<>(typeof(h.BILL_TO))'');
    populated_BOOTH_KEY_pcnt := AVE(GROUP,IF(h.BOOTH_KEY = (TYPEOF(h.BOOTH_KEY))'',0,100));
    maxlength_BOOTH_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_KEY)));
    avelength_BOOTH_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.BOOTH_KEY)),h.BOOTH_KEY<>(typeof(h.BOOTH_KEY))'');
    populated_CARRIER_KEY_pcnt := AVE(GROUP,IF(h.CARRIER_KEY = (TYPEOF(h.CARRIER_KEY))'',0,100));
    maxlength_CARRIER_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CARRIER_KEY)));
    avelength_CARRIER_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CARRIER_KEY)),h.CARRIER_KEY<>(typeof(h.CARRIER_KEY))'');
    populated_COMPLETE_IND_pcnt := AVE(GROUP,IF(h.COMPLETE_IND = (TYPEOF(h.COMPLETE_IND))'',0,100));
    maxlength_COMPLETE_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPLETE_IND)));
    avelength_COMPLETE_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMPLETE_IND)),h.COMPLETE_IND<>(typeof(h.COMPLETE_IND))'');
    populated_DESCRIPTION_pcnt := AVE(GROUP,IF(h.DESCRIPTION = (TYPEOF(h.DESCRIPTION))'',0,100));
    maxlength_DESCRIPTION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)));
    avelength_DESCRIPTION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DESCRIPTION)),h.DESCRIPTION<>(typeof(h.DESCRIPTION))'');
    populated_DROP_TRAILER_IND_pcnt := AVE(GROUP,IF(h.DROP_TRAILER_IND = (TYPEOF(h.DROP_TRAILER_IND))'',0,100));
    maxlength_DROP_TRAILER_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.DROP_TRAILER_IND)));
    avelength_DROP_TRAILER_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.DROP_TRAILER_IND)),h.DROP_TRAILER_IND<>(typeof(h.DROP_TRAILER_IND))'');
    populated_UNCRATED_IND_pcnt := AVE(GROUP,IF(h.UNCRATED_IND = (TYPEOF(h.UNCRATED_IND))'',0,100));
    maxlength_UNCRATED_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.UNCRATED_IND)));
    avelength_UNCRATED_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.UNCRATED_IND)),h.UNCRATED_IND<>(typeof(h.UNCRATED_IND))'');
    populated_OFF_TARGET_IND_pcnt := AVE(GROUP,IF(h.OFF_TARGET_IND = (TYPEOF(h.OFF_TARGET_IND))'',0,100));
    maxlength_OFF_TARGET_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.OFF_TARGET_IND)));
    avelength_OFF_TARGET_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.OFF_TARGET_IND)),h.OFF_TARGET_IND<>(typeof(h.OFF_TARGET_IND))'');
    populated_PRO_NBR_pcnt := AVE(GROUP,IF(h.PRO_NBR = (TYPEOF(h.PRO_NBR))'',0,100));
    maxlength_PRO_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRO_NBR)));
    avelength_PRO_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.PRO_NBR)),h.PRO_NBR<>(typeof(h.PRO_NBR))'');
    populated_FACILITY_KEY_pcnt := AVE(GROUP,IF(h.FACILITY_KEY = (TYPEOF(h.FACILITY_KEY))'',0,100));
    maxlength_FACILITY_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.FACILITY_KEY)));
    avelength_FACILITY_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.FACILITY_KEY)),h.FACILITY_KEY<>(typeof(h.FACILITY_KEY))'');
    populated_LOCATION_KEY_pcnt := AVE(GROUP,IF(h.LOCATION_KEY = (TYPEOF(h.LOCATION_KEY))'',0,100));
    maxlength_LOCATION_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LOCATION_KEY)));
    avelength_LOCATION_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LOCATION_KEY)),h.LOCATION_KEY<>(typeof(h.LOCATION_KEY))'');
    populated_C_WT_pcnt := AVE(GROUP,IF(h.C_WT = (TYPEOF(h.C_WT))'',0,100));
    maxlength_C_WT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.C_WT)));
    avelength_C_WT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.C_WT)),h.C_WT<>(typeof(h.C_WT))'');
    populated_QTY_BUNDLES_pcnt := AVE(GROUP,IF(h.QTY_BUNDLES = (TYPEOF(h.QTY_BUNDLES))'',0,100));
    maxlength_QTY_BUNDLES := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_BUNDLES)));
    avelength_QTY_BUNDLES := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_BUNDLES)),h.QTY_BUNDLES<>(typeof(h.QTY_BUNDLES))'');
    populated_QTY_CARPETS_pcnt := AVE(GROUP,IF(h.QTY_CARPETS = (TYPEOF(h.QTY_CARPETS))'',0,100));
    maxlength_QTY_CARPETS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CARPETS)));
    avelength_QTY_CARPETS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CARPETS)),h.QTY_CARPETS<>(typeof(h.QTY_CARPETS))'');
    populated_QTY_CARTONS_pcnt := AVE(GROUP,IF(h.QTY_CARTONS = (TYPEOF(h.QTY_CARTONS))'',0,100));
    maxlength_QTY_CARTONS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CARTONS)));
    avelength_QTY_CARTONS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CARTONS)),h.QTY_CARTONS<>(typeof(h.QTY_CARTONS))'');
    populated_QTY_CASES_pcnt := AVE(GROUP,IF(h.QTY_CASES = (TYPEOF(h.QTY_CASES))'',0,100));
    maxlength_QTY_CASES := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CASES)));
    avelength_QTY_CASES := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CASES)),h.QTY_CASES<>(typeof(h.QTY_CASES))'');
    populated_QTY_CRATES_pcnt := AVE(GROUP,IF(h.QTY_CRATES = (TYPEOF(h.QTY_CRATES))'',0,100));
    maxlength_QTY_CRATES := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CRATES)));
    avelength_QTY_CRATES := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_CRATES)),h.QTY_CRATES<>(typeof(h.QTY_CRATES))'');
    populated_QTY_MACHINES_pcnt := AVE(GROUP,IF(h.QTY_MACHINES = (TYPEOF(h.QTY_MACHINES))'',0,100));
    maxlength_QTY_MACHINES := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_MACHINES)));
    avelength_QTY_MACHINES := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_MACHINES)),h.QTY_MACHINES<>(typeof(h.QTY_MACHINES))'');
    populated_QTY_PADS_pcnt := AVE(GROUP,IF(h.QTY_PADS = (TYPEOF(h.QTY_PADS))'',0,100));
    maxlength_QTY_PADS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_PADS)));
    avelength_QTY_PADS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_PADS)),h.QTY_PADS<>(typeof(h.QTY_PADS))'');
    populated_QTY_PIECES_pcnt := AVE(GROUP,IF(h.QTY_PIECES = (TYPEOF(h.QTY_PIECES))'',0,100));
    maxlength_QTY_PIECES := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_PIECES)));
    avelength_QTY_PIECES := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_PIECES)),h.QTY_PIECES<>(typeof(h.QTY_PIECES))'');
    populated_QTY_SKIDS_pcnt := AVE(GROUP,IF(h.QTY_SKIDS = (TYPEOF(h.QTY_SKIDS))'',0,100));
    maxlength_QTY_SKIDS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_SKIDS)));
    avelength_QTY_SKIDS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.QTY_SKIDS)),h.QTY_SKIDS<>(typeof(h.QTY_SKIDS))'');
    populated_RECEIVED_BY_pcnt := AVE(GROUP,IF(h.RECEIVED_BY = (TYPEOF(h.RECEIVED_BY))'',0,100));
    maxlength_RECEIVED_BY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_BY)));
    avelength_RECEIVED_BY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_BY)),h.RECEIVED_BY<>(typeof(h.RECEIVED_BY))'');
    populated_RECEIVED_LOCATION_pcnt := AVE(GROUP,IF(h.RECEIVED_LOCATION = (TYPEOF(h.RECEIVED_LOCATION))'',0,100));
    maxlength_RECEIVED_LOCATION := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_LOCATION)));
    avelength_RECEIVED_LOCATION := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_LOCATION)),h.RECEIVED_LOCATION<>(typeof(h.RECEIVED_LOCATION))'');
    populated_RECEIVED_DT_pcnt := AVE(GROUP,IF(h.RECEIVED_DT = (TYPEOF(h.RECEIVED_DT))'',0,100));
    maxlength_RECEIVED_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_DT)));
    avelength_RECEIVED_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.RECEIVED_DT)),h.RECEIVED_DT<>(typeof(h.RECEIVED_DT))'');
    populated_SHIPPER_pcnt := AVE(GROUP,IF(h.SHIPPER = (TYPEOF(h.SHIPPER))'',0,100));
    maxlength_SHIPPER := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHIPPER)));
    avelength_SHIPPER := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SHIPPER)),h.SHIPPER<>(typeof(h.SHIPPER))'');
    populated_SPECIAL_HANDL_IND_pcnt := AVE(GROUP,IF(h.SPECIAL_HANDL_IND = (TYPEOF(h.SPECIAL_HANDL_IND))'',0,100));
    maxlength_SPECIAL_HANDL_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPECIAL_HANDL_IND)));
    avelength_SPECIAL_HANDL_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SPECIAL_HANDL_IND)),h.SPECIAL_HANDL_IND<>(typeof(h.SPECIAL_HANDL_IND))'');
    populated_STORAGE_LOC_pcnt := AVE(GROUP,IF(h.STORAGE_LOC = (TYPEOF(h.STORAGE_LOC))'',0,100));
    maxlength_STORAGE_LOC := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.STORAGE_LOC)));
    avelength_STORAGE_LOC := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.STORAGE_LOC)),h.STORAGE_LOC<>(typeof(h.STORAGE_LOC))'');
    populated_TARGET_DT_pcnt := AVE(GROUP,IF(h.TARGET_DT = (TYPEOF(h.TARGET_DT))'',0,100));
    maxlength_TARGET_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TARGET_DT)));
    avelength_TARGET_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TARGET_DT)),h.TARGET_DT<>(typeof(h.TARGET_DT))'');
    populated_TOTAL_PIECE_COUNT_pcnt := AVE(GROUP,IF(h.TOTAL_PIECE_COUNT = (TYPEOF(h.TOTAL_PIECE_COUNT))'',0,100));
    maxlength_TOTAL_PIECE_COUNT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_PIECE_COUNT)));
    avelength_TOTAL_PIECE_COUNT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_PIECE_COUNT)),h.TOTAL_PIECE_COUNT<>(typeof(h.TOTAL_PIECE_COUNT))'');
    populated_TOTAL_WEIGHT_pcnt := AVE(GROUP,IF(h.TOTAL_WEIGHT = (TYPEOF(h.TOTAL_WEIGHT))'',0,100));
    maxlength_TOTAL_WEIGHT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_WEIGHT)));
    avelength_TOTAL_WEIGHT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_WEIGHT)),h.TOTAL_WEIGHT<>(typeof(h.TOTAL_WEIGHT))'');
    populated_TOTAL_REWEIGH_pcnt := AVE(GROUP,IF(h.TOTAL_REWEIGH = (TYPEOF(h.TOTAL_REWEIGH))'',0,100));
    maxlength_TOTAL_REWEIGH := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_REWEIGH)));
    avelength_TOTAL_REWEIGH := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_REWEIGH)),h.TOTAL_REWEIGH<>(typeof(h.TOTAL_REWEIGH))'');
    populated_TOTAL_PRICE_pcnt := AVE(GROUP,IF(h.TOTAL_PRICE = (TYPEOF(h.TOTAL_PRICE))'',0,100));
    maxlength_TOTAL_PRICE := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_PRICE)));
    avelength_TOTAL_PRICE := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TOTAL_PRICE)),h.TOTAL_PRICE<>(typeof(h.TOTAL_PRICE))'');
    populated_TRAILER_NUM_pcnt := AVE(GROUP,IF(h.TRAILER_NUM = (TYPEOF(h.TRAILER_NUM))'',0,100));
    maxlength_TRAILER_NUM := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRAILER_NUM)));
    avelength_TRAILER_NUM := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRAILER_NUM)),h.TRAILER_NUM<>(typeof(h.TRAILER_NUM))'');
    populated_TRUCK_NUM_pcnt := AVE(GROUP,IF(h.TRUCK_NUM = (TYPEOF(h.TRUCK_NUM))'',0,100));
    maxlength_TRUCK_NUM := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRUCK_NUM)));
    avelength_TRUCK_NUM := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRUCK_NUM)),h.TRUCK_NUM<>(typeof(h.TRUCK_NUM))'');
    populated_INVOICE_KEY_pcnt := AVE(GROUP,IF(h.INVOICE_KEY = (TYPEOF(h.INVOICE_KEY))'',0,100));
    maxlength_INVOICE_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.INVOICE_KEY)));
    avelength_INVOICE_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.INVOICE_KEY)),h.INVOICE_KEY<>(typeof(h.INVOICE_KEY))'');
    populated_TRANSACTION_KEY_pcnt := AVE(GROUP,IF(h.TRANSACTION_KEY = (TYPEOF(h.TRANSACTION_KEY))'',0,100));
    maxlength_TRANSACTION_KEY := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRANSACTION_KEY)));
    avelength_TRANSACTION_KEY := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.TRANSACTION_KEY)),h.TRANSACTION_KEY<>(typeof(h.TRANSACTION_KEY))'');
    populated_COMMENTS_pcnt := AVE(GROUP,IF(h.COMMENTS = (TYPEOF(h.COMMENTS))'',0,100));
    maxlength_COMMENTS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS)));
    avelength_COMMENTS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS)),h.COMMENTS<>(typeof(h.COMMENTS))'');
    populated_COMMENTS_BILLING_pcnt := AVE(GROUP,IF(h.COMMENTS_BILLING = (TYPEOF(h.COMMENTS_BILLING))'',0,100));
    maxlength_COMMENTS_BILLING := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS_BILLING)));
    avelength_COMMENTS_BILLING := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.COMMENTS_BILLING)),h.COMMENTS_BILLING<>(typeof(h.COMMENTS_BILLING))'');
    populated_USER_ID_pcnt := AVE(GROUP,IF(h.USER_ID = (TYPEOF(h.USER_ID))'',0,100));
    maxlength_USER_ID := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)));
    avelength_USER_ID := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.USER_ID)),h.USER_ID<>(typeof(h.USER_ID))'');
    populated_LAST_UPDATE_DT_pcnt := AVE(GROUP,IF(h.LAST_UPDATE_DT = (TYPEOF(h.LAST_UPDATE_DT))'',0,100));
    maxlength_LAST_UPDATE_DT := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)));
    avelength_LAST_UPDATE_DT := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.LAST_UPDATE_DT)),h.LAST_UPDATE_DT<>(typeof(h.LAST_UPDATE_DT))'');
    populated_MULTIPLE_SHIPMENTS_pcnt := AVE(GROUP,IF(h.MULTIPLE_SHIPMENTS = (TYPEOF(h.MULTIPLE_SHIPMENTS))'',0,100));
    maxlength_MULTIPLE_SHIPMENTS := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MULTIPLE_SHIPMENTS)));
    avelength_MULTIPLE_SHIPMENTS := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MULTIPLE_SHIPMENTS)),h.MULTIPLE_SHIPMENTS<>(typeof(h.MULTIPLE_SHIPMENTS))'');
    populated_CREDIT_RECEIVER_pcnt := AVE(GROUP,IF(h.CREDIT_RECEIVER = (TYPEOF(h.CREDIT_RECEIVER))'',0,100));
    maxlength_CREDIT_RECEIVER := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREDIT_RECEIVER)));
    avelength_CREDIT_RECEIVER := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.CREDIT_RECEIVER)),h.CREDIT_RECEIVER<>(typeof(h.CREDIT_RECEIVER))'');
    populated_MANUAL_RECEIVER_NBR_pcnt := AVE(GROUP,IF(h.MANUAL_RECEIVER_NBR = (TYPEOF(h.MANUAL_RECEIVER_NBR))'',0,100));
    maxlength_MANUAL_RECEIVER_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.MANUAL_RECEIVER_NBR)));
    avelength_MANUAL_RECEIVER_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.MANUAL_RECEIVER_NBR)),h.MANUAL_RECEIVER_NBR<>(typeof(h.MANUAL_RECEIVER_NBR))'');
    populated_HOLD_CONFIRM_EMAIL_IND_pcnt := AVE(GROUP,IF(h.HOLD_CONFIRM_EMAIL_IND = (TYPEOF(h.HOLD_CONFIRM_EMAIL_IND))'',0,100));
    maxlength_HOLD_CONFIRM_EMAIL_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.HOLD_CONFIRM_EMAIL_IND)));
    avelength_HOLD_CONFIRM_EMAIL_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.HOLD_CONFIRM_EMAIL_IND)),h.HOLD_CONFIRM_EMAIL_IND<>(typeof(h.HOLD_CONFIRM_EMAIL_IND))'');
    populated_HOLD_PRESSED_IND_pcnt := AVE(GROUP,IF(h.HOLD_PRESSED_IND = (TYPEOF(h.HOLD_PRESSED_IND))'',0,100));
    maxlength_HOLD_PRESSED_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.HOLD_PRESSED_IND)));
    avelength_HOLD_PRESSED_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.HOLD_PRESSED_IND)),h.HOLD_PRESSED_IND<>(typeof(h.HOLD_PRESSED_IND))'');
    populated_SCAN_IND_pcnt := AVE(GROUP,IF(h.SCAN_IND = (TYPEOF(h.SCAN_IND))'',0,100));
    maxlength_SCAN_IND := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.SCAN_IND)));
    avelength_SCAN_IND := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.SCAN_IND)),h.SCAN_IND<>(typeof(h.SCAN_IND))'');
    populated_ORIGINAL_RECEIVER_NBR_pcnt := AVE(GROUP,IF(h.ORIGINAL_RECEIVER_NBR = (TYPEOF(h.ORIGINAL_RECEIVER_NBR))'',0,100));
    maxlength_ORIGINAL_RECEIVER_NBR := MAX(GROUP,LENGTH(TRIM((SALT28.StrType)h.ORIGINAL_RECEIVER_NBR)));
    avelength_ORIGINAL_RECEIVER_NBR := AVE(GROUP,LENGTH(TRIM((SALT28.StrType)h.ORIGINAL_RECEIVER_NBR)),h.ORIGINAL_RECEIVER_NBR<>(typeof(h.ORIGINAL_RECEIVER_NBR))'');
  END;
  RETURN table(h,SummaryLayout);
END;
// The character counts
// Move everything into 'inverted list' form so processing can be done 'in library'
SALT28.MAC_Character_Counts.X_Data_Layout Into(h le,unsigned C) := TRANSFORM
  SELF.Fld := TRIM(CHOOSE(C,TRIM((SALT28.StrType)le.BOOTH_ID),TRIM((SALT28.StrType)le.KEYVAL),TRIM((SALT28.StrType)le.SHOW_KEY),TRIM((SALT28.StrType)le.AREA_KEY),TRIM((SALT28.StrType)le.CUSTOMER_KEY),TRIM((SALT28.StrType)le.BILL_TO),TRIM((SALT28.StrType)le.BOOTH_KEY),TRIM((SALT28.StrType)le.CARRIER_KEY),TRIM((SALT28.StrType)le.COMPLETE_IND),TRIM((SALT28.StrType)le.DESCRIPTION),TRIM((SALT28.StrType)le.DROP_TRAILER_IND),TRIM((SALT28.StrType)le.UNCRATED_IND),TRIM((SALT28.StrType)le.OFF_TARGET_IND),TRIM((SALT28.StrType)le.PRO_NBR),TRIM((SALT28.StrType)le.FACILITY_KEY),TRIM((SALT28.StrType)le.LOCATION_KEY),TRIM((SALT28.StrType)le.C_WT),TRIM((SALT28.StrType)le.QTY_BUNDLES),TRIM((SALT28.StrType)le.QTY_CARPETS),TRIM((SALT28.StrType)le.QTY_CARTONS),TRIM((SALT28.StrType)le.QTY_CASES),TRIM((SALT28.StrType)le.QTY_CRATES),TRIM((SALT28.StrType)le.QTY_MACHINES),TRIM((SALT28.StrType)le.QTY_PADS),TRIM((SALT28.StrType)le.QTY_PIECES),TRIM((SALT28.StrType)le.QTY_SKIDS),TRIM((SALT28.StrType)le.RECEIVED_BY),TRIM((SALT28.StrType)le.RECEIVED_LOCATION),TRIM((SALT28.StrType)le.RECEIVED_DT),TRIM((SALT28.StrType)le.SHIPPER),TRIM((SALT28.StrType)le.SPECIAL_HANDL_IND),TRIM((SALT28.StrType)le.STORAGE_LOC),TRIM((SALT28.StrType)le.TARGET_DT),TRIM((SALT28.StrType)le.TOTAL_PIECE_COUNT),TRIM((SALT28.StrType)le.TOTAL_WEIGHT),TRIM((SALT28.StrType)le.TOTAL_REWEIGH),TRIM((SALT28.StrType)le.TOTAL_PRICE),TRIM((SALT28.StrType)le.TRAILER_NUM),TRIM((SALT28.StrType)le.TRUCK_NUM),TRIM((SALT28.StrType)le.INVOICE_KEY),TRIM((SALT28.StrType)le.TRANSACTION_KEY),TRIM((SALT28.StrType)le.COMMENTS),TRIM((SALT28.StrType)le.COMMENTS_BILLING),TRIM((SALT28.StrType)le.USER_ID),TRIM((SALT28.StrType)le.LAST_UPDATE_DT),TRIM((SALT28.StrType)le.MULTIPLE_SHIPMENTS),TRIM((SALT28.StrType)le.CREDIT_RECEIVER),TRIM((SALT28.StrType)le.MANUAL_RECEIVER_NBR),TRIM((SALT28.StrType)le.HOLD_CONFIRM_EMAIL_IND),TRIM((SALT28.StrType)le.HOLD_PRESSED_IND),TRIM((SALT28.StrType)le.SCAN_IND),TRIM((SALT28.StrType)le.ORIGINAL_RECEIVER_NBR)));
  SELF.FldNo := C;
END;
SHARED FldInv0 := NORMALIZE(h,52,Into(LEFT,COUNTER));
SHARED FldIds := DATASET([{1,'BOOTH_ID'}
      ,{2,'KEYVAL'}
      ,{3,'SHOW_KEY'}
      ,{4,'AREA_KEY'}
      ,{5,'CUSTOMER_KEY'}
      ,{6,'BILL_TO'}
      ,{7,'BOOTH_KEY'}
      ,{8,'CARRIER_KEY'}
      ,{9,'COMPLETE_IND'}
      ,{10,'DESCRIPTION'}
      ,{11,'DROP_TRAILER_IND'}
      ,{12,'UNCRATED_IND'}
      ,{13,'OFF_TARGET_IND'}
      ,{14,'PRO_NBR'}
      ,{15,'FACILITY_KEY'}
      ,{16,'LOCATION_KEY'}
      ,{17,'C_WT'}
      ,{18,'QTY_BUNDLES'}
      ,{19,'QTY_CARPETS'}
      ,{20,'QTY_CARTONS'}
      ,{21,'QTY_CASES'}
      ,{22,'QTY_CRATES'}
      ,{23,'QTY_MACHINES'}
      ,{24,'QTY_PADS'}
      ,{25,'QTY_PIECES'}
      ,{26,'QTY_SKIDS'}
      ,{27,'RECEIVED_BY'}
      ,{28,'RECEIVED_LOCATION'}
      ,{29,'RECEIVED_DT'}
      ,{30,'SHIPPER'}
      ,{31,'SPECIAL_HANDL_IND'}
      ,{32,'STORAGE_LOC'}
      ,{33,'TARGET_DT'}
      ,{34,'TOTAL_PIECE_COUNT'}
      ,{35,'TOTAL_WEIGHT'}
      ,{36,'TOTAL_REWEIGH'}
      ,{37,'TOTAL_PRICE'}
      ,{38,'TRAILER_NUM'}
      ,{39,'TRUCK_NUM'}
      ,{40,'INVOICE_KEY'}
      ,{41,'TRANSACTION_KEY'}
      ,{42,'COMMENTS'}
      ,{43,'COMMENTS_BILLING'}
      ,{44,'USER_ID'}
      ,{45,'LAST_UPDATE_DT'}
      ,{46,'MULTIPLE_SHIPMENTS'}
      ,{47,'CREDIT_RECEIVER'}
      ,{48,'MANUAL_RECEIVER_NBR'}
      ,{49,'HOLD_CONFIRM_EMAIL_IND'}
      ,{50,'HOLD_PRESSED_IND'}
      ,{51,'SCAN_IND'}
      ,{52,'ORIGINAL_RECEIVER_NBR'}],SALT28.MAC_Character_Counts.Field_Identification);
EXPORT AllProfiles := SALT28.MAC_Character_Counts.FN_Profile(FldInv0,FldIds);
EXPORT SrcProfiles := SALT28.MAC_Character_Counts.Src_Profile(FldInv0,FldIds);
ErrorRecord := record
  unsigned1 FieldNum;
  unsigned1 ErrorNum;
end;
ErrorRecord NoteErrors(h le,unsigned1 c) := transform
  self.ErrorNum := CHOOSE(c,
    Fields.InValid_BOOTH_ID((SALT28.StrType)le.BOOTH_ID),
    Fields.InValid_KEYVAL((SALT28.StrType)le.KEYVAL),
    Fields.InValid_SHOW_KEY((SALT28.StrType)le.SHOW_KEY),
    Fields.InValid_AREA_KEY((SALT28.StrType)le.AREA_KEY),
    Fields.InValid_CUSTOMER_KEY((SALT28.StrType)le.CUSTOMER_KEY),
    Fields.InValid_BILL_TO((SALT28.StrType)le.BILL_TO),
    Fields.InValid_BOOTH_KEY((SALT28.StrType)le.BOOTH_KEY),
    Fields.InValid_CARRIER_KEY((SALT28.StrType)le.CARRIER_KEY),
    Fields.InValid_COMPLETE_IND((SALT28.StrType)le.COMPLETE_IND),
    Fields.InValid_DESCRIPTION((SALT28.StrType)le.DESCRIPTION),
    Fields.InValid_DROP_TRAILER_IND((SALT28.StrType)le.DROP_TRAILER_IND),
    Fields.InValid_UNCRATED_IND((SALT28.StrType)le.UNCRATED_IND),
    Fields.InValid_OFF_TARGET_IND((SALT28.StrType)le.OFF_TARGET_IND),
    Fields.InValid_PRO_NBR((SALT28.StrType)le.PRO_NBR),
    Fields.InValid_FACILITY_KEY((SALT28.StrType)le.FACILITY_KEY),
    Fields.InValid_LOCATION_KEY((SALT28.StrType)le.LOCATION_KEY),
    Fields.InValid_C_WT((SALT28.StrType)le.C_WT),
    Fields.InValid_QTY_BUNDLES((SALT28.StrType)le.QTY_BUNDLES),
    Fields.InValid_QTY_CARPETS((SALT28.StrType)le.QTY_CARPETS),
    Fields.InValid_QTY_CARTONS((SALT28.StrType)le.QTY_CARTONS),
    Fields.InValid_QTY_CASES((SALT28.StrType)le.QTY_CASES),
    Fields.InValid_QTY_CRATES((SALT28.StrType)le.QTY_CRATES),
    Fields.InValid_QTY_MACHINES((SALT28.StrType)le.QTY_MACHINES),
    Fields.InValid_QTY_PADS((SALT28.StrType)le.QTY_PADS),
    Fields.InValid_QTY_PIECES((SALT28.StrType)le.QTY_PIECES),
    Fields.InValid_QTY_SKIDS((SALT28.StrType)le.QTY_SKIDS),
    Fields.InValid_RECEIVED_BY((SALT28.StrType)le.RECEIVED_BY),
    Fields.InValid_RECEIVED_LOCATION((SALT28.StrType)le.RECEIVED_LOCATION),
    Fields.InValid_RECEIVED_DT((SALT28.StrType)le.RECEIVED_DT),
    Fields.InValid_SHIPPER((SALT28.StrType)le.SHIPPER),
    Fields.InValid_SPECIAL_HANDL_IND((SALT28.StrType)le.SPECIAL_HANDL_IND),
    Fields.InValid_STORAGE_LOC((SALT28.StrType)le.STORAGE_LOC),
    Fields.InValid_TARGET_DT((SALT28.StrType)le.TARGET_DT),
    Fields.InValid_TOTAL_PIECE_COUNT((SALT28.StrType)le.TOTAL_PIECE_COUNT),
    Fields.InValid_TOTAL_WEIGHT((SALT28.StrType)le.TOTAL_WEIGHT),
    Fields.InValid_TOTAL_REWEIGH((SALT28.StrType)le.TOTAL_REWEIGH),
    Fields.InValid_TOTAL_PRICE((SALT28.StrType)le.TOTAL_PRICE),
    Fields.InValid_TRAILER_NUM((SALT28.StrType)le.TRAILER_NUM),
    Fields.InValid_TRUCK_NUM((SALT28.StrType)le.TRUCK_NUM),
    Fields.InValid_INVOICE_KEY((SALT28.StrType)le.INVOICE_KEY),
    Fields.InValid_TRANSACTION_KEY((SALT28.StrType)le.TRANSACTION_KEY),
    Fields.InValid_COMMENTS((SALT28.StrType)le.COMMENTS),
    Fields.InValid_COMMENTS_BILLING((SALT28.StrType)le.COMMENTS_BILLING),
    Fields.InValid_USER_ID((SALT28.StrType)le.USER_ID),
    Fields.InValid_LAST_UPDATE_DT((SALT28.StrType)le.LAST_UPDATE_DT),
    Fields.InValid_MULTIPLE_SHIPMENTS((SALT28.StrType)le.MULTIPLE_SHIPMENTS),
    Fields.InValid_CREDIT_RECEIVER((SALT28.StrType)le.CREDIT_RECEIVER),
    Fields.InValid_MANUAL_RECEIVER_NBR((SALT28.StrType)le.MANUAL_RECEIVER_NBR),
    Fields.InValid_HOLD_CONFIRM_EMAIL_IND((SALT28.StrType)le.HOLD_CONFIRM_EMAIL_IND),
    Fields.InValid_HOLD_PRESSED_IND((SALT28.StrType)le.HOLD_PRESSED_IND),
    Fields.InValid_SCAN_IND((SALT28.StrType)le.SCAN_IND),
    Fields.InValid_ORIGINAL_RECEIVER_NBR((SALT28.StrType)le.ORIGINAL_RECEIVER_NBR),
    0);
  self.FieldNum := IF(self.ErrorNum=0,SKIP,c); // Bail early to avoid creating record
end;
Errors := normalize(h,52,NoteErrors(left,counter));
ErrorRecordsTotals := record
  Errors.FieldNum;
  Errors.ErrorNum;
  unsigned Cnt := count(group);
end;
TotalErrors := TABLE(Errors,ErrorRecordsTotals,FieldNum,ErrorNum,FEW);
PrettyErrorTotals := record
  FieldNme := Fields.FieldName(TotalErrors.FieldNum);
  ErrorMessage := CHOOSE(TotalErrors.FieldNum,Fields.InValidMessage_BOOTH_ID(TotalErrors.ErrorNum),Fields.InValidMessage_KEYVAL(TotalErrors.ErrorNum),Fields.InValidMessage_SHOW_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_AREA_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CUSTOMER_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_BILL_TO(TotalErrors.ErrorNum),Fields.InValidMessage_BOOTH_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_CARRIER_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_COMPLETE_IND(TotalErrors.ErrorNum),Fields.InValidMessage_DESCRIPTION(TotalErrors.ErrorNum),Fields.InValidMessage_DROP_TRAILER_IND(TotalErrors.ErrorNum),Fields.InValidMessage_UNCRATED_IND(TotalErrors.ErrorNum),Fields.InValidMessage_OFF_TARGET_IND(TotalErrors.ErrorNum),Fields.InValidMessage_PRO_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_FACILITY_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_LOCATION_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_C_WT(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_BUNDLES(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_CARPETS(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_CARTONS(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_CASES(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_CRATES(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_MACHINES(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_PADS(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_PIECES(TotalErrors.ErrorNum),Fields.InValidMessage_QTY_SKIDS(TotalErrors.ErrorNum),Fields.InValidMessage_RECEIVED_BY(TotalErrors.ErrorNum),Fields.InValidMessage_RECEIVED_LOCATION(TotalErrors.ErrorNum),Fields.InValidMessage_RECEIVED_DT(TotalErrors.ErrorNum),Fields.InValidMessage_SHIPPER(TotalErrors.ErrorNum),Fields.InValidMessage_SPECIAL_HANDL_IND(TotalErrors.ErrorNum),Fields.InValidMessage_STORAGE_LOC(TotalErrors.ErrorNum),Fields.InValidMessage_TARGET_DT(TotalErrors.ErrorNum),Fields.InValidMessage_TOTAL_PIECE_COUNT(TotalErrors.ErrorNum),Fields.InValidMessage_TOTAL_WEIGHT(TotalErrors.ErrorNum),Fields.InValidMessage_TOTAL_REWEIGH(TotalErrors.ErrorNum),Fields.InValidMessage_TOTAL_PRICE(TotalErrors.ErrorNum),Fields.InValidMessage_TRAILER_NUM(TotalErrors.ErrorNum),Fields.InValidMessage_TRUCK_NUM(TotalErrors.ErrorNum),Fields.InValidMessage_INVOICE_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_TRANSACTION_KEY(TotalErrors.ErrorNum),Fields.InValidMessage_COMMENTS(TotalErrors.ErrorNum),Fields.InValidMessage_COMMENTS_BILLING(TotalErrors.ErrorNum),Fields.InValidMessage_USER_ID(TotalErrors.ErrorNum),Fields.InValidMessage_LAST_UPDATE_DT(TotalErrors.ErrorNum),Fields.InValidMessage_MULTIPLE_SHIPMENTS(TotalErrors.ErrorNum),Fields.InValidMessage_CREDIT_RECEIVER(TotalErrors.ErrorNum),Fields.InValidMessage_MANUAL_RECEIVER_NBR(TotalErrors.ErrorNum),Fields.InValidMessage_HOLD_CONFIRM_EMAIL_IND(TotalErrors.ErrorNum),Fields.InValidMessage_HOLD_PRESSED_IND(TotalErrors.ErrorNum),Fields.InValidMessage_SCAN_IND(TotalErrors.ErrorNum),Fields.InValidMessage_ORIGINAL_RECEIVER_NBR(TotalErrors.ErrorNum));
  TotalErrors.Cnt;
end;
ValErr := TABLE(TotalErrors,PrettyErrorTotals);
export ValidityErrors := ValErr;
END;
