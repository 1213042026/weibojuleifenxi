package com.controller.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.controller.pojo.Weibopojo;


@Component("weiboDao")
public class WeiboDao extends BaseDao{
	
	
	public List<Weibopojo> queryCinema(Weibopojo pojo) throws Exception {
		return getSqlMapClientTemplate().queryForList("getweibopojo",pojo);
	}
	
	public void addSearchIndex(Weibopojo pojo) throws Exception {
		 getSqlMapClientTemplate().insert("addweibopojo", pojo);
	}
	

}
