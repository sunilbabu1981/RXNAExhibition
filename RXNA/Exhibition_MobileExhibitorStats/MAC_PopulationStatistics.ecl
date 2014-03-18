EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_CompanyName = '',Input_ExhibitorID = '',Input_action = '',Input_visits = '',Input_views = '',Input_visitors = '',Input_users = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MobileExhibitorStats;
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
+    #IF( #TEXT(Input_visits)='' )
      '' 
    #ELSE
        IF( le.Input_visits = (TYPEOF(le.Input_visits))'','',':visits')
    #END
+    #IF( #TEXT(Input_views)='' )
      '' 
    #ELSE
        IF( le.Input_views = (TYPEOF(le.Input_views))'','',':views')
    #END
+    #IF( #TEXT(Input_visitors)='' )
      '' 
    #ELSE
        IF( le.Input_visitors = (TYPEOF(le.Input_visitors))'','',':visitors')
    #END
+    #IF( #TEXT(Input_users)='' )
      '' 
    #ELSE
        IF( le.Input_users = (TYPEOF(le.Input_users))'','',':users')
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
