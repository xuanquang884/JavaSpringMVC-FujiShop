package FujiShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import FujiShop.Dto.MapperProductsDto;
import FujiShop.Dto.ProductsDto;
@Repository
public class ProductsDao extends BaseDao {
	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString()
	{
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_sp ");
		sql.append(", p.id_loaisp ");
		sql.append(", p.id_thuonghieu ");
		sql.append(", p.sizes ");
		sql.append(", p.ten ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.tieude ");
		sql.append(", p.sp_noibat ");
		sql.append(", p.sp_new ");
		sql.append(", p.ct_sp ");
		sql.append(", c.id as id_color ");
		sql.append(", c.img ");
		sql.append(", c.name_color ");
		sql.append(", p.ngaytao_sp ");
		sql.append(", p.ngaysua_sp ");
		sql.append("FROM ");
		sql.append("sanpham AS p ");
		sql.append("INNER JOIN ");
		sql.append("color AS c ");
		sql.append("ON p.id = c.id_sp ");
		return sql;
	}
	
	public String SqlProducts(boolean sp_New,boolean sp_Noibat)
	{ 
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1=1 ");
		if (sp_New) {
			sql.append("AND p.sp_new = true ");
		}
		if (sp_Noibat) {
			sql.append("AND p.sp_noibat = true ");
		}
		
		
		
		sql.append(" GROUP BY p.id, c.id_sp ");
		sql.append(" ORDER BY RAND() ");
		if (sp_New) {
			sql.append(" LIMIT 2 ");
		}
		if (sp_Noibat) {
			sql.append(" LIMIT 16 ");
		}
		return sql.toString();
	}
	
	public StringBuffer SqlProductsByID(int id)
	{ 
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append(" AND p.id_loaisp =  "+ id +" ");
		return sql;
	}
	
	public String SqlProductsPaginates(int id, int start, int totalPage)
	{ 
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1=1 ");
		sql.append(" LIMIT  " + start +", "+ totalPage + " ");
		return sql.toString();
	}
	public List<ProductsDto> GetDataSanPhamNew()
	{
		String sql = SqlProducts(YES, NO);
		List<ProductsDto> listsanpham;
		listsanpham =  _jdbcTemplate.query(sql, new MapperProductsDto());
		return listsanpham;
	}
	public List<ProductsDto> GetDataSanPhamNoiBat()
	{
		String sql = SqlProducts(NO, YES);
		List<ProductsDto> listsanpham;
		listsanpham =  _jdbcTemplate.query(sql, new MapperProductsDto());
		return listsanpham;
	}
	
	public List<ProductsDto> GetDataAllProductsByID(int id)
	{
		
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listsanpham;
		listsanpham =  _jdbcTemplate.query(sql, new MapperProductsDto());
		return listsanpham;
	}
	
	public List<ProductsDto> GetDataProductsPaginates(int id, int start, int totalPage)
	{
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID =  _jdbcTemplate.query(sqlGetDataByID.toString(), new MapperProductsDto());
		List<ProductsDto> listProducts =  new ArrayList<ProductsDto>();
		if(listProductsByID.size() > 0)
		{
			String sql = SqlProductsPaginates(id,start,totalPage);
			listProducts =  _jdbcTemplate.query(sql, new MapperProductsDto());
		}
		
		
		return listProducts;
	}

	
	public String SqlProductByID(long id)
	{ 
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append(" AND p.id = "+ id  + " ");
		sql.append(" LIMIT 1 ");
		return sql.toString();
	}
	public List<ProductsDto> GetDataProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct=  _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProduct;
	}
	
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto Product=  _jdbcTemplate.queryForObject(sql, new MapperProductsDto());
		return Product;
	}
}