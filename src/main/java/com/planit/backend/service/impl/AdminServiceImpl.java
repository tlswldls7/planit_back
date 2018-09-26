package com.planit.backend.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.planit.backend.service.AdminDTO;
import com.planit.backend.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Resource(name="adminDAO")
	private AdminDAO dao;
	
	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}

	@Override
	public List<AdminDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		return dao.getTotalCount(map);
	}

	@Override
	public AdminDTO selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(AdminDTO dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(AdminDTO dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(AdminDTO dto) {
		return dao.delete(dto);
	}

}
