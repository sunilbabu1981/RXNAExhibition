﻿export MAC_WordBag_AppendSpecs_Rx(instring,keyname,keyfield,o) := MACRO
#uniquename(r)
%r% := record
  unsigned2 pos;
  SALT28.Str4000Type s;
  end;
	
#uniquename(d)
%d% := dataset([{SALT28.WordCount(instring),instring}],%r%);
	
#uniquename(tr)
%r% %tr%(%r% s_in, unsigned2 c) := transform
  self.pos := c;
	self.s := SALT28.GetNthWord(s_in.s,c);
  end;
	
#uniquename(n)
%n% := normalize(	%d%, left.pos, %tr%(left,counter) );
#uniquename(r2)
%r2% := record(%r%)
  integer2 spec;
	end;
	
#uniquename(tr2)
%r2% %tr2%(%n% le, keyname ri) := transform
  self.spec := ri.field_specificity;
  self := le;
  end;	
#uniquename(j)
%j% := join( %n%, keyname, left.s = right.keyfield, %tr2%(left,right), left outer );
#uniquename(bse)
%bse% := dataset([{0,(SALT28.StrType)(100*SUM(%j%,spec))}],%r%);
//%bse% := dataset([{0,(SALT28.StrType) 0}],%r%);
#uniquename(addw)
%r% %addw%(%r% le, %r2% ri) := transform
  self.s := trim(le.s)+' '+trim(ri.s)+' '+(SALT28.StrType)ri.spec;
  self := le;
  end;
SALT28.StrType o := if ( instring='','',trim(denormalize(%bse%,sort(%j%,pos),true,%addw%(left,right),all)[1].s) );
  ENDMACRO;
