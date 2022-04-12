package FujiShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FujiShop.Entity.LoaiSanPham;
import FujiShop.Entity.Menus;
import FujiShop.Entity.Slides;
@Service
public interface IHomeService {
	
	@Autowired
	public List<Slides> GetDataSlides();
	public List<LoaiSanPham> GetDataLoaiSanPham();
	public List<Menus> GetDataMenus();
//	public List<ProductsDto> GetDataSanPham();
}
