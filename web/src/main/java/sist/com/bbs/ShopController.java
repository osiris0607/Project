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
import sist.com.vo.SellerinfoVO;
import sist.com.vo.UserinfoVo;

@Controller
public class ShopController {
	@Resource(name = "memberDao")
	private MemberDao dao;
	
//UserJoin
	@RequestMapping(value="memberJoin.do")
	public String insertUserAction(UserinfoVo vo, HttpSession session) {
		System.out.println("매핑왔음");
		System.out.println("vo = " + vo);
		session.setAttribute("member", vo);
		dao.insertUserInfo(vo);
		return "redirect:/view/user/joinSuccess.jsp";
				
	}

//Login
	
	
	@RequestMapping(value="viewUserList.do", method = { RequestMethod.POST, RequestMethod.GET }) 
	public String userListAction(Model model) { 
		System.out.println("매핑됐냐");
		model.addAttribute("uList", dao.selectUser()); 
		return "view/admin/adminMemberMain";
	}
	 
	
	@RequestMapping(value="userMain.do")
	public String loginedUser(Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("userid");
		System.out.println("user id = " + id);
		
		session.setAttribute("userInfo", dao.selectUserInfo(id));
		return "redirect:/view/user/main.jsp";
	}
	
	/*
	 * @RequestMapping(value="sellerMain.do") public String sellerListAction(Model
	 * model) { model.addAttribute("sList", dao.selectSeller());
	 * 
	 * return "view/user/main"; //sellerPage만들어지면 바꾸우우우우우우우기 }
	 */
	
	@RequestMapping(value="sellerMain.do")
	public String loginedSeller(Model model, HttpSession session) {
		String id = (String)session.getAttribute("sellerid");
		System.out.println("seller id = " + id);
		
		session.setAttribute("sellerInfo", dao.selectSellerInfo(id));
		return "redirect:/view/seller/sellerNoticeMain.jsp";
	}
	
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public String logoutAction(HttpSession session) {
		//String id = (String)session.getAttribute("id");
		//System.out.println("logout id = " + id);
		session.removeAttribute("userid");
		session.removeAttribute("sellerid");
		session.removeAttribute("amdinid");
		return "view/user/main";
	}
	
	
//SellerJoin	
	@RequestMapping(value="sellerJoin.do")
	public String insertSellerAction(SellerinfoVO vo, HttpSession session) {
		dao.insertSellerInfo(vo);
		return "redirect:/view/user/main.jsp";
	}
	
	

}
