package yolo.myTv.broadcasts.service.impl;

import java.util.*;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.broadcasts.service.BroadcastVO;

@MapperScan
public interface BroadcastMapper {

	public void insertBroadcast(BroadcastVO vo);
	
	public void deleteBroadcast(BroadcastVO vo);
	
	public void updateBroadcast(BroadcastVO vo);
	
	public BroadcastVO getBroadcast(BroadcastVO vo); 
	
	public List<Map<String, Object>> getBroadcastList(BroadcastVO vo);
	
}
