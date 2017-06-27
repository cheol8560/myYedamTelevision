package yolo.myTv.main;

import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface MainMapper {
	
	MainVO sumInfo(MainVO mainvo);

}
