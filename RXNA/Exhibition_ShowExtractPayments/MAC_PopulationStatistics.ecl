EXPORT MAC_PopulationStatistics(infile,Ref='',Input_PaymentID = '',Input_OrderNumber = '',Input_OrderLineNumber = '',Input_PaymentAmount = '',Input_InsertDate = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractPayments;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_PaymentID)='' )
      '' 
    #ELSE
        IF( le.Input_PaymentID = (TYPEOF(le.Input_PaymentID))'','',':PaymentID')
    #END
+    #IF( #TEXT(Input_OrderNumber)='' )
      '' 
    #ELSE
        IF( le.Input_OrderNumber = (TYPEOF(le.Input_OrderNumber))'','',':OrderNumber')
    #END
+    #IF( #TEXT(Input_OrderLineNumber)='' )
      '' 
    #ELSE
        IF( le.Input_OrderLineNumber = (TYPEOF(le.Input_OrderLineNumber))'','',':OrderLineNumber')
    #END
+    #IF( #TEXT(Input_PaymentAmount)='' )
      '' 
    #ELSE
        IF( le.Input_PaymentAmount = (TYPEOF(le.Input_PaymentAmount))'','',':PaymentAmount')
    #END
+    #IF( #TEXT(Input_InsertDate)='' )
      '' 
    #ELSE
        IF( le.Input_InsertDate = (TYPEOF(le.Input_InsertDate))'','',':InsertDate')
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
