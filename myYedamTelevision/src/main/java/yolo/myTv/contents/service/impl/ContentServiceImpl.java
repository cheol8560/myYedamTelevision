package yolo.myTv.contents.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yolo.myTv.contents.service.ContentService;
import yolo.myTv.contents.service.ContentVO;

@Service("contentService")
public class ContentServiceImpl implements ContentService{

	@Autowired
	private ContentMapper contentMapper;
	
	@Override
	public void insertContent(ContentVO vo) {
		contentMapper.insertContent(vo);
		
	}

	@Override
	public void updateContent(ContentVO vo) {
		contentMapper.updateContent(vo);
	}

	@Override
	public void deleteContent(ContentVO vo) {
		contentMapper.deleteContent(vo);
	}

	@Override
	public ContentVO getContent(ContentVO vo) {
		return null;
	}

	@Override
	public List<ContentVO> getContentList(ContentVO vo) {
		return contentMapper.getContentList(vo);
	}

	
}
