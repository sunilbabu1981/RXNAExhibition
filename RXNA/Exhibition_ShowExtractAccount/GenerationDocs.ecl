﻿Generated by SALT V2.8 Beta 2
File being processed :-
OPTIONS:-gh
MODULE:Exhibition_ShowExtractAccount
FILENAME:ShowExtractAccount
FIELD:CustomerID:TYPE(UNICODE):0,0
FIELD:CustomerName:TYPE(UNICODE):0,0
FIELD:Addr1:TYPE(UNICODE):0,0
FIELD:Addr2:TYPE(UNICODE):0,0
FIELD:Addr3:TYPE(UNICODE):0,0
FIELD:City:TYPE(UNICODE):0,0
FIELD:State:TYPE(UNICODE):0,0
FIELD:StateDesc:TYPE(UNICODE):0,0
FIELD:PostalCode:TYPE(UNICODE):0,0
FIELD:CountryCode:TYPE(UNICODE):0,0
FIELD:CountryDesc:TYPE(UNICODE):0,0
FIELD:PhoneMain:TYPE(UNICODE):0,0
FIELD:FaxMain:TYPE(UNICODE):0,0
FIELD:PhoneTollFree:TYPE(UNICODE):0,0
FIELD:EmailCompany:TYPE(UNICODE):0,0
FIELD:WebAddressCompany:TYPE(UNICODE):0,0
FIELD:PrimaryPhone:TYPE(UNICODE):0,0
FIELD:PrimaryFirstName:TYPE(UNICODE):0,0
FIELD:PrimaryLastName:TYPE(UNICODE):0,0
FIELD:CreateDate:TYPE(UNICODE):0,0
FIELD:ValidAddrFlag:TYPE(UNICODE):0,0
FIELD:PrivacyFlag:TYPE(UNICODE):0,0
Total available specificity:0
Search Threshold set at -4
+++Line:25:Need threshold and blockthreshold to continue
Use of PERSISTs in code set at:3
__Glossary__
Edit Distance: An edit distance of (say) one implies that one string can be converted into another by doing one of
  - Changing one character
  - Deleting one character
  - Transposing two characters
Forcing Criteria: In addition to the general 'best match' logic it is possible to insist that
one particular field must match to some degree or the whole record is considered a bad match.
The criterial applied to that one field is the forcing criteria.
Cascade: Best Type rules are applied in such a way that the rules are applied one by one UNTIL the first rule succeeds; subsequent rules are then skipped.
__General Notes__
How is it decided how much to subtract for a bad match?
SALT computes for each field the percentage likelihood that a valid cluster will have two or more values for a given field
this value (called the switch value in the SALT literature) is then used to produce the subtraction value from the match value.
The value in this document is the one typed into the SPC file; the code will use a value computed at run-time.
