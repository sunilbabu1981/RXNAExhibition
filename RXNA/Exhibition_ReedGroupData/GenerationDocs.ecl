﻿Generated by SALT V2.8 Beta 2
File being processed :-
OPTIONS:-gh
MODULE:Exhibition_ReedGroupData
FILENAME:ReedGroupData
FIELD:SHOW_KEY:TYPE(UNICODE):0,0
FIELD:GROUP_ID:TYPE(UNICODE):0,0
FIELD:DESCRIPTION:TYPE(UNICODE):0,0
FIELD:PRINT_ON_INV_IND:TYPE(UNICODE):0,0
FIELD:GL_ACCT_NBR:TYPE(UNICODE):0,0
FIELD:GL_SUB_NBR:TYPE(UNICODE):0,0
FIELD:USER_ID:TYPE(UNICODE):0,0
FIELD:LAST_UPDATE_DT:TYPE(UNICODE):0,0
FIELD:INV_ST_SUM_GROUP:TYPE(UNICODE):0,0
FIELD:PM_TYPE:TYPE(UNICODE):0,0
FIELD:DISCOUNT_PCT:TYPE(UNICODE):0,0
Total available specificity:0
Search Threshold set at -4
+++Line:14:Need threshold and blockthreshold to continue
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
