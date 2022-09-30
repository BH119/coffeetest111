package com.study.springboot.dao.BH;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.productDto;

@Mapper
public interface productDao {
	
	public List<productDto> productList();
	
	
}
