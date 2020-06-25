package m2ex;

//import static org.hamcrest.MatcherAssert.assertThat;
//import static org.hamcrest.Matchers.is;
//import static org.junit.jupiter.api.Assertions.*;

import java.util.Random;

import org.junit.jupiter.api.Test;

class SinkThemTest {
	
	@Test
	void test() {
		Random r = new Random();
		SinkThem st = new SinkThem(r.nextInt());
		
		
		
		//int actual = SinkThem.bin2dec("1001");

		//assertThat(actual, is(9));
	}

}
