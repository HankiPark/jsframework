<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            
            
</head>
<body>

 <div class="contact-form-right" style = "width: 70%; margin: auto;">
                        <h2>제목</h2>
                        
                        <form id="contactForm">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name" value="${notice.ntitle }">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                               
                                <div class="col-md-12">
                                    <div class="form-group">
                                    	<h2>내용</h2>
                                        <input style="height: 200px;" type="text" class="form-control" id="message" value="${notice.ncontent }">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="submit-button text-center">
                                        <button class="btn hvr-hover" id="submit" type="submit">Send Message</button>
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
</body>
</html>