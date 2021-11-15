<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Site Icons -->
            <link rel="shortcut icon" href="lnf/images/favicon.ico" type="image/x-icon">
            <link rel="apple-touch-icon" href="lnf/images/apple-touch-icon.png">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="lnf/css/bootstrap.min.css">
            <!-- Site CSS -->
            <link rel="stylesheet" href="lnf/css/style.css">
            <!-- Responsive CSS -->
            <link rel="stylesheet" href="lnf/css/responsive.css">
            <!-- Custom CSS -->
            <link rel="stylesheet" href="lnf/css/custom.css">
            
            <script type="text/javascript">
 function CallEdit(str) {
	 console.log(str);
    if(str == 'E') {
    	
       frm.action = "nomalNoticeEdit.do";
       
       
    } else {
       frm.action = "nomalNoticeDelete.do";
    }
     frm.submit();
 }
</script>
</head>
<body>
<div style="text-align: center;  margin: auto;">
 <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="single-product-details">
                        <h2>${notice.ntitle }</h2>
                        <h3>작성일: ${notice.ndate }</h3>
                        <div ">
							<h4>공지내용</h4>
							<p>${notice.ncontent }</p>
							<c:if test="${author == 'ADMIN' }">
							 <div style="margin-bottom: 5%" class="filter-button-group">
				                 <button class="btn hvr-hover" type="button" onclick="CallEdit('E')">수정</button>
				                 <button class="btn hvr-hover" type="button" onclick="CallEdit('D')">삭제</button>
		                	</div>
		                	</c:if>
						</div>
						</div>
                    </div>
</div>

<div> <!-- 숨긴 폼으로  -->
         <form id="frm" name = "frm" action="" method="post">
             <input type="hidden" id="nnid" name="nnid" value="${notice.nnid }">
             <input type="hidden" id="modifyTitle" name="modifyTitle" value="">
              <input type="hidden" id="modifyContents" name="modifyContents" value="">
         </form>
      </div>
</body>
</html>