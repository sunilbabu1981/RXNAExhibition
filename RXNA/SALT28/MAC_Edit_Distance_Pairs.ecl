﻿export MAC_Edit_Distance_Pairs(infile,infield,countfield,thresh,phonetics,outfile) := MACRO
	
	#uniquename(matchrec)
	%matchrec% := record
	  typeof(infile.infield) id1;
		typeof(infile.countfield) count1;
		typeof(infile.infield) id2;
		typeof(infile.countfield) count2;
		unsigned1       distance;
		boolean         phonetic;
	  end;
		
	#uniquename(trans)
	%matchrec% %trans%(infile le,infile ri) := transform
	  self.id1 := le.infield;
		self.id2 := ri.infield;
		self.count1 := le.countfield;
		self.count2 := ri.countfield;
		self.distance := MAP( le.infield=ri.infield => 0,
													~SALT28.WithinEditN(le.infield,ri.infield,2) => 10,
													SALT28.WithinEditN(le.infield,ri.infield,1) => 1, 2 );
		self.phonetic := phonetics and metaphonelib.dmetaphone1((string)le.infield) = metaphonelib.dmetaphone1((string)ri.infield);
	  end;	
		
		// An error of 1 place in a 4 char document counts as a 2.5; given our lowest threshold is 2 this means
		// the lowest 'hit' will be a 5 char document with one error. Thus we can assert that at least 4 chars will always be fixed ...
		// the below would miss a 2 on a word where it was the two ends .... such is life ....
  // Use ,all for <= 4; allows the 'tiddlers' to get correct (and v.low) specificities
	#uniquename(inf4)
	%inf4% := infile(thresh>0,length(trim(infield))<=4);
	#uniquename(j0)
	%j0% := join(%inf4%,%inf4%,SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),all);	
	// Use the 4 fixed places for strings <= 7	
	#uniquename(inf7)
	%inf7% := infile(thresh>0,length(trim(infield))<=7);
	#uniquename(inf)
	%inf% := infile(thresh>0,length(trim(infield))>=5);
	#uniquename(j1)
	%j1% := join(%inf7%,%inf7%,left.infield[1..2]=right.infield[1..2] and  left.infield[3..*]=right.infield[3..*] and SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),atmost(left.infield[1..2]=right.infield[1..2] and  left.infield[3..*]=right.infield[3..*],3500));
	#uniquename(j2)
	%j2% := join(%inf%,%inf%,left.infield[1..3]=right.infield[1..3] and  left.infield[4..*]=right.infield[4..*] and SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),atmost(left.infield[1..3]=right.infield[1..3] and  left.infield[4..*]=right.infield[4..*],5000));
	#uniquename(j3)
	%j3% := join(%inf7%,%inf7%,left.infield[3..*]=right.infield[3..*] and left.infield[length(trim(left.infield))-2..] = right.infield[length(trim(right.infield))-2..] and SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),atmost(left.infield[3..*]=right.infield[3..*] and left.infield[length(trim(left.infield))-2..] = right.infield[length(trim(right.infield))-2..],3500));
	#uniquename(j4)
	%j4% := join(%inf%,%inf%,left.infield[4..*]=right.infield[4..*] and left.infield[length(trim(left.infield))-3..] = right.infield[length(trim(right.infield))-3..] and SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),atmost(left.infield[4..*]=right.infield[4..*] and left.infield[length(trim(left.infield))-3..] = right.infield[length(trim(right.infield))-3..],2500));
	#uniquename(j5)
	// Allow positions 4&5 to vary
	%j5% := join(%inf%,%inf%,left.infield[1..*]=right.infield[1..*] and left.infield[length(trim(left.infield))-2..] = right.infield[length(trim(right.infield))-2..] and SALT28.WithinEditN(left.infield,right.infield,thresh),%trans%(left,right),atmost(left.infield[1..*]=right.infield[1..*] and left.infield[length(trim(left.infield))-2..] = right.infield[length(trim(right.infield))-2..],2500));
	#uniquename(jnull)
	// Make sure the 'fullmatch' case always gets through
	#IF(phonetics)
	%jnull% := join(infile,infile,metaphonelib.dmetaphone1((string)left.infield) = metaphonelib.dmetaphone1((string)right.infield),%trans%(left,right),KEEP(512),HINT(parallel_match));
	#ELSE
	%jnull% := join(infile,infile,left.infield=right.infield,%trans%(left,right));
	#END
	#uniquename(aj)
	%aj% := dedup( sort( %j0%+%j1%+%j2%+%j3%+%j4%+%j5%+%jnull%, whole record, skew(1) ), whole record );
	
#uniquename(r1)
%r1% := record
  %aj%.id1;
	unsigned6 all_cnt := sum(group,%aj%.count2);
	unsigned6 e1_cnt := sum(group,if(%aj%.distance<=1,%aj%.count2,0));
	unsigned6 e2_cnt := sum(group,if(%aj%.distance<=2,%aj%.count2,0));
	unsigned6 e1p_cnt := sum(group,if(%aj%.distance<=1 and %aj%.phonetic,%aj%.count2,0));
	unsigned6 e2p_cnt := sum(group,if(%aj%.distance<=2 and %aj%.phonetic,%aj%.count2,0));
	unsigned6 p_cnt := sum(group,if(%aj%.phonetic,%aj%.count2,0));
  end;
#uniquename(t)
%t% := table(%aj%,%r1%,id1,few);	
#uniquename(oform)
// Slim things down to help the match_candidates
%oform% := record
  infile;
	unsigned6 all_cnt;
	#if (thresh>0)
	unsigned6 e1_cnt;
	unsigned6 e2_cnt;
	#if (phonetics)
	unsigned6 e1p_cnt;
	unsigned6 e2p_cnt;
	#end
	#end
	#if (phonetics)
	unsigned6 p_cnt;
	#end
  end;
#uniquename(take_vals)
%oform% %take_vals%(infile le, %t% ri) := transform
  self := le;
	self := ri;
  end;
	
outfile := join(infile,%t%,left.infield=right.id1,%take_vals%(left,right));
	
  ENDMACRO;
