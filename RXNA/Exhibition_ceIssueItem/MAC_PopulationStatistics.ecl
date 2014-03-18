EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_ISSUE_KEY = '',Input_KEY = '',Input_CREATED_DT = '',Input_CREATED_BY = '',Input_UPDATED_DT = '',Input_UPDATED_BY = '',Input_SOURCE = '',Input_STATUS = '',Input_CONTRACTOR_KEY = '',Input_SHOW_CONTRACTOR_ASSN_KEY = '',Input_ISSUE_TEXT = '',Input_CE_SHOW_KEY = '',Input_EXHIBITOR_PRESENT_IND = '',Input_TSSBOOTHID = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_ceIssueItem;
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
+    #IF( #TEXT(Input_ISSUE_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_ISSUE_KEY = (TYPEOF(le.Input_ISSUE_KEY))'','',':ISSUE_KEY')
    #END
+    #IF( #TEXT(Input_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_KEY = (TYPEOF(le.Input_KEY))'','',':KEY')
    #END
+    #IF( #TEXT(Input_CREATED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_DT = (TYPEOF(le.Input_CREATED_DT))'','',':CREATED_DT')
    #END
+    #IF( #TEXT(Input_CREATED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_BY = (TYPEOF(le.Input_CREATED_BY))'','',':CREATED_BY')
    #END
+    #IF( #TEXT(Input_UPDATED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_UPDATED_DT = (TYPEOF(le.Input_UPDATED_DT))'','',':UPDATED_DT')
    #END
+    #IF( #TEXT(Input_UPDATED_BY)='' )
      '' 
    #ELSE
        IF( le.Input_UPDATED_BY = (TYPEOF(le.Input_UPDATED_BY))'','',':UPDATED_BY')
    #END
+    #IF( #TEXT(Input_SOURCE)='' )
      '' 
    #ELSE
        IF( le.Input_SOURCE = (TYPEOF(le.Input_SOURCE))'','',':SOURCE')
    #END
+    #IF( #TEXT(Input_STATUS)='' )
      '' 
    #ELSE
        IF( le.Input_STATUS = (TYPEOF(le.Input_STATUS))'','',':STATUS')
    #END
+    #IF( #TEXT(Input_CONTRACTOR_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CONTRACTOR_KEY = (TYPEOF(le.Input_CONTRACTOR_KEY))'','',':CONTRACTOR_KEY')
    #END
+    #IF( #TEXT(Input_SHOW_CONTRACTOR_ASSN_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_SHOW_CONTRACTOR_ASSN_KEY = (TYPEOF(le.Input_SHOW_CONTRACTOR_ASSN_KEY))'','',':SHOW_CONTRACTOR_ASSN_KEY')
    #END
+    #IF( #TEXT(Input_ISSUE_TEXT)='' )
      '' 
    #ELSE
        IF( le.Input_ISSUE_TEXT = (TYPEOF(le.Input_ISSUE_TEXT))'','',':ISSUE_TEXT')
    #END
+    #IF( #TEXT(Input_CE_SHOW_KEY)='' )
      '' 
    #ELSE
        IF( le.Input_CE_SHOW_KEY = (TYPEOF(le.Input_CE_SHOW_KEY))'','',':CE_SHOW_KEY')
    #END
+    #IF( #TEXT(Input_EXHIBITOR_PRESENT_IND)='' )
      '' 
    #ELSE
        IF( le.Input_EXHIBITOR_PRESENT_IND = (TYPEOF(le.Input_EXHIBITOR_PRESENT_IND))'','',':EXHIBITOR_PRESENT_IND')
    #END
+    #IF( #TEXT(Input_TSSBOOTHID)='' )
      '' 
    #ELSE
        IF( le.Input_TSSBOOTHID = (TYPEOF(le.Input_TSSBOOTHID))'','',':TSSBOOTHID')
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
