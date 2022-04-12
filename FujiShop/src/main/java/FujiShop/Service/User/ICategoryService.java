package FujiShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import FujiShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	
	
	public List<ProductsDto> GetDataAllProductsByID(int id);
	
	public List<ProductsDto> GetDataProductsPaginates( int id,int start, int end);
}
