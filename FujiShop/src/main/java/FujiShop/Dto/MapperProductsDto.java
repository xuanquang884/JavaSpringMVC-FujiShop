package FujiShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProductsDto implements RowMapper<ProductsDto> {
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto sanpham = new ProductsDto();
		sanpham.setId_sp(rs.getLong("id_sp"));
		sanpham.setId_loaisp(rs.getInt("id_loaisp"));
		sanpham.setId_thuonghieu(rs.getInt("id_thuonghieu"));
		sanpham.setSizes(rs.getString("sizes"));
		sanpham.setTen(rs.getString("ten"));
		sanpham.setPrice(rs.getDouble("price"));
		sanpham.setSale(rs.getInt("sale"));
		sanpham.setTieude(rs.getString("tieude"));
		sanpham.setSp_noibat(rs.getBoolean("sp_noibat"));
		sanpham.setSp_new(rs.getBoolean("sp_new"));
		sanpham.setCt_sp(rs.getString("ct_sp"));
		sanpham.setId_color(rs.getLong("id_color"));
		sanpham.setImg(rs.getString("img"));
		sanpham.setName_color(rs.getString("name_color"));
		sanpham.setNgaytao_sp(rs.getDate("ngaytao_sp"));
		sanpham.setNgaysua_sp(rs.getDate("ngaysua_sp"));
		return sanpham;
	}

}
