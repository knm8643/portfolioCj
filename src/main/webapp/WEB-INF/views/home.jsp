<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>	
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/login.css">
<head>
	<title>Home</title>
<style>
*{
    box-sizing: border-box;
}
/* a 태그 효과 none */
a{
   text-decoration-line: none;
   color: white;
   font-weight: 500;
}
a:hover{
   color: aqua;
   font-weight: 200;
}
/* body보더조정 */
body{
    margin: 0%;
    background-image: url(/images/background1.png);
}

.main{
    margin: none;
    padding: none;
}

.main_body{
    height:850px;
    background-image: url("/images/background1.png");
}

.navi{
    background-color:rgb(65, 31, 25);
    border-bottom: 10pt;
}
.body_item_2_title{
    margin: auto;
    text-align: center;
    width: 400px;
    height: 300px;
    color: white;
}

/* 네비박스영역 */
.navi_title{
    margin: auto;
    text-align: center;
    line-height: 280%;
    width: 300px;
    height: 50px;
}
/* 네비간 간격 */
.navi_title_item{
    font-size: 15pt;
    margin-left: 3%;
    margin-right: 6%;
}
/* 메인소개타이틀 */
.body_item_1{
    text-align: center;
    /* background-color:black;
    opacity:0.79; */
    font-size: 30pt;
    font-weight: 550;
    height: 200px;
    line-height: 550%;
    color: white;
}
/* 프로필디비크기조정 */
.profileImg{
    height: 180px;
    line-height: 275px;
}
/* 프로필 사진 위치조정 */
.body_item_2{
    margin: auto;
    text-align: center;
    height: 500px;
    /* background-color:rgb(94, 94, 94);    */
}
/* 프로필사진 세부속성설정 */
.profileImg_item{
    border-radius: 100%;
    height: 120px;
    width: 120px;
    opacity: 0.95;
}
/* 메인소개글옵션 */
.body_item_2_intro{
    height: 140px;
}
.intro{
    font-size: 25pt;
}
.intro2{
    margin-top: 30px;
}

.github{
    margin: auto;
    border-radius: 5%;
    background-color: white;
    border: 1px solid white;
    width: 230px;
    height: 30px;
}
.git{
   text-decoration-line: none;
   color: black;
   font-weight: 550;
   font-size: 10pt;  
}
/* 배경이미지 */
.back_box{
    margin: auto;
}

.back{
    width: 500px;
    height: 200px;
}

</style>
</head>
<body>
   <div class="main">
      <div class="main_wrap">
         <div class="navi">
            <div class="navi_title">
                <a href="/" class="navi_title_item">Home</a>
                <a href="/Made/mades" class="navi_title_item">Made</a>
                <a href="/other/others" class="navi_title_item">Other</a>
            </div>
         </div>
         <div class="main_body">
               <div class="body_item_1">
                  <span>Hi, I'm Lee, Web Developer</span>
               </div>
               <div class="body_item_2">
                  <div class="profileImg">
                      <img src="/images/profile.png" class="profileImg_item">  
                  </div>
                  <div class="body_item_2_title">
                      <span class="intro">Welcome</span>
                      <div class="body_item_2_intro">
                         <div class="intro2">
                          저는 웹개발자가 되기 위해<br>
                          국비지원과정 6개월을 공부했습니다.
                          Java/JavaScript/JQuery & ORACLE 사용할줄 알고<br> 
                          별개로 캘린더,카카오맵,네이버로그인 API서비스를<br>
                          학원 프로젝트에 사용했었습니다.
                        </div>
                      </div>
                      <div class="github">
                        <a href="https://github.com/knm8643" class="git">&#127826;www.github.com/knm8643</a>
                     </div>
                  </div>
               </div>
         </div>
      </div>
   </div>
</body>
</html>
