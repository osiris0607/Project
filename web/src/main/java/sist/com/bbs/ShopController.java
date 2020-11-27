package sist.com.bbs;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.dao.MemberDao;
import sist.com.vo.UserinfoVo;

@Controller
public class ShopController {
	@Resource(name = "memberDao")
	private MemberDao dao;
	
	
	@RequestMapping(value="memberJoin.do")
	public String insertUserAction(UserinfoVo vo, HttpSession session) {
		System.out.println("매핑왔음");
		System.out.println("vo = " + vo);
		session.setAttribute("member", vo);
		dao.insertUserInfo(vo);
		return "redirect:/view/user/joinSuccess.jsp";
				
	}
	
	
	
}
