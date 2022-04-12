package FujiShop.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import FujiShop.Dto.CartDto;
import FujiShop.Entity.Bills;
import FujiShop.Entity.Users;
import FujiShop.Service.User.BillsServiceImpl;
import FujiShop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController{

	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	private BillsServiceImpl billsService; 
	
	
	@RequestMapping(value= {"ListCart"})
	public ModelAndView Index()
	{
//		ModelAndView mv = new ModelAndView("user/index");
		_mvShare.addObject("slides", _homeService.GetDataSlides());
		_mvShare.addObject("loaisanpham", _homeService.GetDataLoaiSanPham());
		_mvShare.addObject("sp_New", _homeService.GetDataSanPhamNew());
		_mvShare.addObject("sp_Noibat", _homeService.GetDataSanPhamNoiBat());
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}
	
	@RequestMapping(value= {"AddCart/{id}"})
	public String AddCart(HttpServletRequest request, HttpSession session,@PathVariable long id )
	{
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart)); 
//		return "redirect:/chi-tiet-san-pham/"+id;
		return "redirect:" + request.getHeader("Referer");
	}
	@RequestMapping(value= {"EditCart/{id}/{quanty}"})
	public String EditCart(HttpServletRequest request, HttpSession session,@PathVariable long id,@PathVariable int quanty )
	{
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		
			 cart = cartService.EditCart(id,quanty, cart); 
			 session.setAttribute("Cart", cart);
			 session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
			 session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart)); 
			 return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value= {"DeleteCart/{id}"})
	public String DeleteCart(HttpServletRequest request, HttpSession session,@PathVariable long id )
	{
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart)); 
//		return "redirect:/chi-tiet-san-pham/"+id;
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value="/checkout",method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session)
	{
		_mvShare.setViewName("user/bills/checkout");
		Bills bills = new Bills();
		Users loginInfo = (Users)session.getAttribute("LoginInfor");
		if(loginInfo != null)
		{
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setUser(loginInfo.getUser());
		}
		_mvShare.addObject("bills" , bills);
		return _mvShare;
	}
	
	@RequestMapping(value="/checkout",method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session ,@ModelAttribute("bills") Bills bill)
	{

		Integer str1 = (Integer) session.getAttribute("TotalQuantyCart");
		bill.setQuanty(str1);
		Double str2 = (Double) session.getAttribute("TotalPriceCart");
		bill.setTotal(str2);
		if (billsService.AddBills(bill) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			billsService.AddBillsDetail(carts);
			
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalPriceCart");
		return "redirect:ListCart";
	}
	
}
