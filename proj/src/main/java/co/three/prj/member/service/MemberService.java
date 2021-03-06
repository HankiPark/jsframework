package co.three.prj.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> selectMemberList();
	MemberVO selectMember(MemberVO vo);
	int insertMember(MemberVO vo);
	int updateMember(MemberVO vo);
	int deleteMember(MemberVO vo);
	int ackMember(MemberVO vo);
	int selectMemberCk(String id);
	
}
