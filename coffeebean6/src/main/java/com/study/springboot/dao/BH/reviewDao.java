package com.study.springboot.dao.BH;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.reviewDto;

@Mapper
public interface reviewDao {

	public List<reviewDto> reviewList();
}
