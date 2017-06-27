package yolo.myTv.broadcasts.service;

import java.util.*;

public interface BroadcastService {

	// 방송 등록
	void insertBroadcast(BroadcastVO vo);
	
	// 방송 수정
	void updateBroadcast(BroadcastVO vo);
	
	// 방송 삭제
	void deleteBroadcast(BroadcastVO vo);
	
	// 방송 상세 조회
	BroadcastVO getBroadcast(BroadcastVO vo);
	
	// 방송 전체 조회
	List<Map<String, Object>> getBroadcastList(BroadcastVO vo);
	
	// 방송 내 방송 목록 조회
	List<Map<String, Object>> getExceptBroadcastList(BroadcastVO vo);
}
