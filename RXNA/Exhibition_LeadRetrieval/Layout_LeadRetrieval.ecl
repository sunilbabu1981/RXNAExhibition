//details of individuals who attended what booth
EXPORT Layout_LeadRetrieval := RECORD
  UNICODE5 Event;
  UNSIGNED2 Edition;
  UNICODE7 CustomerID;
  UNICODE10 Booth;
  UNICODE11 Lead_Unit;
  UNICODE11 Badge_ID;
  UNICODE11 Individual_ID;
  UNICODE7 Class_Code;
  UNICODE10 Swipe_Date;
  UNICODE9 Swipe_Time;
END;