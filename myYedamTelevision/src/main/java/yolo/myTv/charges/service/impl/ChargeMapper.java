package yolo.myTv.charges.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.charges.service.ChargeVO;

@MapperScan
public interface ChargeMapper {
	public void subUpdateCharge(ChargeVO vo);
	public void mainUpdateCharge(ChargeVO vo);
	public void getCharge(ChargeVO vo);
	public void updatePoint(ChargeVO vo);
	public List<Map<String, Object>> getChargeList(ChargeVO vo);
	public List<Map<String, Object>> adminChargeList(ChargeVO vo);
	int getChargeListCount(ChargeVO vo);
}
