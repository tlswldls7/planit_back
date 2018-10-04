package com.planit.backend.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.planit.backend.service.ContentDTO;
import com.planit.backend.service.ContentService;


@Service("contentService")
public class ContentServiceImpl implements ContentService {

	@Resource(name="contentDAO")
	private ContentDAO dao;
	
	@Override
	public int insertOne(ContentDTO dto) {
		return dao.insertOne(dto);
	}

	@Override
	public int insertList(List<ContentDTO> list) {
		return dao.insertList(list);
	}

	

}
