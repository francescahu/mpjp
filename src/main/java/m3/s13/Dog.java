package m3.s13;

public class Dog implements BarkAndWag {
	
	private int dogWS = BarkAndWag.AVG_WAGGING_SPEED * 3; //WS = WaggingSpees
	
    @Override
    public String bark() {
        return "woof!";
    }

    public String bark(int count) {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < count; i++) {
            sb.append(bark());
        }

        return sb.toString();
    }

    @Override
    public int tailWaggingSpeed() {
        return BarkAndWag.AVG_WAGGING_SPEED;
    }
}