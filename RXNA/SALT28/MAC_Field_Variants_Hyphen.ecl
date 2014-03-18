﻿EXPORT MAC_Field_Variants_Hyphen(fieldvals,ufield,infield,level) := FUNCTIONMACRO
// LEVEL = 1 split on word and '-' boundaries
// LEVEL = 2 every leading or trailing subsequence
// For specificity scoring a fairly simple model of one must least or tail the other is allowed for
NB(SALT28.StrType s) := SALT28.StringFilterOut(s,' -');
TYPEOF(fieldvals) apfx(fieldvals le,UNSIGNED c) := TRANSFORM
  SELF.infield := NB(le.infield)[1..c];
  SELF.ufield := le.ufield;
  END;
	
n := DISTRIBUTED(NORMALIZE(fieldvals,LENGTH(NB(LEFT.infield)),apfx(LEFT,COUNTER))(infield[1]<>'',infield[1]<>'-'),ufield);	
TYPEOF(fieldvals) apfx1(fieldvals le,UNSIGNED c) := TRANSFORM
  SELF.infield := NB(le.infield)[c+1..];
  SELF.ufield := le.ufield;
  END;
	
nr := DISTRIBUTED(NORMALIZE(fieldvals,IF(LENGTH(NB(LEFT.infield))=0,0,LENGTH(NB(LEFT.infield))-1),apfx1(LEFT,COUNTER))(infield[1]<>'',infield[1]<>'-'),ufield);	
Fix(SALT28.StrType s) := SALT28.StringCleanSpaces(SALT28.StringSubstituteOut(s,'-',' '));
TYPEOF(fieldvals) apfw(fieldvals le,UNSIGNED c) := TRANSFORM
  SELF.infield := SALT28.GetNthWord(Fix(le.infield),c);
  SELF.ufield := le.ufield;
  END;
sw0 := DISTRIBUTED(NORMALIZE(fieldvals,SALT28.WordCount(Fix(LEFT.infield)),apfw(LEFT,COUNTER)),ufield); // Get each word
swa := PROJECT(fieldvals,apfx1(LEFT,0)); // Get the full word too (no hyphen) in multi field case
swa1 := PROJECT(fieldvals,TRANSFORM(RECORDOF(fieldvals),SELF := LEFT)); // Get the full word (with hyphen) too in multi field case
RETURN DEDUP(SORT(sw0+swa+swa1+IF(level=2,n+nr),infield,ufield,LOCAL),infield,ufield,LOCAL);
  ENDMACRO;
