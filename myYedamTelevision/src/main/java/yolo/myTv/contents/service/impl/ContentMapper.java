package yolo.myTv.contents.service.impl;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import yolo.myTv.contents.service.ContentVO;

@MapperScan("contentMapper")
public interface ContentMapper {

	public void insertContent(ContentVO vo);
	
	public void updateContent(ContentVO vo);

	public void deleteContent(ContentVO vo);
	
	public ContentVO getContent(ContentVO vo);
	
	public List<ContentVO> getContentList(ContentVO vo);
	
	int countContent(ContentVO countvo);
}
