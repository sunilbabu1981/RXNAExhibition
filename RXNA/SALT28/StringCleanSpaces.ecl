IMPORT SALT28;
EXPORT StringCleanSpaces(SALT28.StrType s) := 
#if (UnicodeCfg.UseUnicode)
			Unicodelib.UnicodeCleanSpaces(s);
#else
			Stringlib.StringCleanSpaces(s);
#end
