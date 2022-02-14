<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>	
<head>
<meta charset="EUC-KR">
<!-- 캘린더 사용을 위한 Api -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.js'></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/locales-all.min.js'></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/login.css">
<title>other</title>
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
    height: 250px;
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
                       <span>Thanks for Visiting My Site!</span>
                    </div>
                    <div class="body_item_2">
                        <div class="profileImg">
                          <img src="/images/lol.jpg" class="profileImg_item">  
                         </div>
                    <div class="body_item_2_title">
                         <span class="intro">인적사항</span>
                            <div class="body_item_2_intro">
                              <div class="intro2">
                               이름: 이충재<br>
                               거주지 : 서울 동작구 등용로 12다길 14<br>
                               이메일 : knm8643@nate.com <br>
                               핸드폰 : 010-5696-1909<br>
                               각오한마디<br>사이트에 등록된 기능말고도 기본베이스 구현가능!
                              </div>
                      </div>
                   </div>
                     <div class="body_item_2_title">
                         <span class="intro">경력사항</span>
                            <div class="body_item_2_intro">
                              <div class="intro2">
                               근무처 : 서울특별시사회복지협의회<br>
                               근무기간 : 2019/03 - 2021/08<br>
                               각오한마디<br>따근따근한 중고신입입니다!!!
                              </div>
                           </div>
                   </div>
                     <div class="body_item_2_title">
                         <span class="intro">자기소개</span>
                            <div class="body_item_2_intro">
                              <div class="intro2">
                               지금은 개발경력도 부족한 신입이지만 향후 미래의 저와 같은 사람에게
                               도움을 주고 함께하는 개발자가 되겠습니다.                                
                              </div>
                      </div>
                   </div>
               </div>
             </div>
           </div>
         </div>
        </body>
</html>