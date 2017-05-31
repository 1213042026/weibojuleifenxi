package com.controller.action;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.controller.pojo.Weibopojo;
import com.controller.service.WeiboService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import us.codecraft.webmagic.Spider;

@Controller
@RequestMapping(value="/wb")
public class WeiboAction {
	
	
	
	
	@Autowired
	@Qualifier(value = "weiboService")
	WeiboService weiboService;
	
	@ResponseBody
	@RequestMapping(value="wbquery")
	public String queryAction(HttpServletRequest request, HttpServletResponse response) {
		Map<String,List<Weibopojo>> map=new HashMap<String,List<Weibopojo>>();
		try
		{
			Weibopojo wb=new Weibopojo();
			List<Weibopojo> wblist=weiboService.queryCinema(wb);
			map.put("data", wblist);
			return JSONArray.fromObject(map).toString().substring(1, JSONArray.fromObject(map).toString().length()-1);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "";
	}
	
	
	@ResponseBody
	@RequestMapping(value="spider")
	public String addUserfeelingAction(HttpServletRequest request, HttpServletResponse response) {
		String urlpath=request.getParameter("path");
		Map<String,String> map =new HashMap<String,String>();
		try
		{
			BufferedReader brd =new BufferedReader(new InputStreamReader(new FileInputStream(urlpath)));
			String line="";
			List<String> list=new ArrayList<String>();
			while((line=brd.readLine())!=null){
				list.add(line);
			}
			for(String str:list){
				List<Weibopojo> wblist=getWeiboJSon(str);
				if(wblist.size()>0){
					for(Weibopojo w:wblist){
						weiboService.addSearchIndex(w);
					}
				}
			
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return JSONObject.fromObject(map).toString();
	}
	  public List<Weibopojo> getWeiboJSon(String url){
    	  HttpClient httpClient = new DefaultHttpClient();
          HttpPost httpPost = new HttpPost(url);
          List<Weibopojo> list =new ArrayList<Weibopojo>();
          try {
              HttpResponse httpResponse = httpClient.execute(httpPost);
              if(httpResponse.getStatusLine().getStatusCode() == 200){
                  System.out.println("请求和响应成功");
                  HttpEntity httpEntity = httpResponse.getEntity();
                  String response = EntityUtils.toString(httpEntity);
                  JSONArray obj=JSONObject.fromObject(response).getJSONArray("cards");
//                  JSONArray ary=JSONObject.fromObject(obj.get(0)).getJSONArray("card_group");
                  for(int i=0;i<obj.size();i++){
                	  String jsobj=JSONObject.fromObject(obj.get(i)).getJSONObject("mblog").getString("text");
                	  String authorid=JSONObject.fromObject(obj.get(i)).getJSONObject("mblog").getJSONObject("user").getString("id");
                	  String authorname=JSONObject.fromObject(obj.get(i)).getJSONObject("mblog").getJSONObject("user").getString("screen_name");
                	  Weibopojo pojo =new Weibopojo();
                	  pojo.setAuthor(authorid+"--"+authorname);
                	  String ct=jsobj.replaceAll("</?[^>]+>", "");
                	  System.out.println(new String(ct.getBytes("iso-8859-1"),"utf8"));
                	  System.out.println(new String(ct.getBytes("iso-8859-1"),"gbk"));
                	  System.out.println(new String(ct.getBytes("iso-8859-1"),"gb2312"));
                	  System.out.println(new String(ct.getBytes("iso-8859-1")));
                	  pojo.setContent(ct);
                	  list.add(pojo);
                  }
                  return list;
              }
          } catch (ClientProtocolException e) {
              e.printStackTrace();
          } catch (IOException e) {
              e.printStackTrace();
          }
          return null;
     }
	
	 
	

}
