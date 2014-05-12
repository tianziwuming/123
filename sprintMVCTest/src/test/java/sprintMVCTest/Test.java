package sprintMVCTest;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class Test {

	public static void main(String [] args){
		try {
			String value="ÕâÊÇjspÒ³ÃæÖÐ¶¨ÒåµÄÖµ";
			Charset set=Charset.defaultCharset();
			System.out.println("charset="+set.toString());
			
			String encoded=new String(value.getBytes(),"utf-8");
			
			System.out.println(encoded);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
