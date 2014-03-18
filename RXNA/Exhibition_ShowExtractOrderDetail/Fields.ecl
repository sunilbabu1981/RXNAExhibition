IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'OrderNumber','OrderLineNumber','RevenueType','RevenueItem','OrderLineStatus','QuantityOrdered','TotalPrice');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'OrderNumber' => 1,'OrderLineNumber' => 2,'RevenueType' => 3,'RevenueItem' => 4,'OrderLineStatus' => 5,'QuantityOrdered' => 6,'TotalPrice' => 7,0);
//Individual field level validation
EXPORT Make_OrderNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderNumber(UNSIGNED1 wh) := '';
EXPORT Make_OrderLineNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderLineNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderLineNumber(UNSIGNED1 wh) := '';
EXPORT Make_RevenueType(SALT28.StrType s0) := s0;
EXPORT InValid_RevenueType(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_RevenueType(UNSIGNED1 wh) := '';
EXPORT Make_RevenueItem(SALT28.StrType s0) := s0;
EXPORT InValid_RevenueItem(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_RevenueItem(UNSIGNED1 wh) := '';
EXPORT Make_OrderLineStatus(SALT28.StrType s0) := s0;
EXPORT InValid_OrderLineStatus(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderLineStatus(UNSIGNED1 wh) := '';
EXPORT Make_QuantityOrdered(SALT28.StrType s0) := s0;
EXPORT InValid_QuantityOrdered(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_QuantityOrdered(UNSIGNED1 wh) := '';
EXPORT Make_TotalPrice(SALT28.StrType s0) := s0;
EXPORT InValid_TotalPrice(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_TotalPrice(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractOrderDetail;
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
    BOOLEAN Diff_OrderNumber;
    BOOLEAN Diff_OrderLineNumber;
    BOOLEAN Diff_RevenueType;
    BOOLEAN Diff_RevenueItem;
    BOOLEAN Diff_OrderLineStatus;
    BOOLEAN Diff_QuantityOrdered;
    BOOLEAN Diff_TotalPrice;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_OrderNumber := le.OrderNumber <> ri.OrderNumber;
    SELF.Diff_OrderLineNumber := le.OrderLineNumber <> ri.OrderLineNumber;
    SELF.Diff_RevenueType := le.RevenueType <> ri.RevenueType;
    SELF.Diff_RevenueItem := le.RevenueItem <> ri.RevenueItem;
    SELF.Diff_OrderLineStatus := le.OrderLineStatus <> ri.OrderLineStatus;
    SELF.Diff_QuantityOrdered := le.QuantityOrdered <> ri.QuantityOrdered;
    SELF.Diff_TotalPrice := le.TotalPrice <> ri.TotalPrice;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_OrderNumber,1,0)+ IF( SELF.Diff_OrderLineNumber,1,0)+ IF( SELF.Diff_RevenueType,1,0)+ IF( SELF.Diff_RevenueItem,1,0)+ IF( SELF.Diff_OrderLineStatus,1,0)+ IF( SELF.Diff_QuantityOrdered,1,0)+ IF( SELF.Diff_TotalPrice,1,0);
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
    Count_Diff_OrderNumber := COUNT(GROUP,%Closest%.Diff_OrderNumber);
    Count_Diff_OrderLineNumber := COUNT(GROUP,%Closest%.Diff_OrderLineNumber);
    Count_Diff_RevenueType := COUNT(GROUP,%Closest%.Diff_RevenueType);
    Count_Diff_RevenueItem := COUNT(GROUP,%Closest%.Diff_RevenueItem);
    Count_Diff_OrderLineStatus := COUNT(GROUP,%Closest%.Diff_OrderLineStatus);
    Count_Diff_QuantityOrdered := COUNT(GROUP,%Closest%.Diff_QuantityOrdered);
    Count_Diff_TotalPrice := COUNT(GROUP,%Closest%.Diff_TotalPrice);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
