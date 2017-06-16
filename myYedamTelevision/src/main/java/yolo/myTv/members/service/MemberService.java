package yolo.myTv.members.service;

import java.util.List;
import java.util.Map;


public interface MemberService {
	public void insertMember(MemberVO vo);
	public void updateMember(MemberVO vo);
	public void deleteMember(MemberVO vo);
	public MemberVO getMember(MemberVO vo);
	public List<Map<String,Object>> 
    getMemberList(MemberVO vo);
	public MemberVO login(MemberVO vo);
	public void updatePoint(MemberVO vo, int point);
	public int chkDupId(MemberVO vo);
	public int chkDupNick(MemberVO vo);
	public void updateAdmin(MemberVO vo);
}