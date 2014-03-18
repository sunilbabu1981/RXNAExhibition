EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CustomerID = '',Input_Event = '',Input_Edition = '',Input_Invoiced = '',Input_Paid = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_InvoiceInfo;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_CustomerID)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerID = (TYPEOF(le.Input_CustomerID))'','',':CustomerID')
    #END
+    #IF( #TEXT(Input_Event)='' )
      '' 
    #ELSE
        IF( le.Input_Event = (TYPEOF(le.Input_Event))'','',':Event')
    #END
+    #IF( #TEXT(Input_Edition)='' )
      '' 
    #ELSE
        IF( le.Input_Edition = (TYPEOF(le.Input_Edition))'','',':Edition')
    #END
+    #IF( #TEXT(Input_Invoiced)='' )
      '' 
    #ELSE
        IF( le.Input_Invoiced = (TYPEOF(le.Input_Invoiced))'','',':Invoiced')
    #END
+    #IF( #TEXT(Input_Paid)='' )
      '' 
    #ELSE
        IF( le.Input_Paid = (TYPEOF(le.Input_Paid))'','',':Paid')
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
