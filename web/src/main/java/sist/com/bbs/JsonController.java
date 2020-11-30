package sist.com.bbs;

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

@Controller
public class JsonController {
	@Resource(name = "memberDao")
	private MemberDao dao;

	@RequestMapping(value = "zipcodeSearch.do", method = { RequestMethod.POST, RequestMethod.GET })
	public @ResponseBody List<ZipcodeBean> searchAddressAction(
			@RequestParam(value = "dong", required = false, defaultValue = "") String dong) {
		System.out.println("매퍼왔음");
		System.out.println("dong = " + dong);

		return dao.selectAddress(dong);
	}

	@RequestMapping(value = "idCheck.do", method = { RequestMethod.POST, RequestMethod.GET })
	public @ResponseBody int idChkAction(@RequestParam(value = "id", required = false, defaultValue = "") String id) {
		// data : id값이 들어옴

		System.out.println("id = " + id);

		// int Check = dao.idChk(id); //return 1 또는 0
		// System.out.println("Check = " + Check);

		return dao.idChk(id); // ajax data값
	}

	@RequestMapping(value = "userlogin.do")
	public @ResponseBody String userloginAction(@RequestParam(value = "id", required = false, defaultValue = "") String id,
									String password, HttpSession session) {
		System.out.println("로그인 매퍼 왔니?");
		if (dao.userIdCheck(id, password)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(100);

			return "sucess";
		} else {
			return "fail";
		}

	}
}
