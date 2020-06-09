package m3.s19;

public class Dog extends Pet {
    private double speed;

    public Dog(String name) {
        this(name, 0.0);
    }

    public Dog(String name, double speed) {
        super(name); //di Pet -> Object
        this.speed = speed;
    }

    public double getSpeed() {
        return speed;
    }
    
    public String toString() {
    	return "Dog [speed=" + speed + "] " + super.toString();
    }
}