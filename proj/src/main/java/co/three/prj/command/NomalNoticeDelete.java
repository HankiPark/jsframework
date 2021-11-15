package co.three.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.notice.service.NoticeService;
import co.three.prj.notice.service.NoticeVO;
import co.three.prj.notice.serviceImpl.NoticeServiceImpl;

public class NomalNoticeDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 공지글 상세 페이지에서 삭제
		NoticeService noticeDao =new NoticeServiceImpl();
		NoticeVO vo= new NoticeVO();
		vo.setNnid((String)request.getParameter("nnid"));
		System.out.println(vo.getNnid());
		noticeDao.noticeDelete(vo);
		
		return "nnotice/noticeMain";
	}

}
