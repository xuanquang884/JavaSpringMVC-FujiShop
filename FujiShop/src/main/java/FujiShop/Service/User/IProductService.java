package FujiShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import FujiShop.Dto.ProductsDto;

@Service
public interface IProductService {

	public ProductsDto GetDataProductByID(long id);
	
	public List<ProductsDto> GetDataProductByIDCategory(int id);
}
