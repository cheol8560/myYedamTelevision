package yolo.myTv.charges.service.impl;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.charges.service.ChargeVO;

@MapperScan
public interface ChargeMapper {
	public void subUpdateCharge(ChargeVO vo);
	public void mainUpdateCharge(ChargeVO vo);
	public void getCharge(ChargeVO vo);
	public void updatePoint(ChargeVO vo);
}
