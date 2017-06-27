package yolo.myTv.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("mainService")
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainMapper mainDAO;

	public MainVO sumInfo(MainVO mainvo) {
		return mainDAO.sumInfo(mainvo);
	}
	

}
