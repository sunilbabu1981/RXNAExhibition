EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_ExhibitorID = '',Input_Company_Name = '',Input_Booth = '',Input_Title = '',Input_Category = '',Input_Description = '',Input_Filename = '',Input_Date_Added = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSShowSpecials;
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
+    #IF( #TEXT(Input_Company_Name)='' )
      '' 
    #ELSE
        IF( le.Input_Company_Name = (TYPEOF(le.Input_Company_Name))'','',':Company_Name')
    #END
+    #IF( #TEXT(Input_Booth)='' )
      '' 
    #ELSE
        IF( le.Input_Booth = (TYPEOF(le.Input_Booth))'','',':Booth')
    #END
+    #IF( #TEXT(Input_Title)='' )
      '' 
    #ELSE
        IF( le.Input_Title = (TYPEOF(le.Input_Title))'','',':Title')
    #END
+    #IF( #TEXT(Input_Category)='' )
      '' 
    #ELSE
        IF( le.Input_Category = (TYPEOF(le.Input_Category))'','',':Category')
    #END
+    #IF( #TEXT(Input_Description)='' )
      '' 
    #ELSE
        IF( le.Input_Description = (TYPEOF(le.Input_Description))'','',':Description')
    #END
+    #IF( #TEXT(Input_Filename)='' )
      '' 
    #ELSE
        IF( le.Input_Filename = (TYPEOF(le.Input_Filename))'','',':Filename')
    #END
+    #IF( #TEXT(Input_Date_Added)='' )
      '' 
    #ELSE
        IF( le.Input_Date_Added = (TYPEOF(le.Input_Date_Added))'','',':Date_Added')
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
