package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import byteMatching.ByteUtils;

class FineGrainedTest {

	@Test
	void testExactMatch() {
		
		assert(ByteUtils.taintDistance("abc", "abc")==0);
	}
	
	@Test
	void testOneCharDifference() {
		
		double d = ByteUtils.taintDistance("abc", "abd");
		assert(d==(1/3.0));
	}

	@Test
	void testOneCharDifference2() {
		
		double d = ByteUtils.taintDistance("abcdef", "abcxyz");
		assert(d==(0.5));
	}

	
	
}
