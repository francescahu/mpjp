import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;


import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.MatcherAssert.assertThat;


class Simple2Test {

	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	void negatePositive() {
		Simple2 simple = new Simple2();
		int value = 42;
		int result = simple.negate(value);
		assertThat(result, equalTo(-42));
	}

}
