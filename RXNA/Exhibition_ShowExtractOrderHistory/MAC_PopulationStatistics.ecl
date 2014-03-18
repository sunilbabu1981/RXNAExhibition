EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CustomerID = '',Input_Event = '',Input_Edition = '',Input_OrderNumber = '',Input_OrderCreateDate = '',Input_Booth = '',Input_BoothLength = '',Input_BoothWidth = '',Input_BoothSqFt = '',Input_UnitPrice = '',Input_BoothPrice = '',Input_TotalInvoice = '',Input_OrderStatus = '',Input_ContractRecvdDate = '',Input_DepositRecvdDate = '',Input_SegmentCode = '',Input_BillerID = '',Input_IncidentID = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractOrderHistory;
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
+    #IF( #TEXT(Input_OrderNumber)='' )
      '' 
    #ELSE
        IF( le.Input_OrderNumber = (TYPEOF(le.Input_OrderNumber))'','',':OrderNumber')
    #END
+    #IF( #TEXT(Input_OrderCreateDate)='' )
      '' 
    #ELSE
        IF( le.Input_OrderCreateDate = (TYPEOF(le.Input_OrderCreateDate))'','',':OrderCreateDate')
    #END
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_BoothLength)='' )
      '' 
    #ELSE
        IF( le.Input_BoothLength = (TYPEOF(le.Input_BoothLength))'','',':BoothLength')
    #END
+    #IF( #TEXT(Input_BoothWidth)='' )
      '' 
    #ELSE
        IF( le.Input_BoothWidth = (TYPEOF(le.Input_BoothWidth))'','',':BoothWidth')
    #END
+    #IF( #TEXT(Input_BoothSqFt)='' )
      '' 
    #ELSE
        IF( le.Input_BoothSqFt = (TYPEOF(le.Input_BoothSqFt))'','',':BoothSqFt')
    #END
+    #IF( #TEXT(Input_UnitPrice)='' )
      '' 
    #ELSE
        IF( le.Input_UnitPrice = (TYPEOF(le.Input_UnitPrice))'','',':UnitPrice')
    #END
+    #IF( #TEXT(Input_BoothPrice)='' )
      '' 
    #ELSE
        IF( le.Input_BoothPrice = (TYPEOF(le.Input_BoothPrice))'','',':BoothPrice')
    #END
+    #IF( #TEXT(Input_TotalInvoice)='' )
      '' 
    #ELSE
        IF( le.Input_TotalInvoice = (TYPEOF(le.Input_TotalInvoice))'','',':TotalInvoice')
    #END
+    #IF( #TEXT(Input_OrderStatus)='' )
      '' 
    #ELSE
        IF( le.Input_OrderStatus = (TYPEOF(le.Input_OrderStatus))'','',':OrderStatus')
    #END
+    #IF( #TEXT(Input_ContractRecvdDate)='' )
      '' 
    #ELSE
        IF( le.Input_ContractRecvdDate = (TYPEOF(le.Input_ContractRecvdDate))'','',':ContractRecvdDate')
    #END
+    #IF( #TEXT(Input_DepositRecvdDate)='' )
      '' 
    #ELSE
        IF( le.Input_DepositRecvdDate = (TYPEOF(le.Input_DepositRecvdDate))'','',':DepositRecvdDate')
    #END
+    #IF( #TEXT(Input_SegmentCode)='' )
      '' 
    #ELSE
        IF( le.Input_SegmentCode = (TYPEOF(le.Input_SegmentCode))'','',':SegmentCode')
    #END
+    #IF( #TEXT(Input_BillerID)='' )
      '' 
    #ELSE
        IF( le.Input_BillerID = (TYPEOF(le.Input_BillerID))'','',':BillerID')
    #END
+    #IF( #TEXT(Input_IncidentID)='' )
      '' 
    #ELSE
        IF( le.Input_IncidentID = (TYPEOF(le.Input_IncidentID))'','',':IncidentID')
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
