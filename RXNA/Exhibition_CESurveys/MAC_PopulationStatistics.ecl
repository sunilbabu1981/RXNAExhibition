EXPORT MAC_PopulationStatistics(infile,Ref='',Input_SHOW_KEY = '',Input_TSSBOOTHID = '',Input_QUESTION_NBR = '',Input_QUESTION_TEXT = '',Input_CREATED_DT = '',Input_SURVEY_NBR = '',Input_ANSWER_TEXT = '',Input_CONTACT_NAME = '',Input_WANT_TO_BE_CONTACTED = '',Input_CONTACT_PHONE = '',Input_COUNTRY_CODE = '',Input_COMMENTS = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_CESurveys;
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
+    #IF( #TEXT(Input_TSSBOOTHID)='' )
      '' 
    #ELSE
        IF( le.Input_TSSBOOTHID = (TYPEOF(le.Input_TSSBOOTHID))'','',':TSSBOOTHID')
    #END
+    #IF( #TEXT(Input_QUESTION_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_QUESTION_NBR = (TYPEOF(le.Input_QUESTION_NBR))'','',':QUESTION_NBR')
    #END
+    #IF( #TEXT(Input_QUESTION_TEXT)='' )
      '' 
    #ELSE
        IF( le.Input_QUESTION_TEXT = (TYPEOF(le.Input_QUESTION_TEXT))'','',':QUESTION_TEXT')
    #END
+    #IF( #TEXT(Input_CREATED_DT)='' )
      '' 
    #ELSE
        IF( le.Input_CREATED_DT = (TYPEOF(le.Input_CREATED_DT))'','',':CREATED_DT')
    #END
+    #IF( #TEXT(Input_SURVEY_NBR)='' )
      '' 
    #ELSE
        IF( le.Input_SURVEY_NBR = (TYPEOF(le.Input_SURVEY_NBR))'','',':SURVEY_NBR')
    #END
+    #IF( #TEXT(Input_ANSWER_TEXT)='' )
      '' 
    #ELSE
        IF( le.Input_ANSWER_TEXT = (TYPEOF(le.Input_ANSWER_TEXT))'','',':ANSWER_TEXT')
    #END
+    #IF( #TEXT(Input_CONTACT_NAME)='' )
      '' 
    #ELSE
        IF( le.Input_CONTACT_NAME = (TYPEOF(le.Input_CONTACT_NAME))'','',':CONTACT_NAME')
    #END
+    #IF( #TEXT(Input_WANT_TO_BE_CONTACTED)='' )
      '' 
    #ELSE
        IF( le.Input_WANT_TO_BE_CONTACTED = (TYPEOF(le.Input_WANT_TO_BE_CONTACTED))'','',':WANT_TO_BE_CONTACTED')
    #END
+    #IF( #TEXT(Input_CONTACT_PHONE)='' )
      '' 
    #ELSE
        IF( le.Input_CONTACT_PHONE = (TYPEOF(le.Input_CONTACT_PHONE))'','',':CONTACT_PHONE')
    #END
+    #IF( #TEXT(Input_COUNTRY_CODE)='' )
      '' 
    #ELSE
        IF( le.Input_COUNTRY_CODE = (TYPEOF(le.Input_COUNTRY_CODE))'','',':COUNTRY_CODE')
    #END
+    #IF( #TEXT(Input_COMMENTS)='' )
      '' 
    #ELSE
        IF( le.Input_COMMENTS = (TYPEOF(le.Input_COMMENTS))'','',':COMMENTS')
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
