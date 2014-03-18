EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_DATEINSERTED = '',Input_FULLNAME = '',Input_COMPANY = '',Input_EMAIL = '',Input_CITY = '',Input_STATE = '',Input_COUNTRY = '',Input_PASSWORD = '',Input_EXHCOUNT = '',Input_TIMESON = '',Input_LASTON = '',Input_ALLOWEXHCONTACT = '',Input_EXHNAME = '',Input_ITEMCOUNT = '',Input_SPEAKERCOUNT = '',Input_ITEMS = '',Input_SPEAKERS = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSAgendaUsers;
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
+    #IF( #TEXT(Input_DATEINSERTED)='' )
      '' 
    #ELSE
        IF( le.Input_DATEINSERTED = (TYPEOF(le.Input_DATEINSERTED))'','',':DATEINSERTED')
    #END
+    #IF( #TEXT(Input_FULLNAME)='' )
      '' 
    #ELSE
        IF( le.Input_FULLNAME = (TYPEOF(le.Input_FULLNAME))'','',':FULLNAME')
    #END
+    #IF( #TEXT(Input_COMPANY)='' )
      '' 
    #ELSE
        IF( le.Input_COMPANY = (TYPEOF(le.Input_COMPANY))'','',':COMPANY')
    #END
+    #IF( #TEXT(Input_EMAIL)='' )
      '' 
    #ELSE
        IF( le.Input_EMAIL = (TYPEOF(le.Input_EMAIL))'','',':EMAIL')
    #END
+    #IF( #TEXT(Input_CITY)='' )
      '' 
    #ELSE
        IF( le.Input_CITY = (TYPEOF(le.Input_CITY))'','',':CITY')
    #END
+    #IF( #TEXT(Input_STATE)='' )
      '' 
    #ELSE
        IF( le.Input_STATE = (TYPEOF(le.Input_STATE))'','',':STATE')
    #END
+    #IF( #TEXT(Input_COUNTRY)='' )
      '' 
    #ELSE
        IF( le.Input_COUNTRY = (TYPEOF(le.Input_COUNTRY))'','',':COUNTRY')
    #END
+    #IF( #TEXT(Input_PASSWORD)='' )
      '' 
    #ELSE
        IF( le.Input_PASSWORD = (TYPEOF(le.Input_PASSWORD))'','',':PASSWORD')
    #END
+    #IF( #TEXT(Input_EXHCOUNT)='' )
      '' 
    #ELSE
        IF( le.Input_EXHCOUNT = (TYPEOF(le.Input_EXHCOUNT))'','',':EXHCOUNT')
    #END
+    #IF( #TEXT(Input_TIMESON)='' )
      '' 
    #ELSE
        IF( le.Input_TIMESON = (TYPEOF(le.Input_TIMESON))'','',':TIMESON')
    #END
+    #IF( #TEXT(Input_LASTON)='' )
      '' 
    #ELSE
        IF( le.Input_LASTON = (TYPEOF(le.Input_LASTON))'','',':LASTON')
    #END
+    #IF( #TEXT(Input_ALLOWEXHCONTACT)='' )
      '' 
    #ELSE
        IF( le.Input_ALLOWEXHCONTACT = (TYPEOF(le.Input_ALLOWEXHCONTACT))'','',':ALLOWEXHCONTACT')
    #END
+    #IF( #TEXT(Input_EXHNAME)='' )
      '' 
    #ELSE
        IF( le.Input_EXHNAME = (TYPEOF(le.Input_EXHNAME))'','',':EXHNAME')
    #END
+    #IF( #TEXT(Input_ITEMCOUNT)='' )
      '' 
    #ELSE
        IF( le.Input_ITEMCOUNT = (TYPEOF(le.Input_ITEMCOUNT))'','',':ITEMCOUNT')
    #END
+    #IF( #TEXT(Input_SPEAKERCOUNT)='' )
      '' 
    #ELSE
        IF( le.Input_SPEAKERCOUNT = (TYPEOF(le.Input_SPEAKERCOUNT))'','',':SPEAKERCOUNT')
    #END
+    #IF( #TEXT(Input_ITEMS)='' )
      '' 
    #ELSE
        IF( le.Input_ITEMS = (TYPEOF(le.Input_ITEMS))'','',':ITEMS')
    #END
+    #IF( #TEXT(Input_SPEAKERS)='' )
      '' 
    #ELSE
        IF( le.Input_SPEAKERS = (TYPEOF(le.Input_SPEAKERS))'','',':SPEAKERS')
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
