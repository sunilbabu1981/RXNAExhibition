EXPORT MAC_PopulationStatistics(infile,Ref='',Input_OrderNumber = '',Input_OrderLineNumber = '',Input_RevenueType = '',Input_RevenueItem = '',Input_OrderLineStatus = '',Input_QuantityOrdered = '',Input_TotalPrice = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractOrderDetail;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_OrderNumber)='' )
      '' 
    #ELSE
        IF( le.Input_OrderNumber = (TYPEOF(le.Input_OrderNumber))'','',':OrderNumber')
    #END
+    #IF( #TEXT(Input_OrderLineNumber)='' )
      '' 
    #ELSE
        IF( le.Input_OrderLineNumber = (TYPEOF(le.Input_OrderLineNumber))'','',':OrderLineNumber')
    #END
+    #IF( #TEXT(Input_RevenueType)='' )
      '' 
    #ELSE
        IF( le.Input_RevenueType = (TYPEOF(le.Input_RevenueType))'','',':RevenueType')
    #END
+    #IF( #TEXT(Input_RevenueItem)='' )
      '' 
    #ELSE
        IF( le.Input_RevenueItem = (TYPEOF(le.Input_RevenueItem))'','',':RevenueItem')
    #END
+    #IF( #TEXT(Input_OrderLineStatus)='' )
      '' 
    #ELSE
        IF( le.Input_OrderLineStatus = (TYPEOF(le.Input_OrderLineStatus))'','',':OrderLineStatus')
    #END
+    #IF( #TEXT(Input_QuantityOrdered)='' )
      '' 
    #ELSE
        IF( le.Input_QuantityOrdered = (TYPEOF(le.Input_QuantityOrdered))'','',':QuantityOrdered')
    #END
+    #IF( #TEXT(Input_TotalPrice)='' )
      '' 
    #ELSE
        IF( le.Input_TotalPrice = (TYPEOF(le.Input_TotalPrice))'','',':TotalPrice')
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
