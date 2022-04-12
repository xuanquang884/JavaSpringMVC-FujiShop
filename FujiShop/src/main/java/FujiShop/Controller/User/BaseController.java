package FujiShop.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import FujiShop.Service.User.HomeServiceImpl;

public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	
	@PostConstruct
	public ModelAndView Init()
	{
		_mvShare.addObject("menus", _homeService.GetDataMenus());
		_mvShare.addObject("loaisanpham", _homeService.GetDataLoaiSanPham());
		return _mvShare;
	}
}
