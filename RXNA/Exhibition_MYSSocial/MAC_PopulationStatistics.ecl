EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_ExhibitorID = '',Input_Exhibitor = '',Input_Facebook = '',Input_Twitter = '',Input_LinkedIn = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSSocial;
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
+    #IF( #TEXT(Input_ExhibitorID)='' )
      '' 
    #ELSE
        IF( le.Input_ExhibitorID = (TYPEOF(le.Input_ExhibitorID))'','',':ExhibitorID')
    #END
+    #IF( #TEXT(Input_Exhibitor)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor = (TYPEOF(le.Input_Exhibitor))'','',':Exhibitor')
    #END
+    #IF( #TEXT(Input_Facebook)='' )
      '' 
    #ELSE
        IF( le.Input_Facebook = (TYPEOF(le.Input_Facebook))'','',':Facebook')
    #END
+    #IF( #TEXT(Input_Twitter)='' )
      '' 
    #ELSE
        IF( le.Input_Twitter = (TYPEOF(le.Input_Twitter))'','',':Twitter')
    #END
+    #IF( #TEXT(Input_LinkedIn)='' )
      '' 
    #ELSE
        IF( le.Input_LinkedIn = (TYPEOF(le.Input_LinkedIn))'','',':LinkedIn')
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
