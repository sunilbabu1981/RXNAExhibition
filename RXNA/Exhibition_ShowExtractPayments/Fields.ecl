IMPORT ut,SALT28;
EXPORT Fields := MODULE
EXPORT SALT28.StrType FieldName(UNSIGNED2 i) := CHOOSE(i,'PaymentID','OrderNumber','OrderLineNumber','PaymentAmount','InsertDate');
EXPORT FieldNum(SALT28.StrType fn) := CASE(fn,'PaymentID' => 1,'OrderNumber' => 2,'OrderLineNumber' => 3,'PaymentAmount' => 4,'InsertDate' => 5,0);
//Individual field level validation
EXPORT Make_PaymentID(SALT28.StrType s0) := s0;
EXPORT InValid_PaymentID(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PaymentID(UNSIGNED1 wh) := '';
EXPORT Make_OrderNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderNumber(UNSIGNED1 wh) := '';
EXPORT Make_OrderLineNumber(SALT28.StrType s0) := s0;
EXPORT InValid_OrderLineNumber(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_OrderLineNumber(UNSIGNED1 wh) := '';
EXPORT Make_PaymentAmount(SALT28.StrType s0) := s0;
EXPORT InValid_PaymentAmount(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_PaymentAmount(UNSIGNED1 wh) := '';
EXPORT Make_InsertDate(SALT28.StrType s0) := s0;
EXPORT InValid_InsertDate(SALT28.StrType s) := FALSE;
EXPORT InValidMessage_InsertDate(UNSIGNED1 wh) := '';
// This macro will compute and count field level differences based upon a pivot expression
export MAC_CountDifferencesByPivot(in_left,in_right,pivot_exp,bad_pivots,out_counts) := MACRO
  IMPORT SALT28,Exhibition_ShowExtractPayments;
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
    BOOLEAN Diff_PaymentID;
    BOOLEAN Diff_OrderNumber;
    BOOLEAN Diff_OrderLineNumber;
    BOOLEAN Diff_PaymentAmount;
    BOOLEAN Diff_InsertDate;
    UNSIGNED Num_Diffs;
    SALT28.StrType Val {MAXLENGTH(1024)};
  END;
#uniquename(fd)
  %dl% %fd%(in_left le,in_right ri) := TRANSFORM
    SELF.Diff_PaymentID := le.PaymentID <> ri.PaymentID;
    SELF.Diff_OrderNumber := le.OrderNumber <> ri.OrderNumber;
    SELF.Diff_OrderLineNumber := le.OrderLineNumber <> ri.OrderLineNumber;
    SELF.Diff_PaymentAmount := le.PaymentAmount <> ri.PaymentAmount;
    SELF.Diff_InsertDate := le.InsertDate <> ri.InsertDate;
    SELF.Val := (SALT28.StrType)evaluate(le,pivot_exp);
    SELF.Num_Diffs := 0+ IF( SELF.Diff_PaymentID,1,0)+ IF( SELF.Diff_OrderNumber,1,0)+ IF( SELF.Diff_OrderLineNumber,1,0)+ IF( SELF.Diff_PaymentAmount,1,0)+ IF( SELF.Diff_InsertDate,1,0);
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
    Count_Diff_PaymentID := COUNT(GROUP,%Closest%.Diff_PaymentID);
    Count_Diff_OrderNumber := COUNT(GROUP,%Closest%.Diff_OrderNumber);
    Count_Diff_OrderLineNumber := COUNT(GROUP,%Closest%.Diff_OrderLineNumber);
    Count_Diff_PaymentAmount := COUNT(GROUP,%Closest%.Diff_PaymentAmount);
    Count_Diff_InsertDate := COUNT(GROUP,%Closest%.Diff_InsertDate);
  END;
  out_counts := table(%Closest%,%AggRec%,true);
ENDMACRO;
END;
