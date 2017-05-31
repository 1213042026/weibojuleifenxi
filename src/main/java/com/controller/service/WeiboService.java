package com.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.controller.dao.WeiboDao;
import com.controller.pojo.Weibopojo;

@Component("weiboService")
public class WeiboService {

	
	@Autowired
	@Qualifier(value="weiboDao")
	WeiboDao weiboDao;
	
	
	public List<Weibopojo> queryCinema(Weibopojo pojo) throws Exception{
		return weiboDao.queryCinema(pojo);
	}
	
	
	public void addSearchIndex(Weibopojo pojo)throws Exception{
		weiboDao.addSearchIndex(pojo);
	}
	
	
	
	
	
}
