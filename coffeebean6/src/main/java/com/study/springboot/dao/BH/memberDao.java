package com.study.springboot.dao.BH;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.memberDto;

@Mapper
public interface memberDao {

	public List<memberDto> memberList();
	
	
}
