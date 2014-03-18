ds1 := DATASET('~rxna::freeman::reed_order_orderitem_data',layout_ORDERITEMDATA, csv( HEADING(1),SEPARATOR(','), QUOTE('"')));
ds2 := DATASET('~rxna::freeman::reed_order_orderitem_data1',layout_ORDERITEMDATA, csv( HEADING(1),SEPARATOR(','), QUOTE('"')));
ds3 := DATASET('~rxna::freeman::reed_order_orderitem_data2',layout_ORDERITEMDATA, csv( HEADING(1),SEPARATOR(','), QUOTE('"')));
EXPORT in_orderitemdata := ds1+ds2+ds3;
//EXPORT in_orderitemdata := ds1;