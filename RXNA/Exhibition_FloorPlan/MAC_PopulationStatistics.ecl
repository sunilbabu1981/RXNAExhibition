EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_Booth = '',Input_Exhibitor_Name = '',Input_Class = '',Input_Pavilion = '',Input_Booth_Area = '',Input_Short_Side = '',Input_Long_Side = '',Input_Open_Corners = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_floorPlan;
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
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_Exhibitor_Name)='' )
      '' 
    #ELSE
        IF( le.Input_Exhibitor_Name = (TYPEOF(le.Input_Exhibitor_Name))'','',':Exhibitor_Name')
    #END
+    #IF( #TEXT(Input_Class)='' )
      '' 
    #ELSE
        IF( le.Input_Class = (TYPEOF(le.Input_Class))'','',':Class')
    #END
+    #IF( #TEXT(Input_Pavilion)='' )
      '' 
    #ELSE
        IF( le.Input_Pavilion = (TYPEOF(le.Input_Pavilion))'','',':Pavilion')
    #END
+    #IF( #TEXT(Input_Booth_Area)='' )
      '' 
    #ELSE
        IF( le.Input_Booth_Area = (TYPEOF(le.Input_Booth_Area))'','',':Booth_Area')
    #END
+    #IF( #TEXT(Input_Short_Side)='' )
      '' 
    #ELSE
        IF( le.Input_Short_Side = (TYPEOF(le.Input_Short_Side))'','',':Short_Side')
    #END
+    #IF( #TEXT(Input_Long_Side)='' )
      '' 
    #ELSE
        IF( le.Input_Long_Side = (TYPEOF(le.Input_Long_Side))'','',':Long_Side')
    #END
+    #IF( #TEXT(Input_Open_Corners)='' )
      '' 
    #ELSE
        IF( le.Input_Open_Corners = (TYPEOF(le.Input_Open_Corners))'','',':Open_Corners')
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
