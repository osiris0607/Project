package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import sist.com.vo.SellerinfoVO;
import sist.com.vo.UserinfoVo;
import sist.com.vo.ZipcodeBean;

public class MemberDao extends SqlSessionDaoSupport {

	private static final Logger logger = LoggerFactory.getLogger(MemberDao.class);

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void insertUserInfo(UserinfoVo vo) {

		this.getSqlSession().insert("insertUserInfo", vo);
	}

	public int idChk(String id) {
		int result = this.getSqlSession().selectOne("idChk", id);
		// 중복아이디 있으면 1 없으면 0
		System.out.println("idCheck result = " + result);
		return result;
	}

	public List<ZipcodeBean> selectAddress(String dong) {
		return this.getSqlSession().selectList("selectAddress", dong);
	}

	public boolean userIdCheck(String id, String password) {
		String dbPass = this.getSqlSession().selectOne("userIdCheck", id);
		return dbPass != null && dbPass.equals(password) ? true : false;
	}

	public boolean sellerIdCheck(String id, String password) {
		String dbPass = this.getSqlSession().selectOne("sellerIdCheck", id);

		return dbPass != null && dbPass.equals(password) ? true : false;
	}

	public List<UserinfoVo> selectUser() {
		return this.getSqlSession().selectList("selectUser");
	}

	public List<SellerinfoVO> selectSeller() {
		return this.getSqlSession().selectList("selectSeller");
	}
	
	public List<UserinfoVo> selectUserInfo(String id){
		return this.getSqlSession().selectList("selectUserInfo", id);
	}
}
