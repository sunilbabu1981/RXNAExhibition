﻿EXPORT Layout_ReedBoothData := RECORD
  UNICODE40 ORG_NAME;
  UNSIGNED4 FDC_CUSTOMER_NBR;
  UNICODE9 BOOTH_ID;
  UNICODE10 SHOW_KEY; // Combination of event  and edition
  UNICODE6 KEYVAL;
  UNICODE9 BOOTH_ID_1;
  REAL4 WIDTH;
  REAL4 DEPTH;
  UNSIGNED1 MAINTENANCE;
  REAL4 QTY_SIGNS;
  UNICODE50 SIGN_LINE1;
  UNICODE34 SIGN_LINE2;
  UNICODE19 TARGET_DT;
  UNICODE1 NO_SIGN_IND;
  UNICODE1 SIGN_PRINTED_IND;
  UNICODE8 USER_ID;
  UNICODE19 LAST_UPDATE_DT;
  UNSIGNED1 BOOTH_TYPE_ID;
  UNSIGNED1 PARENT_BOOTH_KEY;
  UNICODE9 FACILITY_KEY;
  UNICODE9 LOCATION_KEY;
  UNICODE10 EXHIBITOR_ID;
  UNSIGNED1 COMPETITOR_KEY;
  UNICODE6 AREA;
  UNSIGNED1 OWNER_TYPE;
  UNICODE1 PROGRAM_ACCT_IND;
  UNICODE1 USE_PRIMARY_CARD_IND;
  REAL4 SOURCE_KEY;
  UNICODE19 SORTABLE_BOOTH;
  REAL4 RECOMMEND_CNT;
  UNSIGNED1 CREATE_DT;

END;