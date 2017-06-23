package yolo.myTv.blacklists.service;

import java.util.List;
import java.util.Map;

public interface BlacklistService {

	// 블랙리스트 등록
	void insertBlacklist(BlacklistVO vo);
	
	// 블랙리스트 해제
	void deleteBlacklist(BlacklistVO vo);

	// 블랙리스트 목록
	List<Map<String, Object>> getBlacklistList(BlacklistVO vo);
	
}
