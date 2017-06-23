package yolo.myTv.blacklists.service.impl;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.blacklists.service.BlacklistVO;

@MapperScan
public interface BlacklistMapper {

	// 블랙리스트 등록
	public void insertBlacklist(BlacklistVO vo);
	
	// 블랙리스트 해제
	public void deleteBlacklist(BlacklistVO vo);
	
	// 블랙리스트 조회
	public void getBlacklistList(BlacklistVO vo);
	
}
