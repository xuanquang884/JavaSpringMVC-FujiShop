package FujiShop.Entity;

public class LoaiSanPham {
	private int id;
	private String ten_loai;
	private String mota;
	private String img;
	public LoaiSanPham() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen_loai() {
		return ten_loai;
	}
	public void setTen_loai(String ten_loai) {
		this.ten_loai = ten_loai;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
