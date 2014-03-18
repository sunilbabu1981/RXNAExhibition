EXPORT MAC_PopulationStatistics(infile,Ref='',Input_CustomerID = '',Input_iProductCategoryId = '',Input_ProductDesc = '',Input_HeadingDesc = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_DirectoryExProductCategory;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_CustomerID)='' )
      '' 
    #ELSE
        IF( le.Input_CustomerID = (TYPEOF(le.Input_CustomerID))'','',':CustomerID')
    #END
+    #IF( #TEXT(Input_iProductCategoryId)='' )
      '' 
    #ELSE
        IF( le.Input_iProductCategoryId = (TYPEOF(le.Input_iProductCategoryId))'','',':iProductCategoryId')
    #END
+    #IF( #TEXT(Input_ProductDesc)='' )
      '' 
    #ELSE
        IF( le.Input_ProductDesc = (TYPEOF(le.Input_ProductDesc))'','',':ProductDesc')
    #END
+    #IF( #TEXT(Input_HeadingDesc)='' )
      '' 
    #ELSE
        IF( le.Input_HeadingDesc = (TYPEOF(le.Input_HeadingDesc))'','',':HeadingDesc')
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
