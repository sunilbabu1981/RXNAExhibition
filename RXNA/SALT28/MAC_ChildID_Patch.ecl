﻿/* This handles the case where the IDs have been exploded into recordids. These may either be 'onesies' or a cleave. It is assumed that the ids and recordids
   are all correct. The task of this macro is to reset the ChildIds as needed. A minimal reset is performed. Specifically:
   1) If a child was fully contained in a new or old id then its ID will not change
   2) UNLESS it was the ID for the bottom of the parent, in which case it gets the new value
	 3) Any childid that has been SPLIT between two parents will itself be split into two pieces
	Strategy:
  1) Identify those children that fall under 2 or 3 as having ID = RecordId != ChildId
  2) For those records set ChildId = RecordId
  3) Patch all records with OldChildId,ParentId to the new ChildID value
*/
EXPORT MAC_ChildID_Patch(infile,id,childid,recordid) := FUNCTIONMACRO
	bads := infile(id=recordid,id<>childid);
	TYPEOF(infile) change(infile le,bads ri) := TRANSFORM
	  SELF.ChildId := IF(ri.recordid=0,le.ChildId,ri.recordid);
	  SELF := le;
	END;
	RETURN JOIN(infile,bads,LEFT.childid=RIGHT.childid AND LEFT.id=RIGHT.id,change(LEFT,RIGHT),LEFT OUTER);
  ENDMACRO;
	
/* 
// Test code ...
r := record
   unsigned8 r;
	 unsigned8 c;
	 unsigned8 p;
	 end;
	 
d := dataset( [ { 1,1,1}, { 2, 1, 1}, { 3, 3, 1}, { 4, 3, 4}, { 5,5,5},{6,5,6}, { 7,7,7 }, { 8, 7, 8 }, { 9, 7, 8 }, { 10, 10, 8 }], r );
d;
salt28.mac_childid_patch(d, p, c, r);
*/
