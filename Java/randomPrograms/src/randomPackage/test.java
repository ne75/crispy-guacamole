package randomPackage;


public class test {
    public static void main(String[] args) {
	
	
	
    }

    
    public boolean prefixAgain(String s, int n) {
	String prefix = s.substring(0, n);
	
	return s.substring(n).contains(prefix.subSequence(0, s.substring(n).length()));
    }

}
