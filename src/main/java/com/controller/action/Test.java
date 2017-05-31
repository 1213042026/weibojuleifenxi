package com.controller.action;


import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.controller.service.WeiboService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import us.codecraft.webmagic.Spider;
import us.codecraft.xsoup.xevaluator.ElementOperator.Regex;

public class Test {

     public void datahandle(String filepath){
    	 try
    	 {
    		 BufferedReader brd=new BufferedReader(new InputStreamReader(new FileInputStream(filepath)));
    		 String line="";
    		 String lines="";
    		 int i=1;
    		 Pattern ptn=Pattern.compile("(.*)(\\()([^)]*)(.*)");
//    		 Pattern ptn=Pattern.compile("(.*)(\()(.*)");
    		
    		 String result="";
    		 while((line=brd.readLine())!=null){
    			 if(line.contains("Pl_Official_MyProfileFeed__22")){
    				 result=line;
     			    Matcher matcher=ptn.matcher(result);
     			    if(matcher.find()){
     			    	System.out.println(matcher.group(3));
     			    	JSONObject obj=JSONObject.fromObject(matcher.group(3));
     			    	Iterator iterator=obj.keys();
     			    	while(iterator.hasNext()){
     			    		String key=iterator.next().toString();
     			    		System.out.println(key+"*****************"+obj.get(iterator.next()));
     			    	}
     			    	
     			    }
    			 }
    				
    		 }
//    		 FileOutputStream fos=new FileOutputStream(new File("d://task/output.txt"));
//    		 fos.write(result.getBytes());
//    		 fos.close();
    		 brd.close();
    	 }catch(Exception e){
    		 e.printStackTrace();
    	 }
    	
     }
     
     public void getWeiboJSon(String url ){
    	  HttpClient httpClient = new DefaultHttpClient();
          HttpPost httpPost = new HttpPost(url);
//          List<NameValuePair> params = new ArrayList<NameValuePair>();
//          params.add(new BasicNameValuePair("type", ""));
//          params.add(new BasicNameValuePair("page", "1"));
//          params.add(new BasicNameValuePair("rows", "5"));
//          UrlEncodedFormEntity entity = null;
//          try {
//              entity = new UrlEncodedFormEntity(params,"utf-8");
//          } catch (UnsupportedEncodingException e) {
//              // TODO Auto-generated catch block
//              e.printStackTrace();
//          }
//          httpPost.setEntity(entity);
          try {
              HttpResponse httpResponse = httpClient.execute(httpPost);
              if(httpResponse.getStatusLine().getStatusCode() == 200){
                  System.out.println("请求和响应成功");
                  HttpEntity httpEntity = httpResponse.getEntity();
                  String response = EntityUtils.toString(httpEntity);
                  JSONArray obj=JSONObject.fromObject(response).getJSONArray("cards");
                  JSONArray ary=JSONObject.fromObject(obj.get(0)).getJSONArray("card_group");
                  for(int i=0;i<ary.size();i++){
                	  String jsobj=JSONObject.fromObject(ary.get(i)).getJSONObject("mblog").getString("text");
                	  System.out.println(jsobj.replaceAll("</?[^>]+>", ""));
                  }
                  
//                  System.out.println(response);
              }
          } catch (ClientProtocolException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          } catch (IOException e) {
              // TODO Auto-generated catch block
              e.printStackTrace();
          }
     }
	
	
	public static void main(String[] args) {
		Test test=new Test();
		test.getWeiboJSon("http://m.weibo.cn/page/json?containerid=1005053159102865_-_WEIBO_SECOND_PROFILE_WEIBO&page=1");
//		test.datahandle("d://task/c.txt");
//		String str="11(ab,\\d</>c)1";
//		 Pattern ptn=Pattern.compile("(.*)(\\()([^)]*)(.*)");
//		 Matcher matcher=ptn.matcher(str);
//		 if(matcher.find()){
//			 System.out.println(matcher.group(3));
//		 }
		
//		Spider.create(new ContentProcess("db",new WeiboService()))
//        .addUrl("")//这个时候的目标爬取页就是首页的key对应的value然后取每个url，因为每个url通过##$##隔开
//		.run();
	}

}
