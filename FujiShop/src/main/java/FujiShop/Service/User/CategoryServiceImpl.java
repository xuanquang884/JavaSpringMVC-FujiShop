package FujiShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FujiShop.Dao.ProductsDao;
import FujiShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao sanphamDao;
	
	public List<ProductsDto> GetDataProductsPaginates(int id, int start, int totalPage)
	{
		List<ProductsDto> sanpham = sanphamDao.GetDataProductsPaginates(id, start, totalPage);
		return sanpham;
	}

	public List<ProductsDto> GetDataAllProductsByID(int id) {
		return sanphamDao.GetDataAllProductsByID(id);
	}
}
