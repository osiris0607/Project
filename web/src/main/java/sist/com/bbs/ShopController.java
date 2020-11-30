package sist.com.bbs;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

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
	
	/*
	 * @RequestMapping(value="userMain.do") public String userListAction(Model
	 * model) { model.addAttribute("uList", dao.selectUser()); return
	 * "view/user/main";
	}
	 */
	
	@RequestMapping(value="userMain.do")
	public String loginedUser(Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("id");
		System.out.println("id = " + id);
		
		session.setAttribute("userInfo", dao.selectUserInfo(id));
		return "redirect:/view/user/main.jsp";
	}
	
	@RequestMapping(value="sellerMain.do")
	public String sellerListAction(Model model) {
		model.addAttribute("sList", dao.selectSeller());
		
		return "view/user/main"; //sellerPage만들어지면 바꾸우우우우우우우기
	}
	
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public String logoutAction(HttpSession session) {
		//String id = (String)session.getAttribute("id");
		//System.out.println("logout id = " + id);
		session.removeAttribute("id");
		return "view/user/main";
	}
	
}
