package yolo.myTv.members.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.members.service.MemberService;
import yolo.myTv.members.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper MemberDAO;
	
	public void insertMember(MemberVO vo) {
		MemberDAO.insertMember(vo);
	}
	public void updateMember(MemberVO vo) {
		MemberDAO.updateMember(vo);
	}
	public void deleteMember(MemberVO vo) {
		MemberDAO.deleteMember(vo);
	}
	public void updatePoint(MemberVO vo, int point) {
		MemberDAO.updatePoint(vo, point);
	}
	
	public MemberVO getMember(MemberVO vo) {
		return MemberDAO.getMember(vo);
	}
	public List<Map<String, Object>> getUserList(MemberVO vo) {
		return MemberDAO.getMemberList(vo);
	}
	public List<MemberVO> getUserListVO(MemberVO vo) {
		return MemberDAO.getMemberListVO(vo);
	}
	
	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO result = MemberDAO.getMember(vo);
		if (result.getPassword() != null) {
			if (result.getPassword().equals(vo.getPassword())) {
				return result;
			}
		}
		return null;
	}
	
	@Override
	public List<Map<String, Object>> getMemberList(MemberVO vo) {
		return MemberDAO.getMemberList(vo);
	}
	@Override
	public int chkDupId(MemberVO vo) {
		return MemberDAO.chkDupId(vo);
	}
	@Override
	public int chkDupNick(MemberVO vo) {
		return MemberDAO.chkDupNick(vo); 
	}
	@Override
	public void updateAdmin(MemberVO vo) {
		MemberDAO.updateAdmin(vo);
	}
	@Override
	public int chkDupMail(MemberVO vo) {
		return MemberDAO.chkDupMail(vo);
	}
	@Override
	public void adminChangePw(MemberVO vo) {
		MemberDAO.adminChangePw(vo);
	}
	@Override
	public List<Map<String, Object>> getLeaveList(MemberVO vo) {
		return MemberDAO.getLeaveList(vo);
	}

}