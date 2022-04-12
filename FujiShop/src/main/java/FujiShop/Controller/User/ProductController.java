package FujiShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import FujiShop.Service.User.IProductService;

@Controller
public class ProductController extends BaseController{

	@Autowired
	public IProductService _productService;
	@RequestMapping(value= {"chi-tiet-san-pham/{id}"})
	public ModelAndView Index(@PathVariable long id)
	{
		_mvShare.setViewName("user/Products/product");
		_mvShare.addObject("product", _productService.GetDataProductByID(id));
		int idCategory = _productService.GetDataProductByID(id).getId_loaisp();
		
		_mvShare.addObject("productByIDCategory", _productService.GetDataProductByIDCategory(idCategory));
		return _mvShare;
	}
}
