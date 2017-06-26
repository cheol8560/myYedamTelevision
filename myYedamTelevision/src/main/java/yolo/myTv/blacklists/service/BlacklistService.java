package yolo.myTv.blacklists.service;

import java.util.List;
import java.util.Map;

public interface BlacklistService {

	// 블랙리스트 등록
	void insertBlacklist(BlacklistVO vo);
	
	// 블랙리스트 해제
	void deleteBlacklist(BlacklistVO vo);

	// 특정 방송 블랙리스트 목록
	List<BlacklistVO> getBlacklistInBroadcast(BlacklistVO vo);
	
	// 특정 방송 블랙리스트 여부 체크
	int getBlacklistCheck(BlacklistVO vo);
	
	// 전체 블랙리스트 목록
	List<BlacklistVO> getBlacklistAllList();
	
}
