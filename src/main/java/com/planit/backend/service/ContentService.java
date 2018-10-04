package com.planit.backend.service;

import java.util.List;

// 관광정보 서비스 인터페이스 
public interface ContentService {
	// 관광정보를 하나만 입력
	int insertOne(ContentDTO dto);
	// 관광정보를 여러개 입력
	int insertList(List<ContentDTO> list);
}
