package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.notice.service.NoticeService;
import co.three.prj.notice.service.NoticeVO;
import co.three.prj.notice.serviceImpl.NoticeServiceImpl;

public class NomalNoticeEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 공시게시판 수정폼 호출 
		
	
		NoticeService noticeDao =new NoticeServiceImpl();
	    NoticeVO vo= new NoticeVO();
	    
		vo.setNnid(request.getParameter("nnid"));
		vo=noticeDao.noticeSelect(vo);
		request.setAttribute("notice", vo);
		
		
		
		
		return "nnotice/NnoticeEdit";
	}

}
