package sist.com.bbs;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import sist.com.dao.MemberDao;
import sist.com.vo.ZipcodeBean;

@RestController
public class JsonController {
	@Resource(name = "memberDao")
	private MemberDao dao;
//UserJoin
	@RequestMapping(value = "zipcodeSearch.do", method = { RequestMethod.POST, RequestMethod.GET })
	public List<ZipcodeBean> searchAddressAction(
			@RequestParam(value = "dong", required = false, defaultValue = "") String dong) {
		System.out.println("매퍼왔음");
		System.out.println("dong = " + dong);

		return dao.selectAddressUser(dong);
	}
	@RequestMapping(value = "idCheck.do", method = { RequestMethod.POST, RequestMethod.GET })
	public int idChkAction(@RequestParam(value = "id", required = false, defaultValue = "") String id) {
		// data : id값이 들어옴
		System.out.println("id = " + id);
		// int Check = dao.idChk(id); //return 1 또는 0
		// System.out.println("Check = " + Check);
		return dao.idChk(id); // ajax data값
	}
//Login
	@RequestMapping(value = "userlogin.do")
	public String userloginAction(@RequestParam(value = "id", required = false, defaultValue = "") String id,
									String password, HttpSession session) {
		System.out.println("로그인 매퍼 왔니?");
		if (dao.userIdCheck(id, password)) {
			session.setAttribute("userid", id);
			session.setMaxInactiveInterval(100);
			return "sucess";
		} else {
			return "fail";
		}	
	}
	@RequestMapping(value="sellerlogin.do")
	public String sellerloginAction(@RequestParam(value="id", required=false, defaultValue="")String id, String password, HttpSession session) {
		System.out.println("넘어온 아디비번 : " + id+" "+password);
		//System.out.println(dao.sellerIdCheck(id, password)?"success":"fail");
		
		//return dao.sellerIdCheck(id, password)?"success":"fail";
		
		if(dao.sellerIdCheck(id, password)) {
			session.setAttribute("sellerid", id);
			session.setMaxInactiveInterval(100);
			
			return "sucess";
		} else {
			return "fail";
		}
	}
//SellerJoin
	@RequestMapping(value="sellerIdCheck.do")
	public String sellerIdCheckAction(@RequestParam(value="id",required=false) String id) {
		return dao.sellerIdCheck(id)?"fail":"success";
	}
	@RequestMapping(value="sellerNumCheck.do")
	public String sellerNumCheckAction(@RequestParam(value="num",required=false) String num) {
		return dao.sellerNumCheck(num)?"fail":"success";
	}	
	@RequestMapping(value="zipcodeSearch.do")
	public List<ZipcodeBean> zipcodeSearch(String dong) {
		List<ZipcodeBean>list=new ArrayList<ZipcodeBean>();
		list=dao.selectAddress(dong);
		return list;
	}
	//AdminLogin 세션저장
		@RequestMapping(value="adminLogin.do")
		public String adminLoginSession(HttpSession session, String id) {
			System.out.println("어드민로그인 매핑");
			session.setAttribute("adminid", id);
			session.setMaxInactiveInterval(100);

			return "SessionSave";
		}
		
		
		@RequestMapping(value="selectTitle.do")
		public ArrayList<String> bigTitle(){
			ArrayList<String> list = new ArrayList<String>();
			list = (ArrayList<String>) dao.selectTitleName();
			System.out.println("list = " + list);
			
			return list; 
		}
		
}
