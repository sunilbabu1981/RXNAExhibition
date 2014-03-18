﻿EXPORT fn_Set_Intersection(SET OF INTEGER l,SET OF INTEGER r) := FUNCTION
  ld := DATASET(l,{INTEGER i});
	rd := DATASET(r,{INTEGER i});
	d := JOIN(ld,rd,LEFT.i=RIGHT.i,TRANSFORM(LEFT));
	RETURN SET(d,i);
	END;
