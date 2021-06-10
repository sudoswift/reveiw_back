<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ACCOUNTS</title>
        <!-- FAVICON -->
<link rel="shortcut icon" href="https://raw.githubusercontent.com/sudoswift/review_project/master/favicon.ico">
<!-- BOOTSTRAP LINK -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- CSS LINK -->
<link rel="stylesheet" type ="text/css" href="base.css">
<!-- GOOGLE FONT LINK-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&display=swap" rel="stylesheet">
<!-- ADD ICON LIBRARY -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- GOOGLE ICON LINK -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
    <!-- 광고배너 자리 -->

    <header>
        <div style="font-family: 'Gaegu', cursive; font-size: 5rem; text-align: center;">
            <h1><a href="base.jsp" style="text-decoration: none; color:black">Review All</a></h1>
        </div>

    <!-- 상단배너 자리 -->
    <div id="top_banner" style="position: relative;">
        <div style="overflow: hidden;">
            <div class="banner_icons" style="width: 100%; overflow: hidden; height: 44px; float: left; box-sizing: inherit;  ">
                <a href="base.jsp" class="material-icons" style="color: black; text-decoration: none">home</a>
                <a href="login.jsp" class="material-icons" style="color: black; text-decoration: none">login</a>
                <a href="accounts.jsp" class="material-icons" style="color: black; text-decoration: none">account_circle</a>
            </div>
        </div>
    </div>
    
    </header>
    <!-- 여기까지 header -->
    <hr>
	${error}
    <div style="text-align: center;">
        <div>
            <form action="memberInsert.do" method="post">
                <fieldset>
                 <legend style="margin-bottom: 2rem; margin-top: 2rem;">회원정보를 입력하세요</legend>
                 <label for="user_email">아이디 : </label>
                 <input type="text" id="user_email" name="id"><br><br>
                 <label for="pwd">비밀번호 : </label>
                 <input type="password" id="pw" name="pwd"><br><br>
                 <label for="name">이름 : </label>
                 <input type="text" id="name" name="name"><br><br>
                 <label for="birthday">생년월일 :</label>
                 <input type="date" id="birthday" name="birthday"><br><br>
                 <input type="submit" class="btn btn-primary" value="회원가입">
                </fieldset>
               </form>
        </div>
    </div>

    <!-- 이후로 footer -->
    <hr>
    <div style="text-align: center; font-family: 'Nanum Gothic', sans-serif; ">
        <div>
            <span>이용약관 |</span>
            <span><a href="user_private.jsp"> 개인정보처리방침 |</a></span>
            <span>사업자정보 |</span>
            <span>채용</span><br>
            <span><a href="https://www.facebook.com/apple" class="fa fa-facebook"></a></span>
            <span><a href="https://twitter.com/apple" class="fa fa-twitter"></a></span>
            <span><a href="https://www.instagram.com/apple" class="fa fa-instagram"></a></span>
            <span><a href="https://github.com/sudoswift" class="fa fa-github"></a></span>
        </div>

        <hr>

        <footer style="text-align: left; font-family: 'Nanum Gothic', sans-serif; font-size: 1rem;">
            <!-- 회사소개 -->
            <div>
                <div style="margin-top: 3rem; margin-bottom: 1rem;">
                    <h5><strong>(주)Review</strong></h5>
                </div>
                <div style="line-height: .7rem;">
                    <p>제작자 : 이서현 | 학번 : 201935017 | 학과 : 컴퓨터과학과</p>
                    <p>사이트 이름 : (주)Review | 주소 : 경기도 용인시 처인구 역북동(17082)</p>
                    <p>지도교수 : 이완주 교수(031-XXXX-XXXX)</p>
                    <p>ZSHOP 쇼핑몰 홈페이지의 권리에 관한 모든 내용은 이서현(@sudoswift)에게 있으며 무단도용을 금함</p>
                    <br>
                </div>
            </div>
            <!-- 고객센터 -->
            <div>
                <div style="margin-bottom: 1rem;">
                    <h5><strong>고객센터 1234-5678</strong></h5>
                </div>
                <div style="line-height: .7rem;">
                    <p><strong>영업시간  </strong>AM 09:00 ~ PM 18:00 (주말 및 공휴일 휴무)</p>
                    <p><strong>점심시간  </strong>PM 12:30 ~ PM 14:00</p>
                    <p><strong>고객문의  </strong><u>sudoswift@gmail.com</u></p>
                    <br>
                </div>
            </div>
        </footer>

    </div>
</body>
</html>