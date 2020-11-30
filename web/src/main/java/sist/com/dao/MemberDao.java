package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.vo.SellerinfoVO;
import sist.com.vo.UserinfoVo;
import sist.com.vo.ZipcodeBean;

@Repository(value="memberDao")
public class MemberDao extends SqlSessionDaoSupport {

	private static final Logger logger = LoggerFactory.getLogger(MemberDao.class);

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

//유저 회원가입 insert	
	public void insertUserInfo(UserinfoVo vo) {

		this.getSqlSession().insert("insertUserInfo", vo);
	}

//유저 회원가입 아이디 중복확인
	public int idChk(String id) {
		int result = this.getSqlSession().selectOne("idChk", id);
		// 중복아이디 있으면 1 없으면 0
		System.out.println("idCheck result = " + result);
		return result;
	}

//유저 회원가입 주소
	public List<ZipcodeBean> selectAddressUser(String dong) {
		return this.getSqlSession().selectList("selectAddressUser", dong);
	}

//유저 로그인
	public boolean userIdCheck(String id, String password) {
		String dbPass = this.getSqlSession().selectOne("userIdCheck", id);
		return dbPass != null && dbPass.equals(password) ? true : false;
	}

//판매자 로그인
	public boolean sellerIdCheck(String id, String password) {
		String dbPass = this.getSqlSession().selectOne("sellerIdCheck", id);

		return dbPass != null && dbPass.equals(password) ? true : false;
	}

//가입유저 조회
	public List<UserinfoVo> selectUser() {
		return this.getSqlSession().selectList("selectUser");
	}

//가입판매자 조회
	public List<SellerinfoVO> selectSeller() {
		return this.getSqlSession().selectList("selectSeller");
	}

//로그인유저 조회
	public UserinfoVo selectUserInfo(String id){
		return this.getSqlSession().selectOne("selectUserInfo", id);
	}

//판매자 회원가입 중복체크
	public Boolean sellerIdCheck(String id) {
		String dbPass=this.getSqlSession().selectOne("sellerIdCheck", id);
		return dbPass!=null?true:false;
	}

//판매자 회원가입 사업자번호 확인
	public Boolean sellerNumCheck(String num) {
		String dbPass=this.getSqlSession().selectOne("sellerNumCheck", num);
		return dbPass!=null?true:false;
	}

//판매자 회원가입 주소(유저와 중복)
	public List<ZipcodeBean>selectAddress(String dong){
		return this.getSqlSession().selectList("selectAddress", dong);
	}

//판매자 회원가입 insert	
	public void insertSellerInfo(SellerinfoVO vo) {
		this.getSqlSession().insert("insertSellerInfo", vo);
	}

//로그인판매자 조회
	public SellerinfoVO selectSellerInfo(String id) {
		return this.getSqlSession().selectOne("selectSellerInfo", id);
	}
	
}
