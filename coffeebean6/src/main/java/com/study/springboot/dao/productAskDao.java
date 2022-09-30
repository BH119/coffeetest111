package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.productAskDto;

@Mapper
public interface productAskDao {

	public List<productAskDto> productAskList();
	
}
