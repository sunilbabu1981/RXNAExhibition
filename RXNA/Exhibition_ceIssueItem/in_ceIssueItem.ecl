﻿EXPORT in_ceIssueItem :=  DATASET('~rxna::freeman::ce_issue_item',layout_CeIssueItem, csv( HEADING(1),SEPARATOR(','), QUOTE('"')));