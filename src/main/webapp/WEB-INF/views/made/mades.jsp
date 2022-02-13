<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>	
<head>
<meta charset="EUC-KR">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
     integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/signUp.css">
    <link rel="stylesheet" href="/css/email.css">
    
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
            color: white;
            background-image: url("/images/background1.png");
        }
        .main_body_wrap{
          margin: auto;
          width: 800px;
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
        #three{
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
            height: 750px;
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
        #cal_item_3:hover{
            cursor: pointer;
            font-size: large;
        }
        /* 첫번째 이벤트효과 */
        #log{
            margin-top:10%;
            width: 250px;
            height: 60px;
        }
        .head_log{
            height: 60px;
        }
        .head_font{
            line-height: 710%;
            height: 100px;
        }
        /* 대문짝하게 적은 폰트 */
        .first_item_1{
            height: 200px;
            font-size: 30pt;
            font-weight: 550;
        }

        .first_item_box_2{
            border-radius: 2%;
            color: black;
            background-color: white;
            margin: auto;
            width: 400px;
            height: 490px;
        }
        .lbody{
            margin-right: 10%;
            margin-left: 10%;
            text-align: left;
            line-height: 180%;
            height: 150px;
        }
        .lfooter{
            margin-right: 10%;
            margin-left: 10%;
            line-height: 300%;
            height: 100px;
        }
        .first_item_box_1{
            height: 210px;
            line-height: 700%;
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
                        <span class="first_item_1">저는 이런 기능을 만든적 있습니다!!!</span><br>
                        <i>네이버 API로그인 기능을 통해 접속이 가능하게 사이트를 만들 수 있습니다!</i>
                      </div>
                      <div class="first_item_box_2">
                        <div class="first_item_2">
                           <!-- 구분선 -->
                               <div class="first_head">
                                   <div class="head_log"><image src="/images/LOGO.png" id="log"></image></div>
                                   <div class="head_font"><span><b>Hobby1st와 함께 당신의 취미를 공유해 보세요! </b></span></div>     
                               </div>
                            <form action="" method="post">
                               <div class="lbody">
                                   <div class="body_idfont">아이디</div>
                                   <div class="body_idbox"><input type="text" placeholder="User ID" id="body_box" name="mem_id"></div>
                                   <div class="body_passfont">비밀번호</div>
                                   <div class="body_pass"><input type="password" placeholder="User Password" id="body_box" name="mem_pass"></div>
                               </div>
                               <div class="lfooter">
                                   <div class="footer_submit">
                                       <button class="button_login" type="submit">login</button>
                                   </div>
                                   <div id="naver">
                                    <a id="naverIdLogin_loginButton" href="#">
                                       <button type="button" id="naverIdLogin"> Naver SignUp </button></a>             
                                 </div>
                                   <div id="message" style="display: none;">
                                   </div>
                                   <div class="footer_font">
                                       <a class="a_login" href="">이메일찾기</a>
                                       <a class="a_login" href="">회원가입</a>
                                   </div>
                               </div>
                            </form>
                        </div>
                      </div>
                    </div> 
                    <div id="two">
                        <div class="two_item_box_1">
                           <i>회원가입에 필요한 정규표현식과 중복체크도 사용하며
                           네이버 메일Api를 통한 인증번호 전송도 가능합니다</i>
                        </div>
                        <div class="two_item_box_2">
                               <!-- 구분선 -->
                                  <div class="signUp_box">
                                      <div class="signUp_wrap">
                                          <div class="signUp_body">
                                            <div class="contents_item_wrap">
                                                <div class="contents_item">
                                                  <div class="desc">
                                                    <h3>기본 정보를 입력해 주세요!</h3>
                                                    <h5>특별한 닉네임으로 여러분의 개성을 표현해 보세요!</h5>
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-id-card"> 회원 ID</i>
                                                    <span class="validResult" id="mem_id_Result"></span>
                                                    <span class="validResult" id="mem_id_Result2"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="text" class="signUpInput" id="mem_id" maxlength="20" name="mem_id" placeholder="ID를 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-lock-open"> 비밀번호</i>
                                                    <span class="validResult" id="mem_pw_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="password" class="signUpInput" id="mem_pass" maxlength="20" name="mem_pass" placeholder="비밀번호를 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-lock"> 비밀번호 확인</i>
                                                    <span class="validResult" id="mem_pw2_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="password" class="signUpInput" id="mem_pass2" maxlength="20" placeholder="비밀번호를 한 번 더 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-user"> 이름</i>
                                                    <span class="validResult" id="mem_name_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="text" class="signUpInput" id="mem_name" maxlength="20" name="mem_name" placeholder="이름을 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-file-signature"> 닉네임</i>
                                                    <span class="validResult" id="mem_nickname_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="text" class="signUpInput" id="mem_nickname" maxlength="40" name="mem_nickname" placeholder="닉네임을 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-user"> 생년월일</i>
                                                    <span class="validResult" id="mem_birthday_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="date" class="signUpInput" id="mem_birthday" name="mem_birthday" min="1960-01-01" max="2005-12-31" value="2005-12-31">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-mobile-alt"> 핸드폰 번호</i>
                                                    <span class="validResult" id="mem_phone_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="text" class="signUpInput" id="mem_phone" maxlength="11" name="mem_phone" placeholder="핸드폰 번호를 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-envelope"> 이메일</i>
                                                    <span class="validResult" id="mem_email_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <input type="text" class="signUpInput" id="mem_email" maxlength="50" name="mem_email" placeholder="이메일을 입력해주세요">
                                                  </div>
                                                  <div class="title">
                                                    <i class="fas fa-venus-mars"> 성별</i>
                                                    <span class="validResult" id="mem_gender_Result"></span>
                                                  </div>
                                                  <div class="input">
                                                    <select name="mem_gender" id="select_gender">
                                                      <option selected disabled hidden>성별을 선택해 주세요</option>
                                                      <option value="M">남자</option>
                                                      <option value="F">여자</option>
                                                    </select>
                                                  </div>
                                               </div>
                                            </div>
                                          </div>
                                      </div>
                                  </div>
                               <!-- 구분선 -->
                       </div>
                          <div class="two_item_box_3">
                                 <div class="email_box">
                                      <div class="email_wrap">
                                        <div class="contents_wrap">
                                          <div class="contents_item_wrap">
                                            <div class="contents_item">
                                                 <div class="desc">
                                                    <h3>이메일 주소를 입력해주세요!</h3>                 
                                                 </div>                        
                                                 <div class="title">
                                                    <i class="fas fa-envelope">회원 이메일</i>
<%--                                                     <c:choose>
                                                    <c:when test ="${result eq 0}"> --%>
                                                    <span class="validResult" id="mem_email_Result"><!-- 등록된 이메일이 없습니다! --></span>
                                       <%--              </c:when> --%>
<%--                                                     <c:when test ="${result eq 1}">
                                                    <span class="validResult" id="mem_email_Result3">메일인증이 성공했습니다!</span>
                                                    </c:when> --%>
                                                   <%--  </c:choose> --%>
                                                 </div>
                                                 <div class="email_input">
                                                    <input type="text" id="user_email" name="email" placeholder="이메일입력">
                                                    <button type="submit" id="sendEmail">메일전송</button>
                                                 </div>
                                                 
                                                 <div class="title" id="number" style="display: show;"> 
                                                    <i class="fas fa-envelope">인증번호</i>
                                                    <span class="validResult" id="mem_email_Result2"></span>
                                                 </div>
                                                 <div class="email_input" id="number1" style="display: show;">
                                                    <input type="text" id="email_num" placeholder="인증번호입력">
                                                    <button type="button" id="emailNum_btn">인증하기</button>
                                                 </div>
                                                 
                                                 <div class="title" style="display:show" id="member_lo">
                                                    <i class="fas fa-envelope">사용자 정보</i><br>
<%--                                                      아이디 : ${members.mem_id }사용자정보1<br>
                                                     비밀번호 : ${members.mem_pass }사용자정보2 --%>
                                                     성공시에만 출력
                                                 </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                </div>
                          </div>
                      </div>
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