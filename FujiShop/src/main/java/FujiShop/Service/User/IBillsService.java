package FujiShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import FujiShop.Dto.CartDto;
import FujiShop.Entity.Bills;

@Service
public interface IBillsService {

	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
