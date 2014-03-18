IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'InvoiceNumber','InvoiceLineNumber','OrderNumber','OrderLineNumber','mInvoiceAmount','mBalanceAmount','bARTransferFlag','iPaymentTermId','iScheduleId','iTaxId','mInvoiceAmountSite','mInvoiceAmountTriang','mBalanceAmountSite','mBalanceAmountTriang','iOrderRevNum','chInvDemand','iTaxRevNum','DueDate');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'InvoiceNumber' => 1,'InvoiceLineNumber' => 2,'OrderNumber' => 3,'OrderLineNumber' => 4,'mInvoiceAmount' => 5,'mBalanceAmount' => 6,'bARTransferFlag' => 7,'iPaymentTermId' => 8,'iScheduleId' => 9,'iTaxId' => 10,'mInvoiceAmountSite' => 11,'mInvoiceAmountTriang' => 12,'mBalanceAmountSite' => 13,'mBalanceAmountTriang' => 14,'iOrderRevNum' => 15,'chInvDemand' => 16,'iTaxRevNum' => 17,'DueDate' => 18,0);
//Individual field level validation
EXPORT Make_InvoiceNumber(SALT28.StrType s0) := s0;
EXPORT InValid_InvoiceNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_InvoiceNumber(UNSIGNED1 wh) := '';
EXPORT Make_InvoiceLineNumber(SALT28.StrType s0) := s0;
EXPORT InValid_InvoiceLineNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_InvoiceLineNumber(UNSIGNED1 wh) := '';
EXPORT Make_OrderNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderNumber(UNSIGNED1 wh) := '';
EXPORT Make_OrderLineNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderLineNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderLineNumber(UNSIGNED1 wh) := '';
EXPORT Make_mInvoiceAmount(SALT28.StrType s0) := s0;
EXPORT InValid_mInvoiceAmount(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mInvoiceAmount(UNSIGNED1 wh) := '';
EXPORT Make_mBalanceAmount(SALT28.StrType s0) := s0;
EXPORT InValid_mBalanceAmount(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mBalanceAmount(UNSIGNED1 wh) := '';
EXPORT Make_bARTransferFlag(SALT28.StrType s0) := s0;
EXPORT InValid_bARTransferFlag(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_bARTransferFlag(UNSIGNED1 wh) := '';
EXPORT Make_iPaymentTermId(SALT28.StrType s0) := s0;
EXPORT InValid_iPaymentTermId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iPaymentTermId(UNSIGNED1 wh) := '';
EXPORT Make_iScheduleId(SALT28.StrType s0) := s0;
EXPORT InValid_iScheduleId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iScheduleId(UNSIGNED1 wh) := '';
EXPORT Make_iTaxId(SALT28.StrType s0) := s0;
EXPORT InValid_iTaxId(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iTaxId(UNSIGNED1 wh) := '';
EXPORT Make_mInvoiceAmountSite(SALT28.StrType s0) := s0;
EXPORT InValid_mInvoiceAmountSite(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mInvoiceAmountSite(UNSIGNED1 wh) := '';
EXPORT Make_mInvoiceAmountTriang(SALT28.StrType s0) := s0;
EXPORT InValid_mInvoiceAmountTriang(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mInvoiceAmountTriang(UNSIGNED1 wh) := '';
EXPORT Make_mBalanceAmountSite(SALT28.StrType s0) := s0;
EXPORT InValid_mBalanceAmountSite(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mBalanceAmountSite(UNSIGNED1 wh) := '';
EXPORT Make_mBalanceAmountTriang(SALT28.StrType s0) := s0;
EXPORT InValid_mBalanceAmountTriang(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_mBalanceAmountTriang(UNSIGNED1 wh) := '';
EXPORT Make_iOrderRevNum(SALT28.StrType s0) := s0;
EXPORT InValid_iOrderRevNum(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iOrderRevNum(UNSIGNED1 wh) := '';
EXPORT Make_chInvDemand(SALT28.StrType s0) := s0;
EXPORT InValid_chInvDemand(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_chInvDemand(UNSIGNED1 wh) := '';
EXPORT Make_iTaxRevNum(SALT28.StrType s0) := s0;
EXPORT InValid_iTaxRevNum(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_iTaxRevNum(UNSIGNED1 wh) := '';
EXPORT Make_DueDate(SALT28.StrType s0) := s0;
EXPORT InValid_DueDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_DueDate(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractInvoiceDetails;
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
    BOOLEAN Diff_InvoiceNumber;
    BOOLEAN Diff_InvoiceLineNumber;
    BOOLEAN Diff_OrderNumber;
    BOOLEAN Diff_OrderLineNumber;
    BOOLEAN Diff_mInvoiceAmount;
    BOOLEAN Diff_mBalanceAmount;
    BOOLEAN Diff_bARTransferFlag;
    BOOLEAN Diff_iPaymentTermId;
    BOOLEAN Diff_iScheduleId;
    BOOLEAN Diff_iTaxId;
    BOOLEAN Diff_mInvoiceAmountSite;
    BOOLEAN Diff_mInvoiceAmountTriang;
    BOOLEAN Diff_mBalanceAmountSite;
    BOOLEAN Diff_mBalanceAmountTriang;
    BOOLEAN Diff_iOrderRevNum;
    BOOLEAN Diff_chInvDemand;
    BOOLEAN Diff_iTaxRevNum;
    BOOLEAN Diff_DueDate;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_InvoiceNumber := le.InvoiceNumber <> ri.InvoiceNumber;
    SELF.Diff_InvoiceLineNumber := le.InvoiceLineNumber <> ri.InvoiceLineNumber;
    SELF.Diff_OrderNumber := le.OrderNumber <> ri.OrderNumber;
    SELF.Diff_OrderLineNumber := le.OrderLineNumber <> ri.OrderLineNumber;
    SELF.Diff_mInvoiceAmount := le.mInvoiceAmount <> ri.mInvoiceAmount;
    SELF.Diff_mBalanceAmount := le.mBalanceAmount <> ri.mBalanceAmount;
    SELF.Diff_bARTransferFlag := le.bARTransferFlag <> ri.bARTransferFlag;
    SELF.Diff_iPaymentTermId := le.iPaymentTermId <> ri.iPaymentTermId;
    SELF.Diff_iScheduleId := le.iScheduleId <> ri.iScheduleId;
    SELF.Diff_iTaxId := le.iTaxId <> ri.iTaxId;
    SELF.Diff_mInvoiceAmountSite := le.mInvoiceAmountSite <> ri.mInvoiceAmountSite;
    SELF.Diff_mInvoiceAmountTriang := le.mInvoiceAmountTriang <> ri.mInvoiceAmountTriang;
    SELF.Diff_mBalanceAmountSite := le.mBalanceAmountSite <> ri.mBalanceAmountSite;
    SELF.Diff_mBalanceAmountTriang := le.mBalanceAmountTriang <> ri.mBalanceAmountTriang;
    SELF.Diff_iOrderRevNum := le.iOrderRevNum <> ri.iOrderRevNum;
    SELF.Diff_chInvDemand := le.chInvDemand <> ri.chInvDemand;
    SELF.Diff_iTaxRevNum := le.iTaxRevNum <> ri.iTaxRevNum;
    SELF.Diff_DueDate := le.DueDate <> ri.DueDate;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_InvoiceNumber,1,0)+ IF( SELF.Diff_InvoiceLineNumber,1,0)+ IF( SELF.Diff_OrderNumber,1,0)+ IF( SELF.Diff_OrderLineNumber,1,0)+ IF( SELF.Diff_mInvoiceAmount,1,0)+ IF( SELF.Diff_mBalanceAmount,1,0)+ IF( SELF.Diff_bARTransferFlag,1,0)+ IF( SELF.Diff_iPaymentTermId,1,0)+ IF( SELF.Diff_iScheduleId,1,0)+ IF( SELF.Diff_iTaxId,1,0)+ IF( SELF.Diff_mInvoiceAmountSite,1,0)+ IF( SELF.Diff_mInvoiceAmountTriang,1,0)+ IF( SELF.Diff_mBalanceAmountSite,1,0)+ IF( SELF.Diff_mBalanceAmountTriang,1,0)+ IF( SELF.Diff_iOrderRevNum,1,0)+ IF( SELF.Diff_chInvDemand,1,0)+ IF( SELF.Diff_iTaxRevNum,1,0)+ IF( SELF.Diff_DueDate,1,0);
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
    Count_Diff_InvoiceNumber := COUNT(GROUP,%Closest%.Diff_InvoiceNumber);
    Count_Diff_InvoiceLineNumber := COUNT(GROUP,%Closest%.Diff_InvoiceLineNumber);
    Count_Diff_OrderNumber := COUNT(GROUP,%Closest%.Diff_OrderNumber);
    Count_Diff_OrderLineNumber := COUNT(GROUP,%Closest%.Diff_OrderLineNumber);
    Count_Diff_mInvoiceAmount := COUNT(GROUP,%Closest%.Diff_mInvoiceAmount);
    Count_Diff_mBalanceAmount := COUNT(GROUP,%Closest%.Diff_mBalanceAmount);
    Count_Diff_bARTransferFlag := COUNT(GROUP,%Closest%.Diff_bARTransferFlag);
    Count_Diff_iPaymentTermId := COUNT(GROUP,%Closest%.Diff_iPaymentTermId);
    Count_Diff_iScheduleId := COUNT(GROUP,%Closest%.Diff_iScheduleId);
    Count_Diff_iTaxId := COUNT(GROUP,%Closest%.Diff_iTaxId);
    Count_Diff_mInvoiceAmountSite := COUNT(GROUP,%Closest%.Diff_mInvoiceAmountSite);
    Count_Diff_mInvoiceAmountTriang := COUNT(GROUP,%Closest%.Diff_mInvoiceAmountTriang);
    Count_Diff_mBalanceAmountSite := COUNT(GROUP,%Closest%.Diff_mBalanceAmountSite);
    Count_Diff_mBalanceAmountTriang := COUNT(GROUP,%Closest%.Diff_mBalanceAmountTriang);
    Count_Diff_iOrderRevNum := COUNT(GROUP,%Closest%.Diff_iOrderRevNum);
    Count_Diff_chInvDemand := COUNT(GROUP,%Closest%.Diff_chInvDemand);
    Count_Diff_iTaxRevNum := COUNT(GROUP,%Closest%.Diff_iTaxRevNum);
    Count_Diff_DueDate := COUNT(GROUP,%Closest%.Diff_DueDate);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
