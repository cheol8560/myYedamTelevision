package yolo.myTv.blacklists.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.blacklists.service.BlacklistService;
import yolo.myTv.blacklists.service.BlacklistVO;

@Service("blacklistService")
public class BlacklistServiceImpl implements BlacklistService {

	@Autowired  BlacklistMapper blacklistMapper;
	
	@Override
	public void insertBlacklist(BlacklistVO vo) {
		blacklistMapper.insertBlacklist(vo);
	}

	@Override
	public void deleteBlacklist(BlacklistVO vo) {
		blacklistMapper.deleteBlacklist(vo);
	}

	@Override
	public List<BlacklistVO> getBlacklistInBroadcast(BlacklistVO vo) {
		return blacklistMapper.getBlacklistInBroadcast(vo);
	}

	@Override
	public int getBlacklistCheck(BlacklistVO vo) {
		return blacklistMapper.getBlacklistCheck(vo);
	}
	
	@Override
	public List<BlacklistVO> getBlacklistAllList() {
		return blacklistMapper.getBlacklistAllList();
	}

	
	
	
}
