EXPORT MAC_PopulationStatistics(infile,Ref='',Input_Event = '',Input_Edition = '',Input_ExhibitorID = '',Input_Company_Name = '',Input_Product_Description = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_MYSNewProduct;
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
+    #IF( #TEXT(Input_Product_Description)='' )
      '' 
    #ELSE
        IF( le.Input_Product_Description = (TYPEOF(le.Input_Product_Description))'','',':Product_Description')
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
