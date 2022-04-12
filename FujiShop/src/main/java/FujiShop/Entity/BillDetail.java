package FujiShop.Entity;

public class BillDetail {

	private long id;
	private long id_sp;
	private long id_bills; 
	private int quanty;
	private double total;
	
	public BillDetail() {
		super();
	}
	public long getId_bills() {
		return id_bills;
	}
	public void setId_bills(long id_bills) {
		this.id_bills = id_bills;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getId_sp() {
		return id_sp;
	}
	public void setId_sp(long id_sp) {
		this.id_sp = id_sp;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}

	
}
