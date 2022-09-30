package com.study.springboot.dao.BH;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.ordersDto;

@Mapper
public interface ordersDao {

	public List<ordersDto> ordersList();

	
	
}
