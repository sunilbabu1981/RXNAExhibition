EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_CustomerID = '',Input_Booth = '',Input_Lead_Unit = '',Input_Badge_ID = '',Input_Individual_ID = '',Input_Class_Code = '',Input_Swipe_Date = '',Input_Swipe_Time = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_LeadRetrieval;
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
+    #IF( #TEXT(Input_CustomerID)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerID = (TYPEOF(le.Input_CustomerID))'','',':CustomerID')
    #END
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_Lead_Unit)='' )
      '' 
    #ELSE
        IF( le.Input_Lead_Unit = (TYPEOF(le.Input_Lead_Unit))'','',':Lead_Unit')
    #END
+    #IF( #TEXT(Input_Badge_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Badge_ID = (TYPEOF(le.Input_Badge_ID))'','',':Badge_ID')
    #END
+    #IF( #TEXT(Input_Individual_ID)='' )
      '' 
    #ELSE
        IF( le.Input_Individual_ID = (TYPEOF(le.Input_Individual_ID))'','',':Individual_ID')
    #END
+    #IF( #TEXT(Input_Class_Code)='' )
      '' 
    #ELSE
        IF( le.Input_Class_Code = (TYPEOF(le.Input_Class_Code))'','',':Class_Code')
    #END
+    #IF( #TEXT(Input_Swipe_Date)='' )
      '' 
    #ELSE
        IF( le.Input_Swipe_Date = (TYPEOF(le.Input_Swipe_Date))'','',':Swipe_Date')
    #END
+    #IF( #TEXT(Input_Swipe_Time)='' )
      '' 
    #ELSE
        IF( le.Input_Swipe_Time = (TYPEOF(le.Input_Swipe_Time))'','',':Swipe_Time')
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
