package FujiShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import FujiShop.Entity.Users;
import FujiShop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value="/dang-ky",method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user",new Users());
		return _mvShare;
	}
	
	@RequestMapping(value="/dang-ky",method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count =  accountService.AddAccount(user);
		if(count > 0 ) {
			_mvShare.addObject("status","Đăng kí tài khoản thành công!");
		}
		else {
			_mvShare.addObject("status","Đăng kí tài khoản thất bại!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}
	
	@RequestMapping(value="/dang-nhap",method = RequestMethod.POST)
	public ModelAndView Login( HttpSession session,@ModelAttribute("user") Users user) {
		user  = accountService.CheckAccount(user);
		if(user != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfor", user);
		}
		else {
			_mvShare.addObject("statusLogin","Đăng nhập tài khoản thất bại!");
		}
		
		return _mvShare;
	}
	@RequestMapping(value="/dang-xuat",method = RequestMethod.GET)
	public String Login( HttpSession session,HttpServletRequest request) {
		
		session.removeAttribute("LoginInfor");
		return "redirect:" + request.getHeader("Referer");
	}
	
	
}
