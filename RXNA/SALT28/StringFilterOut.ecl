﻿IMPORT SALT28;
EXPORT StringFilterOut(SALT28.StrType s,SALT28.StrType w) := 
#if (UnicodeCfg.UseUnicode)
			Unicodelib.UnicodeFilterOut(s,w);
#else
			StringLib.StringFilterOut(s,w);
#end
