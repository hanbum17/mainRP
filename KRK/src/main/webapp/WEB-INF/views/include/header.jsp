<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KRK</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="${contextPath}/resources/css/header.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header>
        <nav class="navbar">
            <span class="hamburger-btn material-symbols-rounded">menu</span>
            <a href="#" class="logo">
                <h2>KRK</h2>
            </a>
            <ul class="links">
                <span class="close-btn material-symbols-rounded">close</span>
                <li><a href="#">메인</a></li>
                <li><a href="#">자유게시판</a></li>
                <li><a href="#">건의게시판</a></li>
                <li><a href="#">점심공유게시판</a></li>
            </ul>
            <button class="login-btn">LOG IN</button>
        </nav>
    </header>

    <div class="blur-bg-overlay"></div>
    <div class="form-popup">
        <span class="close-btn material-symbols-rounded">close</span>
        <div class="form-box login">
            <div class="form-details">
                <h2>Welcome Back</h2>
                <p>Please log in using your personal information to stay connected with us.</p>
            </div>
            <div class="form-content">
                <h2>로그인</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" required>
                        <label>아이디</label>
                    </div>
                    <div class="input-field">
                        <input type="password" required>
                        <label>비밀번호</label>
                    </div>
                    <a href="#" class="forgot-pass-link">비밀번호를 잊었나요?</a>
                    <button type="submit">로그인</button>
                </form>
                <div class="bottom-link">
                    회원가입을 하시지 않았나요?
                    <a href="#" id="signup-link">회원가입</a>
                </div>
            </div>
        </div>
        <div class="form-box signup">
            <div class="form-details">
                <h2>Create Account</h2>
                <p>To become a part of our community, please sign up using your personal information.</p>
            </div>
            <div class="form-content">
                <h2>회원가입</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" name="username" required>
                        <label>이름</label>
                    </div>
                    <div class="input-field">
                        <input type="text" name="userid" required>
                        <label>아이디</label>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" required>
                        <label>비밀번호</label>
                    </div>
                    <div class="input-field">
                        <input type="text" name="phone">
                        <label>전화번호</label>
                    </div>
                    <div class="input-field">
                        <input type="email" name="email" required>
                        <label>이메일</label>
                    </div>
                    <div class="input-field">
                        <input type="text" name="gender">
                        <label>성별 (M/F)</label>
                    </div>

                    <button type="submit">회원등록</button>
                </form>
            </div>
        </div>
    </div>



<script>
	const navbarMenu = document.querySelector(".navbar .links");
	const hamburgerBtn = document.querySelector(".hamburger-btn");
	const hideMenuBtn = navbarMenu.querySelector(".close-btn");
	const showPopupBtn = document.querySelector(".login-btn");
	const formPopup = document.querySelector(".form-popup");
	const hidePopupBtn = formPopup.querySelector(".close-btn");
	const signupLoginLink = formPopup.querySelectorAll(".bottom-link a");
	
	// Show mobile menu
	hamburgerBtn.addEventListener("click", () => {
	    navbarMenu.classList.toggle("show-menu");
	});
	
	// Hide mobile menu
	hideMenuBtn.addEventListener("click", () => hamburgerBtn.click());
	
	// Show login popup
	showPopupBtn.addEventListener("click", () => {
	    document.body.classList.add("show-popup");
	    formPopup.classList.remove("show-signup"); // Ensure login form is shown
	});
	
	// Hide login popup
	hidePopupBtn.addEventListener("click", () => {
	    document.body.classList.remove("show-popup");
	});
	
	// Show or hide signup form
	signupLoginLink.forEach(link => {
	    link.addEventListener("click", (e) => {
	        e.preventDefault();
	        formPopup.classList.toggle("show-signup");
	    });
	});

</script>