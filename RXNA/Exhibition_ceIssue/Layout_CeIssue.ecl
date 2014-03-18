﻿EXPORT Layout_CeIssue := RECORD
  UNSIGNED3 SHOW_KEY;
  UNICODE12 STATUS;
  UNICODE ISSUE_TEXT;
  UNSIGNED1 BOOTH_KEY;
  UNSIGNED1 CUSTOMER_KEY;
  UNICODE28 CONTACT_NAME;
  UNICODE14 CONTACT_PHONE;
  UNICODE1 NOTIFICATION_IND;
  UNSIGNED1 PRIORITY;
  UNSIGNED5 KEY;
  UNICODE1 EXHIBITOR_PRESENT_IND;
  UNICODE19 CREATED_DT;
  UNICODE33 CREATED_BY;
  UNICODE19 UPDATED_DT;
  UNICODE17 UPDATED_BY;
  UNICODE8 SOURCE;
  UNSIGNED3 CONTRACTOR_KEY;
  UNICODE7 TYPE;
  UNSIGNED3 CONTRACTOR_TYPE_KEY;
  UNSIGNED5 CE_SHOW_KEY;
  UNSIGNED5 CE_BOOTH_KEY;
  UNSIGNED5 CE_CUSTOMER_KEY;
  UNICODE4 CONTACT_INTL_PHONE_CD;
  UNSIGNED5 CE_MHA_KEY;
  UNSIGNED1 NBR_LABELS_REQ;
  UNICODE20 USER_ROLE;
  UNSIGNED1 CREATED_SOURCE;
  UNICODE15 CONTRACTORTYPE;
  UNICODE9 TSSBOOTHID;

END;