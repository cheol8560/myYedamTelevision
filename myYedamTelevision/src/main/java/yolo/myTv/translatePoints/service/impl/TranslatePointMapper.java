package yolo.myTv.translatePoints.service.impl;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.translatePoints.service.TranslatePointVO;

@MapperScan
public interface TranslatePointMapper {
	public void getTranslatePoint(TranslatePointVO vo);

}
