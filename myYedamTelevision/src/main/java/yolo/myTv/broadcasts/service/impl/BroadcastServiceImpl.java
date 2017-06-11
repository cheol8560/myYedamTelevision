package yolo.myTv.broadcasts.service.impl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.broadcasts.service.BroadcastService;
import yolo.myTv.broadcasts.service.BroadcastVO;

@Service("broadcastService")
public class BroadcastServiceImpl implements BroadcastService {

	@Autowired
	private BroadcastMapper broadcastMapper;
	
	// 방송 등록
	@Override
	public void insertBroadcast(BroadcastVO vo) {
		broadcastMapper.insertBroadcast(vo);
	}

	// 방송 수정
	@Override
	public void updateBroadcast(BroadcastVO vo) {
		broadcastMapper.updateBroadcast(vo);
	}

	// 방송 삭제
	@Override
	public void deleteBroadcast(BroadcastVO vo) {
		broadcastMapper.deleteBroadcast(vo);
	}	
	
	// 방송 조회
	@Override
	public BroadcastVO getBroadcast(BroadcastVO vo) {
		return broadcastMapper.getBroadcast(vo);
	}

	// 방송 전체 조회
	@Override
	public List<Map<String, Object>> getBroadcastList(BroadcastVO vo) {
		return broadcastMapper.getBroadcastList(vo);
	}
	
}
