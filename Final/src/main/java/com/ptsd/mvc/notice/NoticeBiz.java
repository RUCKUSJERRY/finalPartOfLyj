package com.ptsd.mvc.notice;

import java.util.List;

public interface NoticeBiz {

	public List<NoticeDto> selectList();
	public NoticeDto selectOne(int boardseq);
	public int insert(NoticeDto dto);
	public int update(NoticeDto dto);
	public int delete(int boardseq);
	
}