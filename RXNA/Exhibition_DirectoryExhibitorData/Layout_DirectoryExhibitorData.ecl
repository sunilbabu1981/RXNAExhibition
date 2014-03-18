EXPORT layout_DirectoryExhibitorData := RECORD
  UNSIGNED3 iExhibitorId;// This should match with the Map your source data
  UNSIGNED5 iPrismCompanyId;//CustomerId
  UNICODE5 chShowCd;
  UNSIGNED2 iShowYear;
  UNICODE26 vchBooth;
  UNICODE4 chAssocMemberFlag;
  UNICODE84 vchExhibitorName1;
  UNICODE vchExhibitorName2;
  UNICODE40 vchExhibitorName3;
  UNICODE Address1;
  UNICODE98 Address2;
  UNICODE40 Address3;
  UNICODE30 City;
  UNICODE33 RegionName;
  UNICODE27 Country;
  UNICODE20 PostalCode;
  UNICODE40 MainPhone;
  UNICODE36 TollFreePhone;
  UNICODE38 Fax;
  UNICODE33 vchTollFreeFax;
  UNICODE98 Email;
  UNICODE90 WebAddress;
  UNICODE txtProductDesc;
  UNICODE38 vchPavillion;
  UNICODE4 vchHall;
  UNICODE4 vchPage;
  UNICODE txtSpecials;
  UNICODE txtRepresentatives;
  UNICODE4 txtNewProducts;
  UNICODE vchExporting;
  UNICODE vchBusinessInterest;
  UNICODE62 vchCrossRef1;
  UNICODE45 vchCrossRef2;
  UNICODE37 vchCrossRef3;
  UNICODE4 vchCrossRef4;
  UNSIGNED4 iParentCompanyId;//It is different if it is a booth share situation

END;