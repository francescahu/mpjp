package m3.s19ex2;

public class BigDog extends Dog{
	public static final int DAILY_HOUSING_PRICE = 18;
	public static final int FACTOR = 2; //quasi il doppio
	
	public BigDog(int days) {
		super(days);
	}

	@Override
	public int housing() {
		return super.housing() * FACTOR;
		//DAILY_HOUSING_PRICE * days;
	}

}

