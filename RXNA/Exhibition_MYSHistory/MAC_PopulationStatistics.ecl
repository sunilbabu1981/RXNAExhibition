EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_Date = '',Input_Exhibitor_ID = '',Input_Exhibitor = '',Input_File = '',Input_Field = '',Input_Action = '',Input_Before = '',Input_After = '',Input_Who = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSHistory;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_Event)='' )
      '' 
    #ELSE
        IF( le.Input_Event = (TYPEOF(le.Input_Event))'','',':Event')
    #END
+    #IF( #TEXT(Input_Edition)='' )
      '' 
    #ELSE
        IF( le.Input_Edition = (TYPEOF(le.Input_Edition))'','',':Edition')
    #END
+    #IF( #TEXT(Input_Date)='' )
      '' 
    #ELSE
        IF( le.Input_Date = (TYPEOF(le.Input_Date))'','',':Date')
    #END
+    #IF( #TEXT(Input_Exhibitor_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor_ID = (TYPEOF(le.Input_Exhibitor_ID))'','',':Exhibitor_ID')
    #END
+    #IF( #TEXT(Input_Exhibitor)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor = (TYPEOF(le.Input_Exhibitor))'','',':Exhibitor')
    #END
+    #IF( #TEXT(Input_File)='' )
      '' 
    #ELSE
        IF( le.Input_File = (TYPEOF(le.Input_File))'','',':File')
    #END
+    #IF( #TEXT(Input_Field)='' )
      '' 
    #ELSE
        IF( le.Input_Field = (TYPEOF(le.Input_Field))'','',':Field')
    #END
+    #IF( #TEXT(Input_Action)='' )
      '' 
    #ELSE
        IF( le.Input_Action = (TYPEOF(le.Input_Action))'','',':Action')
    #END
+    #IF( #TEXT(Input_Before)='' )
      '' 
    #ELSE
        IF( le.Input_Before = (TYPEOF(le.Input_Before))'','',':Before')
    #END
+    #IF( #TEXT(Input_After)='' )
      '' 
    #ELSE
        IF( le.Input_After = (TYPEOF(le.Input_After))'','',':After')
    #END
+    #IF( #TEXT(Input_Who)='' )
      '' 
    #ELSE
        IF( le.Input_Who = (TYPEOF(le.Input_Who))'','',':Who')
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
