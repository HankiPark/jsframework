package co.three.prj.command;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import co.three.prj.comm.Command;
import co.three.prj.lfNotice.LfNoticeService;
import co.three.prj.lfNotice.LfNoticeVO;
import co.three.prj.lfNotice.serviceImpl.LfNoticeServiceImpl;

public class LfNoticeInsert implements Command {
	@Override
    public String run(HttpServletRequest request, HttpServletResponse response) {
        // 분실물 입력 저장.
        
        String saveFolder = request.getServletContext().getRealPath("images");
        HttpSession session = request.getSession(); 
        LfNoticeService lfnotoceDao = new LfNoticeServiceImpl();
        LfNoticeVO vo = new LfNoticeVO();
        
    
        
        try {
            MultipartRequest multipartRequest = new MultipartRequest(request,saveFolder,1024*1024*100,"utf-8",new DefaultFileRenamePolicy());
    
            String fileName = multipartRequest.getFilesystemName("lFnimg");
            
            String original = multipartRequest.getOriginalFileName("lFnimg");
        
            // 필요한 값만
            
            vo.setLFnTitle(multipartRequest.getParameter("lfntitle"));  // 제목.
            
            if(fileName==null) {
            	fileName="noimage.jpg";
            }
            
            vo.setLFnAddress(multipartRequest.getParameter("lfnaddress")); // 주소.
            vo.setLFnObj(multipartRequest.getParameter("lfnobj")); // 물건 이름.
            vo.setLFnDate(multipartRequest.getParameter("lfndate")); // 날짜.
            vo.setLFnStatus(multipartRequest.getParameter("lFnstatus")); //분실 습득 상태.
            vo.setLFnobjType(multipartRequest.getParameter("lFnobjtype")); // 물건타입.
            vo.setLFncontent(multipartRequest.getParameter("lFncontent")); // 내용.
            vo.setLFnImg(fileName); // 사진.
            vo.setId(String.valueOf(session.getAttribute("id")));  // session 에 있는 id 값 들고 오기.

        } catch (IOException e) {
            
            e.printStackTrace();
        }
        
        
       
        
        int n = lfnotoceDao.LfNoticeInsert(vo);
        String viewPage = null;

        

        if (n != 0) {
            viewPage = "home.do";   // 등록 성공시 분실물 게시판 화면 보여주기.
        } else {
            request.setAttribute("message", "등록이 되지 않았습니다.");
            viewPage = "lfnotice/lfnoticeFail";  // 등록 실패시 보여줄 화면.
        }

        return viewPage;
    }
}