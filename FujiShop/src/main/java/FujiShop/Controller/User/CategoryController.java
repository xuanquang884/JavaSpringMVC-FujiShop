package FujiShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import FujiShop.Dto.PaginatesDto;
import FujiShop.Service.User.CategoryServiceImpl;
import FujiShop.Service.User.PaginatesServiceImpl;

@Controller
public class CategoryController extends BaseController{
	
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	private int totalProductsPage = 9;
	@RequestMapping("/san-pham/{id}")
	public ModelAndView Sanpham(@PathVariable String id)
	{
		_mvShare.addObject("loaisanpham", _homeService.GetDataLoaiSanPham());
		int totalData = categoryService.GetDataAllSanPhamByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginatesService.GetInforPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginates", categoryService.GetDataSanPhamPaginates(Integer.parseInt(id), paginateInfo.getStart(),totalProductsPage));
		_mvShare.setViewName("user/Sanpham/loaiSP");
		return _mvShare;
	}
	
	@RequestMapping("/san-pham/{id}/{currentPage}")
	public ModelAndView Sanpham(@PathVariable String id,@PathVariable int currentPage)
	{
		_mvShare.addObject("loaisanpham", _homeService.GetDataLoaiSanPham());
		int totalData = categoryService.GetDataAllSanPhamByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginatesService.GetInforPaginates(totalData, totalProductsPage, currentPage);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginates", categoryService.GetDataSanPhamPaginates(Integer.parseInt(id),paginateInfo.getStart(),totalProductsPage));
		_mvShare.setViewName("user/Sanpham/loaiSP");
		return _mvShare;
	}
	

}
