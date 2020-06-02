package m2ex;

public class S04 {
	/**
	 * Add up all the numbers in the passed closed interval
	 * 
	 * @param first the left limit
	 * @param last  the right limit
	 * @return the sum of all the numbers, or zero
	 */
	public static long sum(int first, int last) {
		long res = 0;
		
		
//		if(first > 0 && last > 0) {
//			if(first > last) { //crescente
//				for(int i = 0; i < first-last; i++) {
//					res += last + i; 
//				}
//			}else if(first < last) {
//				for(int i = last-first; i > 0; i--) {
//					res -= first + i;
//				}
//			}else {
//				res = first;
//			}
//		}
		
		if(first > 0 && last > 0) {
			if(first > last) { //6, 10 1, 3
				res = first;
				for(int i = 1; i <= last-first; i++) {
					res += first + i; //1 + 0 = 1, 1+1 = 2 -> 3, 1+2 = 3->6 
				}
			}else if(last > first) { //10, 7
				for(int i = first-last; i > 0; i--) {
					res -= last -i;
				}
			}else { //==
				res = first;
			}
			
		}else if(first < 0 || last < 0) {
			
		}else { //== 0
			res = 0;
		}

		return res;
	}

	/**
	 * Add up only the even numbers in the passed closed interval
	 * 
	 * @param first the left limit
	 * @param last  the right limit
	 * @return the sum of all the even numbers, or zero
	 */
	public static long evenSum(int first, int last) {
		long res = 0;
		for(int i = 0; i < last-first; i++) {
			sum(first, last);
		}
		return res;
	}

	/**
	 * Square root using Newton method
	 * Epsilon should be set to 0.001
	 *  
	 * @param value
	 * @return calculated square root
	 */
	public static double sqrt(double value) {
		double x = value / 2;
	    double res = 1/2*(x + value/x);
	    
	    if(Math.abs(res-x) < 00.1)
	    	return x;
	    return res;
	}

	/**
     * Square root using Newton method
     * 
	 * @param value
	 * @param epsilon stop iterating when gain is less than this value
	 * @return calculated square root
	 */
    public static double sqrt(double value, double epsilon) {
        // TODO
        return 0.0;
    }
	
	/**
	 * Factorial
	 * 
	 * @param value
	 * @return factorial of input value, or zero
	 */
	public static long factorial(int value) {
		long res = 1;
		if(value == 0) //0! = 1
			return res;
		else if(value < 0) //-n! = 0
			res = 0;
		
		for(int i = value; i > 0; i--) { //n(n-1)(n-2)...1
			res *= i;
		}
		return res;
	}

	/**
	 * Fibonacci number (0, 1, 1, 2, 3, 5, 8, �)
	 * 
	 * @param value
	 * @return the Fibonacci number of value, or zero
	 */
	public static long fibonacci(int value) { //0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233,377
		int[] fib = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377};
		long res = 0;
		
		for(int i = 0; i < fib.length; i++) {
			if(i == 0 && value == 0) {
				res = 0;
			}else if((i == 1) && (value == 1)) { //|| i == 2
				res = 1;
			}else {
				res = fib[i-1] + fib[i-2];
			}
		}
		
		return res;
	}

	/**
	 * Multiplication table
	 * 
	 * @param value
	 * @return The multiplication table for value, when possible
	 */
	public static int[][] multiplicationTable(int value) {
		int[][] result = new int[value][value];
		
		for(int i = 1; i <= value; i++) {
			for(int j = 1; j <= value; j++) {
				result[--i][--j] = i * j;
			}
		}
		
		
		return result;
	}
}
