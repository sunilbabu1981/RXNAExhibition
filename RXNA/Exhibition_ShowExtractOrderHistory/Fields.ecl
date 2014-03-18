IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'CustomerID','Event','Edition','OrderNumber','OrderCreateDate','Booth','BoothLength','BoothWidth','BoothSqFt','UnitPrice','BoothPrice','TotalInvoice','OrderStatus','ContractRecvdDate','DepositRecvdDate','SegmentCode','BillerID','IncidentID');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'CustomerID' => 1,'Event' => 2,'Edition' => 3,'OrderNumber' => 4,'OrderCreateDate' => 5,'Booth' => 6,'BoothLength' => 7,'BoothWidth' => 8,'BoothSqFt' => 9,'UnitPrice' => 10,'BoothPrice' => 11,'TotalInvoice' => 12,'OrderStatus' => 13,'ContractRecvdDate' => 14,'DepositRecvdDate' => 15,'SegmentCode' => 16,'BillerID' => 17,'IncidentID' => 18,0);
//Individual field level validation
EXPORT Make_CustomerID(SALT28.StrType s0) := s0;
EXPORT InValid_CustomerID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_CustomerID(UNSIGNED1 wh) := '';
EXPORT Make_Event(SALT28.StrType s0) := s0;
EXPORT InValid_Event(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Event(UNSIGNED1 wh) := '';
EXPORT Make_Edition(SALT28.StrType s0) := s0;
EXPORT InValid_Edition(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Edition(UNSIGNED1 wh) := '';
EXPORT Make_OrderNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderNumber(UNSIGNED1 wh) := '';
EXPORT Make_OrderCreateDate(SALT28.StrType s0) := s0;
EXPORT InValid_OrderCreateDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderCreateDate(UNSIGNED1 wh) := '';
EXPORT Make_Booth(SALT28.StrType s0) := s0;
EXPORT InValid_Booth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_Booth(UNSIGNED1 wh) := '';
EXPORT Make_BoothLength(SALT28.StrType s0) := s0;
EXPORT InValid_BoothLength(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BoothLength(UNSIGNED1 wh) := '';
EXPORT Make_BoothWidth(SALT28.StrType s0) := s0;
EXPORT InValid_BoothWidth(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BoothWidth(UNSIGNED1 wh) := '';
EXPORT Make_BoothSqFt(SALT28.StrType s0) := s0;
EXPORT InValid_BoothSqFt(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BoothSqFt(UNSIGNED1 wh) := '';
EXPORT Make_UnitPrice(SALT28.StrType s0) := s0;
EXPORT InValid_UnitPrice(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_UnitPrice(UNSIGNED1 wh) := '';
EXPORT Make_BoothPrice(SALT28.StrType s0) := s0;
EXPORT InValid_BoothPrice(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BoothPrice(UNSIGNED1 wh) := '';
EXPORT Make_TotalInvoice(SALT28.StrType s0) := s0;
EXPORT InValid_TotalInvoice(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TotalInvoice(UNSIGNED1 wh) := '';
EXPORT Make_OrderStatus(SALT28.StrType s0) := s0;
EXPORT InValid_OrderStatus(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderStatus(UNSIGNED1 wh) := '';
EXPORT Make_ContractRecvdDate(SALT28.StrType s0) := s0;
EXPORT InValid_ContractRecvdDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_ContractRecvdDate(UNSIGNED1 wh) := '';
EXPORT Make_DepositRecvdDate(SALT28.StrType s0) := s0;
EXPORT InValid_DepositRecvdDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DepositRecvdDate(UNSIGNED1 wh) := '';
EXPORT Make_SegmentCode(SALT28.StrType s0) := s0;
EXPORT InValid_SegmentCode(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_SegmentCode(UNSIGNED1 wh) := '';
EXPORT Make_BillerID(SALT28.StrType s0) := s0;
EXPORT InValid_BillerID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_BillerID(UNSIGNED1 wh) := '';
EXPORT Make_IncidentID(SALT28.StrType s0) := s0;
EXPORT InValid_IncidentID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_IncidentID(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractOrderHistory;
//Find those highly occuring pivot values to remove them from consideration
#uniquename(tr)
  %tr% := table(in_left+in_right,{ val := pivot_exp; });
#uniquename(r1)
  %r1% := record
    %tr%.val;    unsigned Cnt := COUNT(GROUP);
  end;
#uniquename(t1)
  %t1% := table(%tr%,%r1%,val,local); // Pre-aggregate before distribute
#uniquename(r2)
  %r2% := record
    %t1%.val;    unsigned Cnt := SUM(GROUP,%t1%.Cnt);
  end;
#uniquename(t2)
  %t2% := table(%t1%,%r2%,val); // Now do global aggregate
Bad_Pivots := %t2%(Cnt>100);
#uniquename(dl)
  %dl% := RECORD
    BOOLEAN Diff_CustomerID;
    BOOLEAN Diff_Event;
    BOOLEAN Diff_Edition;
    BOOLEAN Diff_OrderNumber;
    BOOLEAN Diff_OrderCreateDate;
    BOOLEAN Diff_Booth;
    BOOLEAN Diff_BoothLength;
    BOOLEAN Diff_BoothWidth;
    BOOLEAN Diff_BoothSqFt;
    BOOLEAN Diff_UnitPrice;
    BOOLEAN Diff_BoothPrice;
    BOOLEAN Diff_TotalInvoice;
    BOOLEAN Diff_OrderStatus;
    BOOLEAN Diff_ContractRecvdDate;
    BOOLEAN Diff_DepositRecvdDate;
    BOOLEAN Diff_SegmentCode;
    BOOLEAN Diff_BillerID;
    BOOLEAN Diff_IncidentID;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_CustomerID := le.CustomerID <> ri.CustomerID;
    SELF.Diff_Event := le.Event <> ri.Event;
    SELF.Diff_Edition := le.Edition <> ri.Edition;
    SELF.Diff_OrderNumber := le.OrderNumber <> ri.OrderNumber;
    SELF.Diff_OrderCreateDate := le.OrderCreateDate <> ri.OrderCreateDate;
    SELF.Diff_Booth := le.Booth <> ri.Booth;
    SELF.Diff_BoothLength := le.BoothLength <> ri.BoothLength;
    SELF.Diff_BoothWidth := le.BoothWidth <> ri.BoothWidth;
    SELF.Diff_BoothSqFt := le.BoothSqFt <> ri.BoothSqFt;
    SELF.Diff_UnitPrice := le.UnitPrice <> ri.UnitPrice;
    SELF.Diff_BoothPrice := le.BoothPrice <> ri.BoothPrice;
    SELF.Diff_TotalInvoice := le.TotalInvoice <> ri.TotalInvoice;
    SELF.Diff_OrderStatus := le.OrderStatus <> ri.OrderStatus;
    SELF.Diff_ContractRecvdDate := le.ContractRecvdDate <> ri.ContractRecvdDate;
    SELF.Diff_DepositRecvdDate := le.DepositRecvdDate <> ri.DepositRecvdDate;
    SELF.Diff_SegmentCode := le.SegmentCode <> ri.SegmentCode;
    SELF.Diff_BillerID := le.BillerID <> ri.BillerID;
    SELF.Diff_IncidentID := le.IncidentID <> ri.IncidentID;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_CustomerID,1,0)+ IF( SELF.Diff_Event,1,0)+ IF( SELF.Diff_Edition,1,0)+ IF( SELF.Diff_OrderNumber,1,0)+ IF( SELF.Diff_OrderCreateDate,1,0)+ IF( SELF.Diff_Booth,1,0)+ IF( SELF.Diff_BoothLength,1,0)+ IF( SELF.Diff_BoothWidth,1,0)+ IF( SELF.Diff_BoothSqFt,1,0)+ IF( SELF.Diff_UnitPrice,1,0)+ IF( SELF.Diff_BoothPrice,1,0)+ IF( SELF.Diff_TotalInvoice,1,0)+ IF( SELF.Diff_OrderStatus,1,0)+ IF( SELF.Diff_ContractRecvdDate,1,0)+ IF( SELF.Diff_DepositRecvdDate,1,0)+ IF( SELF.Diff_SegmentCode,1,0)+ IF( SELF.Diff_BillerID,1,0)+ IF( SELF.Diff_IncidentID,1,0);
  END;
// Now need to remove bad pivots from comparison
#uniquename(L)
  %L% := JOIN(in_left,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(R)
  %R% := JOIN(in_right,bad_pivots,evaluate(LEFT,pivot_exp)=right.val,transform(left),left only,lookup);
#uniquename(DiffL)
  %DiffL% := JOIN(%L%,%R%,evaluate(left,pivot_exp)=evaluate(right,pivot_exp),%fd%(left,right),hash);
#uniquename(Closest)
  %Closest% := DEDUP(SORT(%DiffL%,Val,Num_Diffs,local),Val,local); // Join will have distributed by pivot_exp
#uniquename(AggRec)
  %AggRec% := RECORD
    Count_Diff_CustomerID := COUNT(GROUP,%Closest%.Diff_CustomerID);
    Count_Diff_Event := COUNT(GROUP,%Closest%.Diff_Event);
    Count_Diff_Edition := COUNT(GROUP,%Closest%.Diff_Edition);
    Count_Diff_OrderNumber := COUNT(GROUP,%Closest%.Diff_OrderNumber);
    Count_Diff_OrderCreateDate := COUNT(GROUP,%Closest%.Diff_OrderCreateDate);
    Count_Diff_Booth := COUNT(GROUP,%Closest%.Diff_Booth);
    Count_Diff_BoothLength := COUNT(GROUP,%Closest%.Diff_BoothLength);
    Count_Diff_BoothWidth := COUNT(GROUP,%Closest%.Diff_BoothWidth);
    Count_Diff_BoothSqFt := COUNT(GROUP,%Closest%.Diff_BoothSqFt);
    Count_Diff_UnitPrice := COUNT(GROUP,%Closest%.Diff_UnitPrice);
    Count_Diff_BoothPrice := COUNT(GROUP,%Closest%.Diff_BoothPrice);
    Count_Diff_TotalInvoice := COUNT(GROUP,%Closest%.Diff_TotalInvoice);
    Count_Diff_OrderStatus := COUNT(GROUP,%Closest%.Diff_OrderStatus);
    Count_Diff_ContractRecvdDate := COUNT(GROUP,%Closest%.Diff_ContractRecvdDate);
    Count_Diff_DepositRecvdDate := COUNT(GROUP,%Closest%.Diff_DepositRecvdDate);
    Count_Diff_SegmentCode := COUNT(GROUP,%Closest%.Diff_SegmentCode);
    Count_Diff_BillerID := COUNT(GROUP,%Closest%.Diff_BillerID);
    Count_Diff_IncidentID := COUNT(GROUP,%Closest%.Diff_IncidentID);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
