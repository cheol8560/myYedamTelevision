package yolo.myTv.translatePoints.service.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.translatePoints.service.TranslatePointVO;

@MapperScan
public interface TranslatePointMapper {
	public List<Map<String, Object>> totalPoint(TranslatePointVO vo);

}
