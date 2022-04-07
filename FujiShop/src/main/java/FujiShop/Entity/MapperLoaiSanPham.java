package FujiShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperLoaiSanPham implements RowMapper<LoaiSanPham> {

	public LoaiSanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		LoaiSanPham loaisp = new LoaiSanPham();
		loaisp.setId(rs.getInt("id"));
		loaisp.setTen_loai(rs.getString("ten_loai"));
		loaisp.setMota(rs.getString("mota"));
		loaisp.setImg(rs.getString("img"));
		return loaisp;
	}
}
