<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>	
<head>
<meta charset="EUC-KR">
<title>mades</title>
<style>
        body{
            margin: 0%;
        }
        .main{
            margin: none;
            padding: none;
        }
        
        .main_body{
            background-image: url("background1.png");
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
                     위치확인 캐러셀형식으로 내용추가
                 </div>
              </div>
           </div>        
        </body>
</html>