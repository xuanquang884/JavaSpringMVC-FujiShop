package FujiShop.Service.User;

import org.springframework.stereotype.Service;

import FujiShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	
	public PaginatesDto GetInforPaginates( int totalData,int limit, int currentPage);
}
