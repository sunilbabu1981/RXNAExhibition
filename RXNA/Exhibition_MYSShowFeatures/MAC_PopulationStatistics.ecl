EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_EXHIBITOR = '',Input_EMAIL = '',Input_EXHIBITORID = '',Input_PASSWORD = '',Input_FEATURE_TITLE = '',Input_MEDIA_FILE = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSShowFeatures;
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
+    #IF( #TEXT(Input_EXHIBITOR)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR = (TYPEOF(le.Input_EXHIBITOR))'','',':EXHIBITOR')
    #END
+    #IF( #TEXT(Input_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_EMAIL = (TYPEOF(le.Input_EMAIL))'','',':EMAIL')
    #END
+    #IF( #TEXT(Input_EXHIBITORID)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITORID = (TYPEOF(le.Input_EXHIBITORID))'','',':EXHIBITORID')
    #END
+    #IF( #TEXT(Input_PASSWORD)='' )
      '' 
    #ELSE
        IF( le.Input_PASSWORD = (TYPEOF(le.Input_PASSWORD))'','',':PASSWORD')
    #END
+    #IF( #TEXT(Input_FEATURE_TITLE)='' )
      '' 
    #ELSE
        IF( le.Input_FEATURE_TITLE = (TYPEOF(le.Input_FEATURE_TITLE))'','',':FEATURE_TITLE')
    #END
+    #IF( #TEXT(Input_MEDIA_FILE)='' )
      '' 
    #ELSE
        IF( le.Input_MEDIA_FILE = (TYPEOF(le.Input_MEDIA_FILE))'','',':MEDIA_FILE')
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
