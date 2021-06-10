<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Review All</title>
    <!-- FAVICON -->
<link rel="shortcut icon" href="https://raw.githubusercontent.com/sudoswift/review_project/master/favicon.ico">
    <!-- CSS LINK -->
<link rel="stylesheet" type ="text/css" href="base.css">
<!-- BOOTSTRAP LINK -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- GOOGLE FONT LINK-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&display=swap" rel="stylesheet">
<!-- ADD ICON LIBRARY -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- GOOGLE ICON LINK -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- CAROUSEL -->
<script>
    $('.carousel').carousel()
</script>
<!-- new -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- new end -->
</head>
<body>
<c:if test="${sessionID != null }">
	<div style="text-align: center;">
	${sessionID } 로그인 중입니다!<br>
	<a href="logout.do"><button type="button" class="btn btn-info">로그아웃</button></a>
	</div>
</c:if>

    
    <!-- 헤더 시작 -->
    <header>
        <div style="font-family: 'Gaegu', cursive; font-size: 5rem; text-align: center;">
            <h1><a href="base.jsp" style="text-decoration: none; color:black">Review All</a></h1>
        </div>

    <!-- 상단배너 자리 -->
    <div id="top_banner" style="position: relative;">
        <div style="overflow: hidden;">
            <div class="banner_icons" style="width: 100%; overflow: hidden; height: 44px; float: left; box-sizing: inherit;">
                <a href="base.jsp" class="material-icons" style="color: black; text-decoration: none">home</a>
                <a href="login.jsp" class="material-icons" style="color: black; text-decoration: none">login</a>
                <a href="accounts.jsp" class="material-icons" style="color: black; text-decoration: none">account_circle</a>
            </div>
        </div>
    </div>
    </header>
<div style="background-color: #f0ede5; height: 18rem; padding-bottom: 50px;"> 
    <div style="text-align: center; color: black;">
        <h1>전자기기 리뷰 커뮤니티</h1>
        <p>최고의 상품들의</p>
        <p>인기 있는 리뷰를 만나보세요!</p>
        <a href="iMacDetailView.jsp" class="btn btn-lg btn-danger">1등</a>
        <a href="keychronDetailView.jsp" class="btn btn-lg btn-primary">2등</a>
        <a href="appleWatchDetailView.jsp" class="btn btn-lg btn-warning">3등</a>
    </div>
</div>

    <!-- 여기까지 header -->
    <hr>
    <!-- 이후 본문 -->
    
    <!-- bootstrap -->
    <div class="container">
        <h2>Review Top 5</h2>  
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
          </ol>
      
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
                <img src="https://raw.githubusercontent.com/sudoswift/review_project/master/iMac.png" alt="iMac" style="width:100%;">
            </div>
      
            <div class="item">
              <img src="https://raw.githubusercontent.com/sudoswift/review_project/master/keychron.jpeg" alt="keychron" style="width:100%;">
            </div>
          
            <div class="item">
              <img src="https://raw.githubusercontent.com/sudoswift/review_project/master/appleWatch.png" alt="applewatch" style="width:100%;">
            </div>
            <div class="item">
                <img src="https://raw.githubusercontent.com/sudoswift/review_project/master/mxMaster.png" alt="mxMaster" style="width:100%;">
            </div>
            <div class="item">
                <img src="https://raw.githubusercontent.com/sudoswift/review_project/master/monitor.png" alt="monitor" style="width:100%;">
            </div>
           </div>
        
          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    <!-- BOOTSTRAP end -->

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