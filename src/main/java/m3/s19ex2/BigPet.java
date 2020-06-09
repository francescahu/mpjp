package m3.s19ex2;

public abstract class BigPet extends Pet {

    public BigPet(int days) {
        super(days);
    }

    public int calculateDaily(int dailyPrice) {
        return dailyPrice * days;
    }
}
