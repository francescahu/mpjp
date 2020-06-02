package m3.s08;

public class Initialize {
    private int i; // 0
    private boolean flag; // false se non inizializzo
    private String t; // null

    public void f() {
        int i = 42;
        int j;
        String s = new String("Hello");

        System.out.println(s + i);
        
        // System.out.println(j); // error: variable j might not have been initialized
        j = i / 2;
        System.out.println(j);
    }

    public void g() {
        System.out.println(t + ", " + i + ", " + flag);
    }
    
    public static void main(String[] args) {
		Dog dog  = new Dog();
		
		dog.setNome("ciaone");
		System.out.println(dog.getNome());
	}
}
