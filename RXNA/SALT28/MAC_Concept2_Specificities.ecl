EXPORT MAC_Concept2_Specificities(addfield,infile1,infield1,countfield1,infile2,infield2,countfield2,outfile) := MACRO
#uniquename(r)
%r% := RECORD
  infile1;
  UNSIGNED8 addfield;
  END;
#uniquename(file1)
%file1%:=PROJECT(infile1,TRANFORM(SELF.addfield:=le.countfield1;SELF:=LEFT));	
outfile:=JOIN(%file1%,infile2,LEFT.infield1=RIGHT.infield2,TRANFORM(SELF.addfield:=LEFT.addfield+RIGHT.countfield2);SELF:=LEFT;);
ENDMACRO;
