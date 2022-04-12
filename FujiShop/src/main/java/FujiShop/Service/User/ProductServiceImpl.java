package FujiShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FujiShop.Dao.ProductsDao;
import FujiShop.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService{

	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	public ProductsDto GetDataProductByID(long id) {
		List<ProductsDto> listProducts = productDao.GetDataProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDto> GetDataProductByIDCategory(int id) {
		
		return productDao.GetDataAllProductsByID(id);
	}

}
