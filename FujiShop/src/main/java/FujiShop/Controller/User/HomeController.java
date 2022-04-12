package FujiShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value={"/","/trang-chu"})
	public ModelAndView Index()
	{
//		ModelAndView mv = new ModelAndView("user/index");
		_mvShare.addObject("slides", _homeService.GetDataSlides());
		_mvShare.addObject("loaisanpham", _homeService.GetDataLoaiSanPham());
		_mvShare.addObject("sp_New", _homeService.GetDataSanPhamNew());
		_mvShare.addObject("sp_Noibat", _homeService.GetDataSanPhamNoiBat());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
}
