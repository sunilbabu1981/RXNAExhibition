EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_Exhibitor = '',Input_Package = '',Input_Views = '',Input_Links_to_Website = '',Input_Added_to_Agenda = '',Input_Shared_Info = '',Input_Emails = '',Input_Banners = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSExhibitorSummaryStats;
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
+    #IF( #TEXT(Input_Exhibitor)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor = (TYPEOF(le.Input_Exhibitor))'','',':Exhibitor')
    #END
+    #IF( #TEXT(Input_Package)='' )
      '' 
    #ELSE
        IF( le.Input_Package = (TYPEOF(le.Input_Package))'','',':Package')
    #END
+    #IF( #TEXT(Input_Views)='' )
      '' 
    #ELSE
        IF( le.Input_Views = (TYPEOF(le.Input_Views))'','',':Views')
    #END
+    #IF( #TEXT(Input_Links_to_Website)='' )
      '' 
    #ELSE
        IF( le.Input_Links_to_Website = (TYPEOF(le.Input_Links_to_Website))'','',':Links_to_Website')
    #END
+    #IF( #TEXT(Input_Added_to_Agenda)='' )
      '' 
    #ELSE
        IF( le.Input_Added_to_Agenda = (TYPEOF(le.Input_Added_to_Agenda))'','',':Added_to_Agenda')
    #END
+    #IF( #TEXT(Input_Shared_Info)='' )
      '' 
    #ELSE
        IF( le.Input_Shared_Info = (TYPEOF(le.Input_Shared_Info))'','',':Shared_Info')
    #END
+    #IF( #TEXT(Input_Emails)='' )
      '' 
    #ELSE
        IF( le.Input_Emails = (TYPEOF(le.Input_Emails))'','',':Emails')
    #END
+    #IF( #TEXT(Input_Banners)='' )
      '' 
    #ELSE
        IF( le.Input_Banners = (TYPEOF(le.Input_Banners))'','',':Banners')
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
