package FujiShop.Service.User;

import FujiShop.Entity.Users;

public interface IAccountService {
	
	public int AddAccount(Users user);
	public Users  CheckAccount(Users user);
}
