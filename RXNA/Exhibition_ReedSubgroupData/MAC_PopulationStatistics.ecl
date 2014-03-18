EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_GROUP_ID = '',Input_SUBGROUP_ID = '',Input_DESCRIPTION = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_PM_TYPE = '',Input_DISCOUNT_PCT = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ReedSubgroupData;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_KEY = (TYPEOF(le.Input_SHOW_KEY))'','',':SHOW_KEY')
    #END
+    #IF( #TEXT(Input_GROUP_ID)='' )
      '' 
    #ELSE
        IF( le.Input_GROUP_ID = (TYPEOF(le.Input_GROUP_ID))'','',':GROUP_ID')
    #END
+    #IF( #TEXT(Input_SUBGROUP_ID)='' )
      '' 
    #ELSE
        IF( le.Input_SUBGROUP_ID = (TYPEOF(le.Input_SUBGROUP_ID))'','',':SUBGROUP_ID')
    #END
+    #IF( #TEXT(Input_DESCRIPTION)='' )
      '' 
    #ELSE
        IF( le.Input_DESCRIPTION = (TYPEOF(le.Input_DESCRIPTION))'','',':DESCRIPTION')
    #END
+    #IF( #TEXT(Input_USER_ID)='' )
      '' 
    #ELSE
        IF( le.Input_USER_ID = (TYPEOF(le.Input_USER_ID))'','',':USER_ID')
    #END
+    #IF( #TEXT(Input_LAST_UPDATE_DT)='' )
      '' 
    #ELSE
        IF( le.Input_LAST_UPDATE_DT = (TYPEOF(le.Input_LAST_UPDATE_DT))'','',':LAST_UPDATE_DT')
    #END
+    #IF( #TEXT(Input_PM_TYPE)='' )
      '' 
    #ELSE
        IF( le.Input_PM_TYPE = (TYPEOF(le.Input_PM_TYPE))'','',':PM_TYPE')
    #END
+    #IF( #TEXT(Input_DISCOUNT_PCT)='' )
      '' 
    #ELSE
        IF( le.Input_DISCOUNT_PCT = (TYPEOF(le.Input_DISCOUNT_PCT))'','',':DISCOUNT_PCT')
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
