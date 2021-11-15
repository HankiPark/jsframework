package co.three.prj.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;
import co.three.prj.paging.PagingVO;

public class LostNotice implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		try {
			// (Before) Doing...
			LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
			List<LfNoticeVO> list = new ArrayList<LfNoticeVO>();
			int nowPage =0;
			if(request.getParameter("nowPage") == null) {
				nowPage = 1;
			}else {
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
			
			LfNoticeVO lfnVo = new LfNoticeVO();
			lfnVo.setLFnStatus(request.getParameter("lFnStatus"));
			lfnVo.setLFnobjType(request.getParameter("LFnobjType"));	//물건타입
			lfnVo.setLFnAddress(request.getParameter("LFnAddress"));	//지역구
			lfnVo.setSDate(request.getParameter("startdate"));
			lfnVo.setEDate(request.getParameter("enddate"));
			System.out.println(lfnVo.getSDate());
			System.out.println(lfnVo.getEDate());
			
			System.out.println(lfnVo.getLFnStatus());
			
			int n = lfnNoticeDao.LfNoticeCount(lfnVo);
			PagingVO vo = new PagingVO(n,nowPage,9);
			
			System.out.println(n);
		
			request.getParameter("lostlocation");
			
			lfnVo.setStart(vo.getStart());
			lfnVo.setEnd(vo.getEnd());
			
			list = lfnNoticeDao.LfNoticeSelectList(lfnVo);
			request.setAttribute("lostNotice", list);
			request.setAttribute("LfNoticeVO", lfnVo);
			request.setAttribute("pagingVO", vo);

			// (After) Doing...
		} catch (Exception e) {
			throw e;
		}

		/*
		 * // 분실물 게시판 출력하기 LfNoticeService lfnNoticeDao = new LfNoticeServiceImpl();
		 * request.setAttribute("lostNotice", lfnNoticeDao.LfNoticeSelectList());
		 */

		return "lfnotice/lostNotice";

	}

}
