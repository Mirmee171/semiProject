<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    <title>지핑</title>
</head>
<body>
    <div id="container">
        <header>
            <div>
                <div id="header-top">
                    <h1><a href=""><img src="<%= request.getContextPath() %>/img/logo.png" width="80px" height="80px"></a></h1>
                    <div id="header-search">
                        <img src="<%= request.getContextPath() %>/img/searchicon.png" width="28px" height="28px">
                        <input type="search" id="searchBar" placeholder="검색어를 입력해주세요.">
                    </div>
                    <div id="header-btn">
                        <button id="enrollMemberBtn"><span>회원가입</span></button>
                        <button id="loginBtn"><span>로그인</span></button>
                    </div>
                </div>
                <div id="nav-container">
                    <div id="header-nav">
                        <ul>
                            <li><a href="">취미/공예</a></li>
                            <li><a href="">액티비티</a></li>
                            <li><a href="">커리어</a></li>
                            <li><a href="">디자인</a></li>
                        </ul>
                    </div>
                    <div id="header-nav-sub1">
                        <ul>
                            <li><a href="">사진</a></li>
                            <li><a href="">취미미술</a></li>
                            <li><a href="">디지털드로잉</a></li>
                            <li><a href="">요리,베이킹</a></li>
                            <li><a href="">커피</a></li>
                            <li><a href="">보컬</a></li>
                            <li><a href="">악기</a></li>
                            <li><a href="">작곡</a></li>
                        </ul>
                    </div>
                    <div id="header-nav-sub2">
                        <ul>
                            <li><a href="">방송댄스</a></li>
                            <li><a href="">연기,무용</a></li>
                            <li><a href="">스포츠,레저</a></li>
                            <li><a href="">이색 액티비티</a></li>
                        </ul>
                    </div>
                    <div id="header-nav-sub3">
                        <ul>
                            <li><a href="">업무역량</a></li>
                            <li><a href="">마케팅</a></li>
                            <li><a href="">엑셀</a></li>
                            <li><a href="">파워포인트</a></li>
                            <li><a href="">데이터분석</a></li>
                            <li><a href="">앱개발</a></li>
                            <li><a href="">컴퓨터공학</a></li>
                            <li><a href="">자격증</a></li>
                        </ul>
                    </div>
                    <div id="header-nav-sub4">
                        <ul>
                            <li><a href="">건축</a></li>
                            <li><a href="">그래픽디자인</a></li>
                            <li><a href="">UI/UX디자인</a></li>
                            <li><a href="">제품디자인</a></li>
                            <li><a href="">영상편집</a></li>
                            <li><a href="">영상제작</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <script>
        $(() => {
            for(let i=1; i<5; i++) {
                $("#header-nav>ul>li:nth-child(" + i + "),#header-nav-sub" + i).mouseenter(e=> {
                    $("#header-nav-sub1,#header-nav-sub2,#header-nav-sub3,#header-nav-sub4").css({"display":"none"});
                    $("#header-nav>ul>li").css({"background-color":"white"});
                    $("#header-nav>ul>li>a").css({"color":"#94D5DE"});
                    $("#header-nav-sub" + i).css({"display":"flex"});
                    $("#header-nav>ul>li:nth-child(" + i + ")").css({"background-color":"#94D5DE"});
                    $("#header-nav>ul>li:nth-child(" + i + ")").find("a").css({"color":"white"});
                });
                $("#header-nav>ul>li:nth-child(" + i + "),#header-nav-sub" + i).mouseleave(e=> {
                    $("#header-nav-sub1,#header-nav-sub2,#header-nav-sub3,#header-nav-sub4").css({"display":"none"});
                    $("#header-nav>ul>li").css({"background-color":"white"});
                    $("#header-nav>ul>li>a").css({"color":"#94D5DE"});
                });
            }
        });
        $("#searchBar").focusin(e => {
            $(e.target).parent().css({"border":"3px #94D5DE solid"});
        });
        $("#searchBar").focusout(e => {
            $(e.target).parent().css({"border":"1px #94D5DE solid"});
        });
    </script>