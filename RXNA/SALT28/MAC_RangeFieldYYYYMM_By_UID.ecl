﻿EXPORT MAC_RangeFieldYYYYMM_By_UID(infile,ufield,infield,low_infield,high_infield,null_field,outfile) := MACRO
// see also YYYMM version
#uniquename(idata)
// Presently we do not handle open ended ranges (well)
%idata% := TABLE(infile((UNSIGNED4)low_infield<>null_field,(UNSIGNED4)high_infield<>null_field),{ufield,UNSIGNED2 xx_low := SALT28.fn_YYYYMM_to_Int((UNSIGNED4)low_infield),UNSIGNED2 xx_high := SALT28.fn_YYYYMM_to_Int((UNSIGNED4)high_infield)})(xx_low<=xx_high);
#uniquename(r)
%r% := RECORD
  SALT28.UIDType ufield;
	UNSIGNED2 infield;
  END;
#uniquename(tr)
%r% %tr%(%idata% le,INTEGER c) := TRANSFORM
  SELF.ufield := le.ufield;
	SELF.infield := c;
  END;
#uniquename(n)
%n% := NORMALIZE(%idata%,LEFT.xx_high-LEFT.xx_low+1,%tr%(LEFT,COUNTER+LEFT.xx_low-1));
outfile := DEDUP( SORT( %n%,ufield,infield,LOCAL), ufield,infield,LOCAL );
  ENDMACRO;
