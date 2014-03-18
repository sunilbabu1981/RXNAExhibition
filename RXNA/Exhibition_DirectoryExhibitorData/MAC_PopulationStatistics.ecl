EXPORT MAC_PopulationStatistics(infile,Ref='',Input_iExhibitorId = '',Input_iPrismCompanyId = '',Input_chShowCd = '',Input_iShowYear = '',Input_vchBooth = '',Input_chAssocMemberFlag = '',Input_vchExhibitorName1 = '',Input_vchExhibitorName2 = '',Input_vchExhibitorName3 = '',Input_Address1 = '',Input_Address2 = '',Input_Address3 = '',Input_City = '',Input_RegionName = '',Input_Country = '',Input_PostalCode = '',Input_MainPhone = '',Input_TollFreePhone = '',Input_Fax = '',Input_vchTollFreeFax = '',Input_Email = '',Input_WebAddress = '',Input_txtProductDesc = '',Input_vchPavillion = '',Input_vchHall = '',Input_vchPage = '',Input_txtSpecials = '',Input_txtRepresentatives = '',Input_txtNewProducts = '',Input_vchExporting = '',Input_vchBusinessInterest = '',Input_vchCrossRef1 = '',Input_vchCrossRef2 = '',Input_vchCrossRef3 = '',Input_vchCrossRef4 = '',Input_iParentCompanyId = '',OutFile) := MACRO
  IMPORT SALT28,Exhibition_DirectoryExhibitorData;
  #uniquename(of)
  %of% := RECORD
    SALT28.Str512Type fields;
  END;
  #uniquename(ot)
  %of% %ot%(infile le) := TRANSFORM
    SELF.fields :=
    #IF( #TEXT(Input_iExhibitorId)='' )
      '' 
    #ELSE
        IF( le.Input_iExhibitorId = (TYPEOF(le.Input_iExhibitorId))'','',':iExhibitorId')
    #END
+    #IF( #TEXT(Input_iPrismCompanyId)='' )
      '' 
    #ELSE
        IF( le.Input_iPrismCompanyId = (TYPEOF(le.Input_iPrismCompanyId))'','',':iPrismCompanyId')
    #END
+    #IF( #TEXT(Input_chShowCd)='' )
      '' 
    #ELSE
        IF( le.Input_chShowCd = (TYPEOF(le.Input_chShowCd))'','',':chShowCd')
    #END
+    #IF( #TEXT(Input_iShowYear)='' )
      '' 
    #ELSE
        IF( le.Input_iShowYear = (TYPEOF(le.Input_iShowYear))'','',':iShowYear')
    #END
+    #IF( #TEXT(Input_vchBooth)='' )
      '' 
    #ELSE
        IF( le.Input_vchBooth = (TYPEOF(le.Input_vchBooth))'','',':vchBooth')
    #END
+    #IF( #TEXT(Input_chAssocMemberFlag)='' )
      '' 
    #ELSE
        IF( le.Input_chAssocMemberFlag = (TYPEOF(le.Input_chAssocMemberFlag))'','',':chAssocMemberFlag')
    #END
+    #IF( #TEXT(Input_vchExhibitorName1)='' )
      '' 
    #ELSE
        IF( le.Input_vchExhibitorName1 = (TYPEOF(le.Input_vchExhibitorName1))'','',':vchExhibitorName1')
    #END
+    #IF( #TEXT(Input_vchExhibitorName2)='' )
      '' 
    #ELSE
        IF( le.Input_vchExhibitorName2 = (TYPEOF(le.Input_vchExhibitorName2))'','',':vchExhibitorName2')
    #END
+    #IF( #TEXT(Input_vchExhibitorName3)='' )
      '' 
    #ELSE
        IF( le.Input_vchExhibitorName3 = (TYPEOF(le.Input_vchExhibitorName3))'','',':vchExhibitorName3')
    #END
+    #IF( #TEXT(Input_Address1)='' )
      '' 
    #ELSE
        IF( le.Input_Address1 = (TYPEOF(le.Input_Address1))'','',':Address1')
    #END
+    #IF( #TEXT(Input_Address2)='' )
      '' 
    #ELSE
        IF( le.Input_Address2 = (TYPEOF(le.Input_Address2))'','',':Address2')
    #END
+    #IF( #TEXT(Input_Address3)='' )
      '' 
    #ELSE
        IF( le.Input_Address3 = (TYPEOF(le.Input_Address3))'','',':Address3')
    #END
+    #IF( #TEXT(Input_City)='' )
      '' 
    #ELSE
        IF( le.Input_City = (TYPEOF(le.Input_City))'','',':City')
    #END
+    #IF( #TEXT(Input_RegionName)='' )
      '' 
    #ELSE
        IF( le.Input_RegionName = (TYPEOF(le.Input_RegionName))'','',':RegionName')
    #END
+    #IF( #TEXT(Input_Country)='' )
      '' 
    #ELSE
        IF( le.Input_Country = (TYPEOF(le.Input_Country))'','',':Country')
    #END
+    #IF( #TEXT(Input_PostalCode)='' )
      '' 
    #ELSE
        IF( le.Input_PostalCode = (TYPEOF(le.Input_PostalCode))'','',':PostalCode')
    #END
+    #IF( #TEXT(Input_MainPhone)='' )
      '' 
    #ELSE
        IF( le.Input_MainPhone = (TYPEOF(le.Input_MainPhone))'','',':MainPhone')
    #END
+    #IF( #TEXT(Input_TollFreePhone)='' )
      '' 
    #ELSE
        IF( le.Input_TollFreePhone = (TYPEOF(le.Input_TollFreePhone))'','',':TollFreePhone')
    #END
+    #IF( #TEXT(Input_Fax)='' )
      '' 
    #ELSE
        IF( le.Input_Fax = (TYPEOF(le.Input_Fax))'','',':Fax')
    #END
+    #IF( #TEXT(Input_vchTollFreeFax)='' )
      '' 
    #ELSE
        IF( le.Input_vchTollFreeFax = (TYPEOF(le.Input_vchTollFreeFax))'','',':vchTollFreeFax')
    #END
+    #IF( #TEXT(Input_Email)='' )
      '' 
    #ELSE
        IF( le.Input_Email = (TYPEOF(le.Input_Email))'','',':Email')
    #END
+    #IF( #TEXT(Input_WebAddress)='' )
      '' 
    #ELSE
        IF( le.Input_WebAddress = (TYPEOF(le.Input_WebAddress))'','',':WebAddress')
    #END
+    #IF( #TEXT(Input_txtProductDesc)='' )
      '' 
    #ELSE
        IF( le.Input_txtProductDesc = (TYPEOF(le.Input_txtProductDesc))'','',':txtProductDesc')
    #END
+    #IF( #TEXT(Input_vchPavillion)='' )
      '' 
    #ELSE
        IF( le.Input_vchPavillion = (TYPEOF(le.Input_vchPavillion))'','',':vchPavillion')
    #END
+    #IF( #TEXT(Input_vchHall)='' )
      '' 
    #ELSE
        IF( le.Input_vchHall = (TYPEOF(le.Input_vchHall))'','',':vchHall')
    #END
+    #IF( #TEXT(Input_vchPage)='' )
      '' 
    #ELSE
        IF( le.Input_vchPage = (TYPEOF(le.Input_vchPage))'','',':vchPage')
    #END
+    #IF( #TEXT(Input_txtSpecials)='' )
      '' 
    #ELSE
        IF( le.Input_txtSpecials = (TYPEOF(le.Input_txtSpecials))'','',':txtSpecials')
    #END
+    #IF( #TEXT(Input_txtRepresentatives)='' )
      '' 
    #ELSE
        IF( le.Input_txtRepresentatives = (TYPEOF(le.Input_txtRepresentatives))'','',':txtRepresentatives')
    #END
+    #IF( #TEXT(Input_txtNewProducts)='' )
      '' 
    #ELSE
        IF( le.Input_txtNewProducts = (TYPEOF(le.Input_txtNewProducts))'','',':txtNewProducts')
    #END
+    #IF( #TEXT(Input_vchExporting)='' )
      '' 
    #ELSE
        IF( le.Input_vchExporting = (TYPEOF(le.Input_vchExporting))'','',':vchExporting')
    #END
+    #IF( #TEXT(Input_vchBusinessInterest)='' )
      '' 
    #ELSE
        IF( le.Input_vchBusinessInterest = (TYPEOF(le.Input_vchBusinessInterest))'','',':vchBusinessInterest')
    #END
+    #IF( #TEXT(Input_vchCrossRef1)='' )
      '' 
    #ELSE
        IF( le.Input_vchCrossRef1 = (TYPEOF(le.Input_vchCrossRef1))'','',':vchCrossRef1')
    #END
+    #IF( #TEXT(Input_vchCrossRef2)='' )
      '' 
    #ELSE
        IF( le.Input_vchCrossRef2 = (TYPEOF(le.Input_vchCrossRef2))'','',':vchCrossRef2')
    #END
+    #IF( #TEXT(Input_vchCrossRef3)='' )
      '' 
    #ELSE
        IF( le.Input_vchCrossRef3 = (TYPEOF(le.Input_vchCrossRef3))'','',':vchCrossRef3')
    #END
+    #IF( #TEXT(Input_vchCrossRef4)='' )
      '' 
    #ELSE
        IF( le.Input_vchCrossRef4 = (TYPEOF(le.Input_vchCrossRef4))'','',':vchCrossRef4')
    #END
+    #IF( #TEXT(Input_iParentCompanyId)='' )
      '' 
    #ELSE
        IF( le.Input_iParentCompanyId = (TYPEOF(le.Input_iParentCompanyId))'','',':iParentCompanyId')
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
