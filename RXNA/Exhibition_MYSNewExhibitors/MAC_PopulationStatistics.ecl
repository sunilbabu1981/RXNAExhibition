EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_EXHIBITORID = '',Input_EXHIBITORNAME = '',Input_BOOTH = '',Input_IDSLINK = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSNewExhibitors;
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
+    #IF( #TEXT(Input_EXHIBITORID)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITORID = (TYPEOF(le.Input_EXHIBITORID))'','',':EXHIBITORID')
    #END
+    #IF( #TEXT(Input_EXHIBITORNAME)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITORNAME = (TYPEOF(le.Input_EXHIBITORNAME))'','',':EXHIBITORNAME')
    #END
+    #IF( #TEXT(Input_BOOTH)='' )
      '' 
    #ELSE
        IF( le.Input_BOOTH = (TYPEOF(le.Input_BOOTH))'','',':BOOTH')
    #END
+    #IF( #TEXT(Input_IDSLINK)='' )
      '' 
    #ELSE
        IF( le.Input_IDSLINK = (TYPEOF(le.Input_IDSLINK))'','',':IDSLINK')
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
