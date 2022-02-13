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
        body{
            margin: 0%;
        }
        .main{
            margin: none;
            padding: none;
        }
        
        .main_body{
            color: white;
            background-image: url("/images/background1.png");
        }
        .main_body_wrap{
            line-height: 900%;
        }
        .navi{
            background-color:rgb(65, 31, 25);
            border-bottom: 10pt;
        }
        .navi_title{
            margin: auto;
            text-align: center;
            line-height: 280%;
            width: 300px;
            height: 50px;
        }
        .body_item_1{
            text-align: center;
            font-size: 30pt;
            font-weight: 550;
            height: 200px;
            line-height: 550%;
            color: white;
        }
        /*  a 태그 효과 없애기  */
        .navi_title_item{
           text-decoration-line: none;
           color: white;
           font-weight: 500;
           font-size: 15pt;
           margin-left: 3%;
           margin-right: 6%;
        }
        .navi_title_item:hover{
           color: aqua;
           font-weight: 200;
        }
        /* 캐러셀숨기기 */

        #two{
            display: none;
        }
        .cal{
            text-align: center;
            height: 100px;
            opacity:0.49;
        }
        /* 바디박스캐러셀 wrap */
        .main_body_wrap{
            text-align: center;
            height: 600px;
        }
        /* 캐러셀버튼에 효과 */
        #cal_item_1:hover{
            cursor: pointer;
            font-size: large;
        }
        #cal_item_2:hover{
            cursor: pointer;
            font-size: large;
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
                   <div class="main_body_wrap">
                    <div id="first">
                      <div class="first_item_box_1">
                        <span class="first_item_1">저는 이런 API를 사용했었습니다!</span>
                      </div>
                      <div class="first_item_box_2">
                        <span class="first_item_2">카카오멥</span>
                      </div>
                    </div> 
                    <div id="two">캘린더API</div>
                   </div>  
                    <div class="cal">
                        <span id="cal_item_1">&#9898;</span>                        	
                        <span id="cal_item_2">&#9898;</span>
                    </div> 
                 </div>
              </div>
           </div>
           <script>
           // 캐러셀 작동
           $("#cal_item_1").on("click",function(){
               $("#first").show();
               $("#two").hide();
               $("#three").hide();
           })
           $("#cal_item_2").on("click",function(){
               $("#first").hide();
               $("#two").show();
               $("#three").hide();
           })
           $("#cal_item_3").on("click",function(){
               $("#first").hide();
               $("#two").hide();
               $("#three").show();
           })
           </script>
        </body>
</html>