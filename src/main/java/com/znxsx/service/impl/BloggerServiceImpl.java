package com.znxsx.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.znxsx.dao.BloggerDao;
import com.znxsx.entity.Blogger;
import com.znxsx.service.BloggerService;

/**
 * ����Serviceʵ����
 * @author Administrator
 *
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService{

	@Resource
	private BloggerDao bloggerDao;

	public Blogger find() {
		return bloggerDao.find();
	}

	public Blogger getByUserName(String userName) {
		return bloggerDao.getByUserName(userName);
	}

	public Integer update(Blogger blogger) {
		return bloggerDao.update(blogger);
	}
	
	
}
