package com.kh.gonggan.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.gonggan.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public MemberDao(){}

	public Member loginCheck(Member loginVo) {
		//System.out.println("dao: selectLogin run...");
		return (Member) sqlSession.selectOne("membermapper.loginSelect", loginVo);
	}
	
	public int insertMember(Member mem){
		return sqlSession.insert("membermapper.minsert", mem);
	}//회원 등록
	
	public List<Member> memberList(){
		return (List<Member>) sqlSession.selectList("membermapper.mlist");
	}//회원 전제 조회
	
	public Member selectMember(String memberId){
		return (Member) sqlSession.selectOne("membermapper.selectMember", memberId);
	}//회원 정보 상세 조회
	
	public int deleteMember(String memberId)
	{
		return sqlSession.delete("membermapper.mdelete", memberId);
	}//회원 정보 삭제
	
	public int updateMember(Member mem){
		return sqlSession.update("membermapper.mupdate", mem);
	}//회원 정보 수정
	
	public Member selectId(String email){
		return (Member) sqlSession.selectOne("membermapper.selectId", email);
	}//아이디 찾기
/*	
	public Member selectPw(String memberId, String email){
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("memberId", memberId);
		map.put("email", email);
	//	return (Member) sqlSession.selectOne("membermapper.selectPw", map);
	}//비밀번호 찾기
*/
	public int requestNeig(String memberId) {
		// TODO Auto-generated method stub
		return  sqlSession.insert("membermapper.requestNeig", memberId);
	}

	public int checkNeig(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.update("membermapper.checkNeig", memberId);
	}//...?몰까여...이웃신청 수락 거절

	public List<Member> neigList() {
		// TODO Auto-generated method stub
		return (List<Member>) sqlSession.selectList("membermapper.neigList");
	}

	public String getPw(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return ((Member)(sqlSession.selectOne("membermapper.selectPw", paramMap))).getMember_pw();
	}



}
