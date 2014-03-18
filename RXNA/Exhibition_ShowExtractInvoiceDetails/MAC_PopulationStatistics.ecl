EXPORT MAC_PopulationStatistics(infile,Ref='',Input_InvoiceNumber = '',Input_InvoiceLineNumber = '',Input_OrderNumber = '',Input_OrderLineNumber = '',Input_mInvoiceAmount = '',Input_mBalanceAmount = '',Input_bARTransferFlag = '',Input_iPaymentTermId = '',Input_iScheduleId = '',Input_iTaxId = '',Input_mInvoiceAmountSite = '',Input_mInvoiceAmountTriang = '',Input_mBalanceAmountSite = '',Input_mBalanceAmountTriang = '',Input_iOrderRevNum = '',Input_chInvDemand = '',Input_iTaxRevNum = '',Input_DueDate = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractInvoiceDetails;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_InvoiceNumber)='' )
      '' 
    #ELSE
        IF( le.Input_InvoiceNumber = (TYPEOF(le.Input_InvoiceNumber))'','',':InvoiceNumber')
    #END
+    #IF( #TEXT(Input_InvoiceLineNumber)='' )
      '' 
    #ELSE
        IF( le.Input_InvoiceLineNumber = (TYPEOF(le.Input_InvoiceLineNumber))'','',':InvoiceLineNumber')
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
+    #IF( #TEXT(Input_mInvoiceAmount)='' )
      '' 
    #ELSE
        IF( le.Input_mInvoiceAmount = (TYPEOF(le.Input_mInvoiceAmount))'','',':mInvoiceAmount')
    #END
+    #IF( #TEXT(Input_mBalanceAmount)='' )
      '' 
    #ELSE
        IF( le.Input_mBalanceAmount = (TYPEOF(le.Input_mBalanceAmount))'','',':mBalanceAmount')
    #END
+    #IF( #TEXT(Input_bARTransferFlag)='' )
      '' 
    #ELSE
        IF( le.Input_bARTransferFlag = (TYPEOF(le.Input_bARTransferFlag))'','',':bARTransferFlag')
    #END
+    #IF( #TEXT(Input_iPaymentTermId)='' )
      '' 
    #ELSE
        IF( le.Input_iPaymentTermId = (TYPEOF(le.Input_iPaymentTermId))'','',':iPaymentTermId')
    #END
+    #IF( #TEXT(Input_iScheduleId)='' )
      '' 
    #ELSE
        IF( le.Input_iScheduleId = (TYPEOF(le.Input_iScheduleId))'','',':iScheduleId')
    #END
+    #IF( #TEXT(Input_iTaxId)='' )
      '' 
    #ELSE
        IF( le.Input_iTaxId = (TYPEOF(le.Input_iTaxId))'','',':iTaxId')
    #END
+    #IF( #TEXT(Input_mInvoiceAmountSite)='' )
      '' 
    #ELSE
        IF( le.Input_mInvoiceAmountSite = (TYPEOF(le.Input_mInvoiceAmountSite))'','',':mInvoiceAmountSite')
    #END
+    #IF( #TEXT(Input_mInvoiceAmountTriang)='' )
      '' 
    #ELSE
        IF( le.Input_mInvoiceAmountTriang = (TYPEOF(le.Input_mInvoiceAmountTriang))'','',':mInvoiceAmountTriang')
    #END
+    #IF( #TEXT(Input_mBalanceAmountSite)='' )
      '' 
    #ELSE
        IF( le.Input_mBalanceAmountSite = (TYPEOF(le.Input_mBalanceAmountSite))'','',':mBalanceAmountSite')
    #END
+    #IF( #TEXT(Input_mBalanceAmountTriang)='' )
      '' 
    #ELSE
        IF( le.Input_mBalanceAmountTriang = (TYPEOF(le.Input_mBalanceAmountTriang))'','',':mBalanceAmountTriang')
    #END
+    #IF( #TEXT(Input_iOrderRevNum)='' )
      '' 
    #ELSE
        IF( le.Input_iOrderRevNum = (TYPEOF(le.Input_iOrderRevNum))'','',':iOrderRevNum')
    #END
+    #IF( #TEXT(Input_chInvDemand)='' )
      '' 
    #ELSE
        IF( le.Input_chInvDemand = (TYPEOF(le.Input_chInvDemand))'','',':chInvDemand')
    #END
+    #IF( #TEXT(Input_iTaxRevNum)='' )
      '' 
    #ELSE
        IF( le.Input_iTaxRevNum = (TYPEOF(le.Input_iTaxRevNum))'','',':iTaxRevNum')
    #END
+    #IF( #TEXT(Input_DueDate)='' )
      '' 
    #ELSE
        IF( le.Input_DueDate = (TYPEOF(le.Input_DueDate))'','',':DueDate')
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
