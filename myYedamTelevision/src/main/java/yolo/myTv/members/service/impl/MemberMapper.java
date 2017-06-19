package yolo.myTv.members.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.members.service.MemberVO;

@MapperScan
public interface MemberMapper {
	public void insertMember(MemberVO vo);
	public void updateMember(MemberVO vo);
	public void deleteMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public List<Map<String,Object>> 
    			getMemberList(MemberVO vo);
	public List<MemberVO> getMemberListVO(MemberVO vo);
	public void updatePoint(MemberVO vo, int point);
	public int chkDupId(MemberVO vo);
	public int chkDupNick(MemberVO vo);
	public int chkDupMail(MemberVO vo);
	public void updateAdmin(MemberVO vo);
}