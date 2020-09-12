package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import byteMatching.StringUtils;

class FineGrainedTest {

	@Test
	void testExactMatch() {
		
		assert(StringUtils.taintDistance("abc", "abc")==0);
	}
	
	@Test
	void testOneCharDifference() {
		
		double d = StringUtils.taintDistance("abc", "abd");
		assert(d==(1/3.0));
	}

	@Test
	void testOneCharDifference2() {
		
		double d = StringUtils.taintDistance("abcdef", "abcxyz");
		assert(d==(0.5));
	}

	
	
}
