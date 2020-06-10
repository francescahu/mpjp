package m6.s09;

public class Lazy {
    private static Lazy instance;

    private Lazy() {
    }

    //Synchronized perche c'è una coda e solo 1 alla volta entrano
    public static synchronized Lazy getInstance() {
        if (instance == null) { //solo se istanza non esiste gia
            instance = new Lazy();
        }
        return instance;
    }

    public int solution() {
        return 42;
    }
}
