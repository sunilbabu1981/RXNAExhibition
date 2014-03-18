EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_PROD_ID = '',Input_PARENT_PRODUCT = '',Input_PRODUCT = '',Input_EXHIBITORID = '',Input_EXHIBITOR = '',Input_BOOTH = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSProductS;
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
+    #IF( #TEXT(Input_PROD_ID)='' )
      '' 
    #ELSE
        IF( le.Input_PROD_ID = (TYPEOF(le.Input_PROD_ID))'','',':PROD_ID')
    #END
+    #IF( #TEXT(Input_PARENT_PRODUCT)='' )
      '' 
    #ELSE
        IF( le.Input_PARENT_PRODUCT = (TYPEOF(le.Input_PARENT_PRODUCT))'','',':PARENT_PRODUCT')
    #END
+    #IF( #TEXT(Input_PRODUCT)='' )
      '' 
    #ELSE
        IF( le.Input_PRODUCT = (TYPEOF(le.Input_PRODUCT))'','',':PRODUCT')
    #END
+    #IF( #TEXT(Input_EXHIBITORID)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITORID = (TYPEOF(le.Input_EXHIBITORID))'','',':EXHIBITORID')
    #END
+    #IF( #TEXT(Input_EXHIBITOR)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR = (TYPEOF(le.Input_EXHIBITOR))'','',':EXHIBITOR')
    #END
+    #IF( #TEXT(Input_BOOTH)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH = (TYPEOF(le.Input_BOOTH))'','',':BOOTH')
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
