package yolo.myTv.blacklists.service.impl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.blacklists.service.BlacklistVO;

@MapperScan
public interface BlacklistMapper {

	// 블랙리스트 등록
	public void insertBlacklist(BlacklistVO vo);
	
	// 블랙리스트 해제
	public void deleteBlacklist(BlacklistVO vo);
	
	// 특정 방송 블랙리스트 조회
	public List<BlacklistVO> getBlacklistInBroadcast(BlacklistVO vo);
	
	// 특정 방송 블랙리스트 등록 여부 체크
	public int getBlacklistCheck(BlacklistVO vo);
	
	// 전체 블랙리스트 조회
	public List<BlacklistVO> getBlacklistAllList();
	
}
