EXPORT Layout_ShowExtractPrivacy := RECORD
  UNSIGNED4 IndividualId;//Changed from Customer id to individual id
  UNICODE1 PrivacyIntMail;
  UNICODE1 PrivacyIntPhone;
  UNICODE1 PrivacyIntFax;
  UNICODE1 PrivacyIntEmail;
  UNICODE1 PrivacyExtMail;
  UNICODE1 PrivacyExtPhone;
  UNICODE1 PrivacyExtFax;
  UNICODE1 PrivacyExtEmail;


END;