package yolo.myTv.charges.service;

import java.util.List;
import java.util.Map;


public interface ChargeService {
	public void subUpdateCharge(ChargeVO vo);
	public void mainUpdateCharge(ChargeVO vo);
	public void getCharge(ChargeVO vo);
	public void updatePoint(ChargeVO vo);
	public List<Map<String, Object>> getChargeList(ChargeVO vo);
	public List<Map<String, Object>> adminChargeList(ChargeVO vo);
}
