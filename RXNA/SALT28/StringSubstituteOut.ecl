IMPORT SALT28;
EXPORT StringSubstituteOut(SALT28.StrType s, SALT28.StrType w, SALT28.StrType n) := 
#if (UnicodeCfg.UseUnicode)
			Unicodelib.UnicodeSubstituteOut(s, w, n);
#else
			Stringlib.StringSubstituteOut(s, w, n);
#end
