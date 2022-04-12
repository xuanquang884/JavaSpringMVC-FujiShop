package FujiShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FujiShop.Dao.BillsDao;
import FujiShop.Dto.CartDto;
import FujiShop.Entity.BillDetail;
import FujiShop.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillsService{

	
	@Autowired
	private BillsDao billsDao; 
	
	public int AddBills(Bills bill) {
		
		return billsDao.AddBills(bill);
	}

	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		
		long idBills = billsDao.GetIDLastBills();
		
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet())
		{
			BillDetail billDetail = new BillDetail();
			
			billDetail.setId_bills(idBills);
			billDetail.setId_sp(itemCart.getValue().getProduct().getId_sp());
			
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}

	
}
