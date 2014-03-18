EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_sherpaID = '',Input_CompanyName = '',Input_ExhibitorID = '',Input_action = '',Input_count = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MobileExhibitorWayFinding;
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
+    #IF( #TEXT(Input_sherpaID)='' )
      '' 
    #ELSE
        IF( le.Input_sherpaID = (TYPEOF(le.Input_sherpaID))'','',':sherpaID')
    #END
+    #IF( #TEXT(Input_CompanyName)='' )
      '' 
    #ELSE
        IF( le.Input_CompanyName = (TYPEOF(le.Input_CompanyName))'','',':CompanyName')
    #END
+    #IF( #TEXT(Input_ExhibitorID)='' )
      '' 
    #ELSE
        IF( le.Input_ExhibitorID = (TYPEOF(le.Input_ExhibitorID))'','',':ExhibitorID')
    #END
+    #IF( #TEXT(Input_action)='' )
      '' 
    #ELSE
        IF( le.Input_action = (TYPEOF(le.Input_action))'','',':action')
    #END
+    #IF( #TEXT(Input_count)='' )
      '' 
    #ELSE
        IF( le.Input_count = (TYPEOF(le.Input_count))'','',':count')
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
