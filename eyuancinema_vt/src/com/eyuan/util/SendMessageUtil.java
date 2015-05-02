package com.eyuan.util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class SendMessageUtil {

	public void sendMessage(String phone,String text) throws Exception{
		
		System.out.println("进入发短信方法");
		System.out.println(phone);
		System.out.println(text);
		HttpClient client = new HttpClient();  
        PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");   
        post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码  
          
        NameValuePair[] data = {  
                new NameValuePair("Uid", "qiulongjie"),  
                new NameValuePair("Key", "9ed609cb1becaec8b581"),  
                new NameValuePair("smsMob", phone),  
                new NameValuePair("smsText", text)  
        };  
          
        post.setRequestBody(data);  
      
        client.executeMethod(post);  
          
        Header[] headers = post.getResponseHeaders();  
        int statusCode = post.getStatusCode();  
        System.out.println("statusCode:"+statusCode);  
          
        for(Header h : headers) {  
            System.out.println(h.toString());  
        }  
          
        String result = new String(post.getResponseBodyAsString().getBytes("gbk"));   
        System.out.println(result);  
        post.releaseConnection();  
	}
}
