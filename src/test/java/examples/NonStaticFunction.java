package examples;

public class NonStaticFunction {
	
	public String nonStaticFunc(String args) {
		System.out.println("this is nonStaticFunc");
		return "Hello"+ args;
	}
	
	public static String staticFunc(String args) {
		System.out.println("this is StaticFunc");
		return "Hello"+ args;
	}
}
