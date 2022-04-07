package FujiShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import FujiShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	
	
	public List<ProductsDto> GetDataAllSanPhamByID(int id);
	
	public List<ProductsDto> GetDataSanPhamPaginates( int id,int start, int end);
}
