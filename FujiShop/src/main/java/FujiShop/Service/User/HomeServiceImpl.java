package FujiShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FujiShop.Dao.LoaiSanPhamDao;
import FujiShop.Dao.MenusDao;
import FujiShop.Dao.ProductsDao;
import FujiShop.Dao.SlidesDao;
import FujiShop.Dto.ProductsDto;
import FujiShop.Entity.LoaiSanPham;
import FujiShop.Entity.Menus;
import FujiShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	public List<Slides> GetDataSlides() {
		// TODO Auto-generated method stub
		return slidesDao.GetDataSlides();
	}

	@Autowired
	private LoaiSanPhamDao loaisp;
	public List<LoaiSanPham> GetDataLoaiSanPham() {
		// TODO Auto-generated method stub
		return loaisp.GetDataLoaiSanPham();
	}
	
	@Autowired
	private MenusDao menudao;
	public List<Menus> GetDataMenus() {
		// TODO Auto-generated method stub
		return menudao.GetDataMenus();
	}
	@Autowired
	private ProductsDao sanphamDao;
	public List<ProductsDto> GetDataSanPhamNew() {
		List<ProductsDto> listSP =  sanphamDao.GetDataSanPhamNew();
		return listSP;
	}
	public List<ProductsDto> GetDataSanPhamNoiBat() {
		List<ProductsDto> listSP =  sanphamDao.GetDataSanPhamNoiBat();
		return listSP;
	}
	public List<ProductsDto> GetDataSanPham() {
		// TODO Auto-generated method stub
		return null;
	}

}
