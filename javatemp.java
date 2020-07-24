import java.util.*;
import java.io.*;

//Main is a generally accepted class.During compiling change to something more sensible 
public class Main {
    //template starts    
	static class Scanner {
        StringTokenizer st;
        BufferedReader br;
        public Scanner(InputStream s) {
            br = new BufferedReader(new InputStreamReader(s));
        }
        public Scanner(FileReader fileReader) {
            br = new BufferedReader(fileReader);
        }
        public String next() throws IOException {
            while (st == null || !st.hasMoreTokens())
                st = new StringTokenizer(br.readLine());
            return st.nextToken();
        }
        public int nextInt() throws IOException {
            return Integer.parseInt(next());
        }
        public long nextLong() throws IOException {
            return Long.parseLong(next());
        }
        public String nextLine() throws IOException {
            return br.readLine();
        }
        public boolean ready() throws IOException {
            return br.ready();
        }
    }
    //template ends    
	public static void main(String[] args) throws IOException {
        Scanner sc  =new Scanner(System.in);
		PrintWriter pw=new PrintWriter(System.out);
        //main code or logic goes here
        
        
    }
}