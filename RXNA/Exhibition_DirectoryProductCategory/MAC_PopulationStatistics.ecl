EXPORT MAC_PopulationStatistics(infile,Ref='',Input_iProductCategoryId = '',Input_vchProductCategoryDesc = '',Input_vchHeadingDesc = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_DirectoryProductCategory;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_iProductCategoryId)='' )
      '' 
    #ELSE
        IF( le.Input_iProductCategoryId = (TYPEOF(le.Input_iProductCategoryId))'','',':iProductCategoryId')
    #END
+    #IF( #TEXT(Input_vchProductCategoryDesc)='' )
      '' 
    #ELSE
        IF( le.Input_vchProductCategoryDesc = (TYPEOF(le.Input_vchProductCategoryDesc))'','',':vchProductCategoryDesc')
    #END
+    #IF( #TEXT(Input_vchHeadingDesc)='' )
      '' 
    #ELSE
        IF( le.Input_vchHeadingDesc = (TYPEOF(le.Input_vchHeadingDesc))'','',':vchHeadingDesc')
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
