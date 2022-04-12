package FujiShop.Dto;

import java.sql.Date;

public class ProductsDto {
	private long id_sp;
	private int id_loaisp;
	private int id_thuonghieu;
	private String sizes;
	private String ten;
	private double price;
	private int sale;
	private String tieude;
	private boolean sp_noibat;
	private boolean sp_new;
	private String ct_sp;
	private long id_color;
	private String img;
	private String name_color;
	private Date ngaytao_sp;
	private Date ngaysua_sp;

	public void setName_color(String name_color) {
		this.name_color = name_color;
	}


	
	public ProductsDto() {
		super();
	}

	public long getId_sp() {
		return id_sp;
	}

	public void setId_sp(long id_sp) {
		this.id_sp = id_sp;
	}

	public int getId_loaisp() {
		return id_loaisp;
	}

	public void setId_loaisp(int id_loaisp) {
		this.id_loaisp = id_loaisp;
	}

	public int getId_thuonghieu() {
		return id_thuonghieu;
	}

	public void setId_thuonghieu(int id_thuonghieu) {
		this.id_thuonghieu = id_thuonghieu;
	}

	public String getSizes() {
		return sizes;
	}

	public void setSizes(String sizes) {
		this.sizes = sizes;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getTieude() {
		return tieude;
	}

	public void setTieude(String tieude) {
		this.tieude = tieude;
	}

	public boolean isSp_noibat() {
		return sp_noibat;
	}

	public void setSp_noibat(boolean sp_noibat) {
		this.sp_noibat = sp_noibat;
	}

	public boolean isSp_new() {
		return sp_new;
	}

	public void setSp_new(boolean sp_new) {
		this.sp_new = sp_new;
	}

	public String getCt_sp() {
		return ct_sp;
	}

	public void setCt_sp(String ct_sp) {
		this.ct_sp = ct_sp;
	}

	public long getId_color() {
		return id_color;
	}

	public void setId_color(long id_color) {
		this.id_color = id_color;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getNgaytao_sp() {
		return ngaytao_sp;
	}

	public void setNgaytao_sp(Date ngaytao_sp) {
		this.ngaytao_sp = ngaytao_sp;
	}

	public Date getNgaysua_sp() {
		return ngaysua_sp;
	}

	public void setNgaysua_sp(Date ngaysua_sp) {
		this.ngaysua_sp = ngaysua_sp;
	}
	public String getName_color() {
		return name_color;
	}

}
