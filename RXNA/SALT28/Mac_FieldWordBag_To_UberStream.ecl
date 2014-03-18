﻿// A cross between fn_string_to_wordstream and MAC_FieldSet_To_UberStream
export Mac_FieldWordBag_To_UberStream(si,fieldno,k,os) := MACRO
#uniquename(rd)
%rd% := record
  SALT28.Str30Type s; // Length 30 presently burnt into salt too
	end;
	
#uniquename(d)
%d% := dataset([{si}],%rd%); // Parameter into dataset to allow normalize
#uniquename(split)
%rd% %split%(%d% le,unsigned2 c) := transform
  self.s := SALT28.GetNthWord(le.s,c);
  end;
#uniquename(n0)
%n0% := set( normalize(%d%,SALT28.WordCount(left.s)/2,%split%(left,counter*2)), s);
#uniquename(n1)
%n1% := set( normalize(%d%,SALT28.WordCount(left.s),%split%(left,counter)), s);
// Allow for numeric expanded and 'normal' wordbag input
#uniquename(n)
%n% := IF ( length(trim(si))=0 OR (unsigned)SALT28.GetNthWord(si,1)>0, %n0%, %n1% );
SALT28.mac_fieldset_to_uberstream(%n%,fieldno,k,os)
   ENDMACRO;
