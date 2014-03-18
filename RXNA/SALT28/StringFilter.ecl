IMPORT SALT28;
EXPORT StringFilter(SALT28.StrType s,SALT28.StrType w) := 
#if (UnicodeCfg.UseUnicode)
			Unicodelib.UnicodeFilter(s,w);
#else
			StringLib.StringFilter(s,w);
#end
