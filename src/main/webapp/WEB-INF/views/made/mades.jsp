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

<!-- 캘린더사용을 위한 API -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.js'></script>
<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/locales-all.min.js'></script>
<!-- 카카오맵을 위한 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7a00e839ba07cfb660f1cfc019bdd08b&libraries=services"></script>
<title>mades</title>
    <style>
       ul{
            list-style:none;
       }
        body{
            background-image: url(/images/background1.png);
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
          text-align: center;
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
            height:680px;
        }
        #three{
            display: none;
        }
        #four{
            display: none;
        }
        .cal{
            line-height: 700%;
            text-align: center;
            height: 100px;
            color: white;
            background-image: url(/images/background1.png);
            /* opacity:0.49; */
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
        #cal_item_4:hover{
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
        /* 쓰리영역입니다. */
        .three_item_box_2{
            margin: auto;
            border-radius: 1%;
            width: 750px;
            color: black;
            background-color: white;
        }
        /* 포영역입니다 */
        .four_item_box_1{
            height: 200px;
            line-height: 500%;
        }
        .four_item_box_2{
            height: 400px;
        }
        /* 카카오맵 */
        .here_click{
           width: 10%;
           height: 25px;
           border: 1px solid var(--bg-color);
           background-color: var(--color2);
           color: var(--bg-color);
           border-radius: 5px;
           transition: 0.5s all ease;
        }
        .here_click:hover{
            background-color: var(--bg-color);
            color: var(--color2);
            cursor: pointer;
        }
        .four_item_box_3{
           line-height: 200%;
           letter-spacing: 2px;
        }
        #pagination > a{
           color: white;
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
                           <i>회원가입에 필요한 정규표현식과 중복체크도 만들 수 있습니다! 또
                           네이버 메일 STMP를 통해 인증번호 전송할수있습니다</i>
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
                                                     인증 성공시에만 출력
                                                 </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                </div>
                          </div>
                      </div>
                      <div id="three">
                          <div class="three_item_box_1">
                             <i>풀캘린더API를 통한 일정관리 기능도 만든적 있습니다! 일정을 등록하고 클릭해보세요!</i>
                          </div>
                          <div class="three_item_box_2">
                               <div id='calendar'></div>	
                          </div>
                      </div>
                      <div id="four">
                          <div class="four_item_box_1">
			                 <div id="menu_wrap" class="bg_white">
			                    <i>카카오맵을 통해 장소를 검색하고 저장할 수 있어요!(화면안보일시 인터넷창 크기를 조정해보세요)</i>
			                	<div class="option">
				                  <div>
				 		             <form onsubmit="searchPlaces(); return false;">
						             	<!-- input text 및 검색버튼 (여기만 수정가능) -->
						             	<input type="text" value="" id="keyword" placeholder="맛집을 검색하세요"
						        		style="width: 300px; height: 25px;">
						             	<!-- value 값을 바꿔주세요.  -->
							            <button type="submit" style="width: 75px; height: 24px;">검색하기</button>
					               	</form>
					              </div>
				               </div>
		                	</div>
                          </div>
                          <div class="four_item_box_2">
				            <div id="map" style="width:100%;height:350px;"></div>
                          </div>
                          <div class="four_item_box_3">
	                    	<div id="plabox">
		                    	<hr>
			                      <ul id="placesList"></ul>
		                         	<div id="pagination" style="height: 80px; font-size: 25px"></div>
		                    </div>
                          </div>
                      </div>  
                    </div>
                 </div>
                    <div class="cal">
                        <span id="cal_item_1">&#9898;</span>                        	
                        <span id="cal_item_2">&#9898;</span>
                        <span id="cal_item_3">&#9898;</span>
                        <span id="cal_item_4">&#9898;</span>
                    </div> 
               </div>  
           </div>          
           <script>
           // 캘린더 스크립트영역
    document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
   
	
    var calendar = new FullCalendar.Calendar(calendarEl, {
    	//사이즈
    	height : '600px',
    	expandRows: true,
    	
    	//캘린더헤더부분
    	headerToolbar: {
    		left: 'prev,next',
    		center: 'title',
    		right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek' 
    		},
        //첫페이지에서 보여지는 달
        initialView: 'listWeek',
        
        //수정가능
        editable: true,
        
        //달력에 여러가지 날 선택가능
        selectable: true,
        
        //현재시간 보여주는 마크생성
        nowIndicator: true,
        
        //이벤트 오버할시 자동 크기 조절
        dayMaxEvents: true,
        locale: 'ko',
        //이벤트가 추가되면 발생하는 이벤트
        eventAdd: function(arg) {
            console.log(arg.event.title);
        },
        
        //이벤트 제목을 선택했을시
        eventClick: function(arg){
        	console.log(arg.event.title);
        	console.log(arg.event.start)
        	window.open("/Made/calendarDetail?title="+arg.event.title+"&end="+arg.event.end+"&start="+arg.event.start+"&club_cl_name=스케줄제목입니다!","PopupWin","menubar:no,toolbar=no,scrollbars=no,resizable=no,top=500,left=500,width=510,height=300");

        },
        
        select: function(arg) {
        	var title = prompt('스케줄을 입력해주세요');
         	$.ajax({
                type:"get",
                url:"${path}/calendar/insert?club=${club_cl_name}",
                data:
                {title:title, day_start:arg.start, day_end:arg.end}
         	});
        	if (title) {
        	calendar.addEvent({
        	title: title,
        	start: arg.start,
        	end: arg.end,
        	allDay: arg.allDay,
        	backgroundColor:"rgba(158, 128, 247, 0.9)", 
        	textColor:"white"
        	})
        }
        calendar.unselect()
        },
        
        //리스트 출력
        events: 
        [
        	{
        		title : "이충재생일",
        		start : "2022-01-19",
        		end : "2022-01-19",
        	},
        	{
        		title : "백수1일차",
        		start : "2022-02-10",
        		end : "2022-02-10",
        	},  
        	{
        		title : "학원종강",
        		start : "2022-02-09",
        		end : "2022-02-09",
        	}        
        ]
    });
    calendar.render();
    });
           
           // 캐러셀 작동
           $("#cal_item_1").on("click",function(){
               $("#first").show();
               $("#two").hide();
               $("#three").hide();
               $("#four").hide();
           })
           $("#cal_item_2").on("click",function(){
               $("#first").hide();
               $("#two").show();
               $("#three").hide();
               $("#four").hide();
           })
           $("#cal_item_3").on("click",function(){
               $("#first").hide();
               $("#two").hide();
               $("#three").show();
               $("#four").hide();
           })
           $("#cal_item_4").on("click",function(){
               $("#first").hide();
               $("#two").hide();
               $("#three").hide();
               $("#four").show();

           })
           
        // 카카오 API의 시작부분 ----------------------------------------   
		var markers = [];
		var mapContainer = document.getElementById('map'), mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567),
			level : 3
		};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		var ps = new kakao.maps.services.Places();
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});
		searchPlaces();
		function searchPlaces() {
			var keyword = document.getElementById('keyword').value;
			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				//alert('키워드를 입력해주세요!');
				return false;
			}
			ps.keywordSearch(keyword, placesSearchCB);
		}
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {
				displayPlaces(data);
				displayPagination(pagination);
			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				alert('검색 결과가 존재하지 않습니다.');
				return;
			} else if (status === kakao.maps.services.Status.ERROR) {
				alert('검색 결과 중 오류가 발생했습니다.');
				return;
			}
		}

		function displayPlaces(places) {
			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';
			removeAllChildNods(listEl);
			removeMarker();
			for (var i = 0; i < places.length; i++) {
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]);
				bounds.extend(placePosition);

				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});
					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});
					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};
					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);
				fragment.appendChild(itemEl);
			}
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;
			map.setBounds(bounds);
		}

		// 카카오 Api의 일부이나 DB저장에 쓰일 부분으로 가장 중요합니다.(맛집 정보가 담겨있음)
		// 수정가능한 부분입니다.(근데 왠만해선 건들지마세요.... 그냥 건들지마세요!! )
		function getListItem(index, places) {
			var el = document.createElement('li'), itemStr = '<form action="" method="get"><span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5 value="'+places.place_name+'"><input type="text" name="place_name_'
					+ (index + 1)
					+ '" value="'
					+ places.place_name
					+ '" hidden> ' + places.place_name + '</h5>';
			if (places.road_address_name) {
				itemStr += '    <span value="'+places.road_address_name+'"><input type="text" name="address_name_'
						+ (index + 1)
						+ '" value="'
						+ places.road_address_name
						+ '" hidden>'
						+ places.road_address_name
						+ '</span>'
						+ '   <span class="jibun gray">'
						+ places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel" value='+places.phone+'><input type="text" name="tel_'
					+ (index + 1)
					+ '" value="'
					+ places.phone
					+ '" hidden><input type="text" name="user" value="${loginID }" hidden>'
					+ places.phone
					+ '</span>'
					+ '<span><input type="submit" onclick="check_'
					+ (index + 1)
					+ '()" value="즐겨찾기" class="here_click" name="here_map_'
					+ (index + 1) + '"></span>'
			'</div></form>';

			el.innerHTML = itemStr;
			el.className = 'item';
			return el;
			// ------------ 구 분 선--------------
		}

		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', imageSize = new kakao.maps.Size(
					36, 37), imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691),
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10),
				offset : new kakao.maps.Point(13, 37)
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position,
				image : markerImage
			});
			marker.setMap(map);
			markers.push(marker);
			return marker;
		}

		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}
			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}
				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';
			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
		// 카카오 API 마지막 입니다 -------------------------------------------------------------------
           </script>
        </body>
</html>