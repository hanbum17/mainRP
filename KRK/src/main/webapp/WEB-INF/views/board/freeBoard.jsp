<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="topbar " id="comHeadlink">
	<div class="left mobile_area clearfix">
		<div><button class="app btn_pop" data-name="mobile" id="invenApp" onclick="$('#appList').toggle();">인벤 공식 앱</button></div>
				<div><a href="https://m.inven.co.kr/lostark" class="mobile">모바일 인벤</a></div>
			</div>

	<ul class="global_link clearfix">
        		<li class="item"><a href="https://www.inven.co.kr/" class="link">웹진</a></li>
        		<li class="item"><a href="https://console.inven.co.kr/" class="link">콘솔</a></li>
        		<li class="item"><a href="https://it.inven.co.kr/" class="link">IT</a></li>
        		<li class="item"><a href="https://esports.inven.co.kr/" class="link">e스포츠</a></li>
        		<li class="item"><a href="https://pick.inven.co.kr/" class="link">사전예약</a></li>
        		<li class="item"><a href="https://www.enchantenter.co.kr/" class="link">인챈트</a></li>
        		<li class="item"><a href="https://imart.inven.co.kr/" class="link">아이마트</a></li>
        	</ul>

	<script type="text/javascript" src="https://www.inven.co.kr/common/lib/js/outlogin.js"></script>
<div class="right user_area clearfix">
                    <div><button class="btn_signin" onclick="INVEN.Links.signIn();">회원가입</button></div>
        <div><button class="btn_sign login" onclick="login();">로그인</button></div>
                    <div><button class="btn_quicklink" onclick="INVEN.quickLink.toggle();">퀵링크</button></div>
</div>
 
 	<div class="pop_item pop_mobile" data-name="mobile" id="appList">

        <div class="top_area">
            <p class="row">
                <span class="name">인벤 모바일 앱 :</span>
                				
                    <a app-code="webzine" class="link">인벤 공식 앱</a>
                            </p>
			<p class="row">
                <span class="name">인벤 게임 공략 :</span>
                                        <a app-code="lostark" class="link">로스트아크</a>
                                        <a app-code="lineagem" class="link">리니지M</a>
                            </p>
        </div> 
    
        
                
		<div class="bottom_area clearfix hidden" id="webzine">
			<img src="https://upload3.inven.co.kr/upload/2023/08/18/bbs/i8268349154.png" alt="" class="img_app">
			<div class="text">
				<p class="name" style="font-weight: bold; letter-spacing: -1px;"><strong>인벤 공식 앱</strong></p>
				<p class="value" style="font-weight: normal; letter-spacing: normal; color: #808080;">댓글 알람 기능 장착! 최신 게임뉴스를 한 눈에 보자</p>
			</div>
			<div class="btn_area">
                 <a href="https://play.google.com/store/apps/details?id=kr.co.invenapp" class="link"><img src="//static.inven.co.kr/image_2011/cafe/common/btn_and01.png" alt="" class="img"></a>                <a href="https://itunes.apple.com/kr/app/inben-inven/id997288621?mt=8" class="link"><img src="//static.inven.co.kr/image_2011/cafe/common/btn_ios01.png" alt="" class="img"></a>			</div>
			<img src="https://upload2.inven.co.kr/upload/2017/06/29/bbs/i16069371144.jpg" alt="" class="img_qr">
        </div>
                
		<div class="bottom_area clearfix" id="lostark">
			<img src="https://upload2.inven.co.kr/upload/2019/03/07/bbs/i13588389197.jpg" alt="" class="img_app">
			<div class="text">
				<p class="name" style="font-weight: bold; letter-spacing: -1px;"><strong>로스트아크</strong></p>
				<p class="value" style="color: #808080;">캘린더 섬, 보스, 카오스게이트 알람! 꿀팁도 와르르</p>
			</div>
			<div class="btn_area">
                 <a href="https://play.google.com/store/apps/details?id=kr.co.inven.android.lostark" class="link"><img src="//static.inven.co.kr/image_2011/cafe/common/btn_and01.png" alt="" class="img"></a>                			</div>
			<img src="https://upload2.inven.co.kr/upload/2019/03/07/bbs/i14021823717.jpg" alt="" class="img_qr">
        </div>
                
		<div class="bottom_area clearfix hidden" id="lineagem">
			<img src="https://upload2.inven.co.kr/upload/2017/07/11/bbs/i15602285282.jpg" alt="" class="img_app">
			<div class="text">
				<p class="name" style="font-weight: bold; letter-spacing: -1px;"><strong>리니지M</strong></p>
				<p class="value" style="color: #808080;">리니지M 플레이하며 인벤 꿀팁까지 실시간으로 확인가능</p>
			</div>
			<div class="btn_area">
                 <a href="https://play.google.com/store/apps/details?id=kr.co.inven.lineagem&amp;hl=ko" class="link"><img src="//static.inven.co.kr/image_2011/cafe/common/btn_and01.png" alt="" class="img"></a>                			</div>
			<img src="https://upload2.inven.co.kr/upload/2017/06/29/bbs/i14060662332.jpg" alt="" class="img_qr">
        </div>
         
	</div>   

	<script type="text/javascript">
		$(document).ready(function(e){
			$('#appList .top_area a').click(function(e){
				appcode = this.getAttribute('app-code');
				$('#appList .bottom_area').addClass('hidden'); 
				$('#appList .bottom_area#'+appcode).removeClass('hidden');
			});
		}); d
	</script></div>
</body>
</html>