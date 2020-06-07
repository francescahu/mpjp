package m2ex;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class S08Test {

	@Test
	void binarySumPlain() {
		String left = "10";
		String right = "11";

		assertThat(S08.binarySum(left, right), is("101"));
	}
	
	@Test
	void binaryPro() {
		String sum = S08.binarySum("11100", "11010");
		assertThat(sum, is("110110"));
	}
	
	@Test
	void mergeSortPlain() {
		int[] left = {1,2,4,6,7};
		int[] right = {3,4,4,6};
		int[] actual = S08.mergeSorted(left, right);
		assertThat(actual, is(new int[] {1,2,3,4,4,4,6,6,7}));
	}

	@Test
	void getSinglePlain() {
		int actual = S08.getSingle(new int[] {1,4,4,5,6,2,3,3,2,1,5});
		assertThat(actual, is(6));
	}
	

	@Test
	void hasOnlyUniquePlain() {
		boolean actual = S08.hasOnlyUnique("abcdefg");
		assertThat(actual, is(true));
	}

	@Test
	void notUnique() {
		boolean actual = S08.hasOnlyUnique("ciaoooo");
		assertThat(actual, is(false));
	}

	@Test
	void isAnagramPlain() {
		boolean actual = S08.isAnagram("anna", "nana");
		assertThat(actual, is(true));
	}


	@Test
	void notAnagram() {
		boolean actual = S08.isAnagram("topo", "poop");
		assertThat(actual, is(false));
	}


}
