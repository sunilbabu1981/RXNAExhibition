EXPORT Layout_ShowExtractContacts := RECORD
  UNSIGNED4 IndividualID;
  UNSIGNED4 CustomerID;
  UNICODE3 Prefix;
  UNICODE16 FirstName;
  UNICODE8 MiddleInitial;
  UNICODE43 LastName;
  UNICODE10 Suffix;
  UNICODE72 Title;
  UNICODE77 CompanyName;
  UNICODE46 Department;
  UNICODE93 Addr1;
  UNICODE62 Addr2;
  UNICODE47 Addr3;
  UNICODE50 City;
  UNICODE18 State;
  UNICODE20 StateDesc;
  UNICODE7 CountryCode;
  UNICODE27 CountryDesc;
  UNICODE13 PostalCode;
  UNICODE21 PhoneMain;
  UNICODE15 FaxMain;
  UNICODE21 PhoneTollFree;
  UNICODE44 EmailCompany;
  UNICODE44 WebAddressCompany;
  UNSIGNED1 ValidAddrFlag;
  UNSIGNED1 PrivacyFlag;
  UNICODE23 CreateDate;


END;