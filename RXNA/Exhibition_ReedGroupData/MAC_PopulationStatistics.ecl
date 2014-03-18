EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_GROUP_ID = '',Input_DESCRIPTION = '',Input_PRINT_ON_INV_IND = '',Input_GL_ACCT_NBR = '',Input_GL_SUB_NBR = '',Input_USER_ID = '',Input_LAST_UPDATE_DT = '',Input_INV_ST_SUM_GROUP = '',Input_PM_TYPE = '',Input_DISCOUNT_PCT = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ReedGroupData;
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
+    #IF( #TEXT(Input_DESCRIPTION)='' )
      '' 
    #ELSE
        IF( le.Input_DESCRIPTION = (TYPEOF(le.Input_DESCRIPTION))'','',':DESCRIPTION')
    #END
+    #IF( #TEXT(Input_PRINT_ON_INV_IND)='' )
      '' 
    #ELSE
        IF( le.Input_PRINT_ON_INV_IND = (TYPEOF(le.Input_PRINT_ON_INV_IND))'','',':PRINT_ON_INV_IND')
    #END
+    #IF( #TEXT(Input_GL_ACCT_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_GL_ACCT_NBR = (TYPEOF(le.Input_GL_ACCT_NBR))'','',':GL_ACCT_NBR')
    #END
+    #IF( #TEXT(Input_GL_SUB_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_GL_SUB_NBR = (TYPEOF(le.Input_GL_SUB_NBR))'','',':GL_SUB_NBR')
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
+    #IF( #TEXT(Input_INV_ST_SUM_GROUP)='' )
      '' 
    #ELSE
        IF( le.Input_INV_ST_SUM_GROUP = (TYPEOF(le.Input_INV_ST_SUM_GROUP))'','',':INV_ST_SUM_GROUP')
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
