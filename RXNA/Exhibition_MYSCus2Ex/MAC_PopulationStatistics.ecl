EXPORT MAC_PopulationStatistics(infile,Ref='',Input_ExhibitorID = '',Input_CUSTOMERID = '',Input_EVENT = '',Input_EDITION = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSCus2Ex;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_ExhibitorID)='' )
      '' 
    #ELSE
        IF( le.Input_ExhibitorID = (TYPEOF(le.Input_ExhibitorID))'','',':ExhibitorID')
    #END
+    #IF( #TEXT(Input_CUSTOMERID)='' )
      '' 
    #ELSE
        IF( le.Input_CUSTOMERID = (TYPEOF(le.Input_CUSTOMERID))'','',':CUSTOMERID')
    #END
+    #IF( #TEXT(Input_EVENT)='' )
      '' 
    #ELSE
        IF( le.Input_EVENT = (TYPEOF(le.Input_EVENT))'','',':EVENT')
    #END
+    #IF( #TEXT(Input_EDITION)='' )
      '' 
    #ELSE
        IF( le.Input_EDITION = (TYPEOF(le.Input_EDITION))'','',':EDITION')
    #END
;
  END;
  #uniquename(op)
  %op% := PROJECT(infile,%ot%(LEFT));
  #uniquename(ort)
  %ort% := RECORD
    %op%.fields;
    UNSIGNED cnt := COUNT(GROUP);
  END;
  outfile := TOPN( TABLE( %op%, %ort%, fields, FEW ), 1000, -cnt );
ENDMACRO;
