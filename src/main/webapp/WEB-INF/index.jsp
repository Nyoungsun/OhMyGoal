<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from devfolio.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Apr 2023 04:56:30 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
<meta charset="utf-8" />
<meta name="description" content="다른 개발자들은 어떤 포트폴리오를 만들었을까? 개발자들의 포트폴리오 혹은 토이 프로젝트를 한눈에 모아보세요." />
<meta name="keywords"
	content="devfolio,devfolioh,devfolioh!,데브폴리오,개발자 포트폴리오,개발 포트폴리오,코딩 포트폴리오,IT 취업 포트폴리오 예시,백엔드 포트폴리오 예시,프론트엔드 포트폴리오 예시,신입 백엔드 포트폴리오,신입 프론트엔드 포트폴리오,카카오 신입 포트폴리오,IT 경력 포트폴리오 샘플,토이프로젝트 아이디어,토이 프로젝트 사이트,컴공 토이프로젝트,코딩 토이프로젝트,토이프로젝트 커뮤니티,토이프로젝트 모집,개발자 사이드프로젝트,토이 프로젝트 주제,토이 프로젝트 예시" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<meta name="theme-color" content="#000000" />
<meta name="naver-site-verification" content="d757dcd90d071849070262044ff85a97c6416995" />
<meta property="og:image" content="image/logo.png">
<!-- 	<link rel="icon" href="favicon.ico" />
<link rel="manifest" href="manifest.json" /> -->
<link rel="shortcut icon" href="./img/icon/check.ico">
<link rel="stylesheet"href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700%7CMontserrat:500,700&amp;display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" charset="UTF-8"
	href="../cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" />
<link rel="stylesheet" href="../cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" />
<link rel="stylesheet" href="./css/header/header.css">
<title>OhMyGoal! - 모두의 달성과제</title>
<style type="text/css">
@font-face {
	font-family: 'Pretendard-Regular';
	src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	font-weight: 400;
	font-style: normal;
}
* {
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    font-family: 'Pretendard-Regular';
}

body { //html
    font-family: 'Futura PT Medium' !important;
    letter-spacing: 0.5px !important;
    min-width: 1200px;
    max-width: 100%;
    margin: auto;
}
body, code {
    font: 0.75em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
    font-family: 'Montserrat','Nanum Gothic',sans-serif;
    color: #353535;
    background: #fff;
    line-height: 20px;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
div#grayLayer {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	background: black;
	/* filter: alpha(opacity=60); */
	opacity: 0.60;  /* 0.0 ~ 1.0, 값이 작을수록 더 투명하게 만든다. */
}
.topnav dd {
	float: left;
	padding: 11px;
	background: url("./image/bg_topnav.png") no-repeat 100% 50%;
	
	font: 0.9em 'Nanum Gothic',Verdana,Dotum,AppleGothic,sans-serif;
    font-family: 'Montserrat','Nanum Gothic',sans-serif;
    color: #353535;
    line-height: 20px;
}
/* Header */
header {
	width: 100%;
	position: sticky;
	top: 0;
	z-index: 1;
	background: #ffffff;
}

#navbarNav a {
	font-weight: bold;
	font-size: 16px;
	color: #212529;
	text-decoration: none
}

.navbar {
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

#navbarNav a:hover {
	color: #6c757d;
}

.nav-link {
	color: #333;
	font-weight: 500;
	margin-right: 20px;
}
.OMGlogo img {
	height: 20px;
	margin-top: 15px;
	margin-bottom: 15px;
	margin-left: 20px;
}
</style>
<script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "WebApplication",
            "name": "Devfolio",
            "applicationCategory": "DeveloperApplication"
        }
    </script>
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=G-1W81K7RMHF"></script>
<script>
    function gtag() {
        dataLayer.push(arguments)
    }
    window.dataLayer = window.dataLayer || [], "localhost" !== document.location.hostname && (gtag("js", new Date), gtag("config", "G-1W81K7RMHF"))
</script>
<link href="static/css/2.19627560.chunk.css" rel="stylesheet"> -->
<script>
	function gtag() {
		dataLayer.push(arguments)
	}
	window.dataLayer = window.dataLayer || [], "localhost" !== document.location.hostname && (gtag("js", new Date), gtag("config", "G-1W81K7RMHF"))
</script>
<link href="/static/css/2.19627560.chunk.css" rel="stylesheet">
<style data-jss="" data-meta="MuiCssBaseline">
	html {
		box-sizing: border-box;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
	}

	*,
	*::before,
	*::after {
		box-sizing: inherit;
	}

	strong,
	b {
		font-weight: 700;
	}

	body {
		color: rgba(0, 0, 0, 0.87);
		margin: 0;
		font-size: 16px;
		word-break: keep-all;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.43;
		background-color: #FFFFFF;
	}

	@media print {
		body {
			background-color: #fff;
		}
	}

	body::backdrop {
		background-color: #FFFFFF;
	}

	body a {
		color: initial;
		text-decoration: none;
	}
</style>
<style data-jss="" data-meta="MuiPaper">
	.MuiPaper-root {
		color: rgba(0, 0, 0, 0.87);
		transition: box-shadow 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
		background-color: #fff;
	}

	.MuiPaper-rounded {
		border-radius: 4px;
	}

	.MuiPaper-outlined {
		border: 1px solid rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation0 {
		box-shadow: none;
	}

	.MuiPaper-elevation1 {
		box-shadow: 0px 2px 1px -1px rgba(0, 0, 0, 0.2), 0px 1px 1px 0px rgba(0, 0, 0, 0.14), 0px 1px 3px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation2 {
		box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2), 0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation3 {
		box-shadow: 0px 3px 3px -2px rgba(0, 0, 0, 0.2), 0px 3px 4px 0px rgba(0, 0, 0, 0.14), 0px 1px 8px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation4 {
		box-shadow: 0px 2px 4px -1px rgba(0, 0, 0, 0.2), 0px 4px 5px 0px rgba(0, 0, 0, 0.14), 0px 1px 10px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation5 {
		box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 5px 8px 0px rgba(0, 0, 0, 0.14), 0px 1px 14px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation6 {
		box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation7 {
		box-shadow: 0px 4px 5px -2px rgba(0, 0, 0, 0.2), 0px 7px 10px 1px rgba(0, 0, 0, 0.14), 0px 2px 16px 1px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation8 {
		box-shadow: 0px 5px 5px -3px rgba(0, 0, 0, 0.2), 0px 8px 10px 1px rgba(0, 0, 0, 0.14), 0px 3px 14px 2px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation9 {
		box-shadow: 0px 5px 6px -3px rgba(0, 0, 0, 0.2), 0px 9px 12px 1px rgba(0, 0, 0, 0.14), 0px 3px 16px 2px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation10 {
		box-shadow: 0px 6px 6px -3px rgba(0, 0, 0, 0.2), 0px 10px 14px 1px rgba(0, 0, 0, 0.14), 0px 4px 18px 3px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation11 {
		box-shadow: 0px 6px 7px -4px rgba(0, 0, 0, 0.2), 0px 11px 15px 1px rgba(0, 0, 0, 0.14), 0px 4px 20px 3px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation12 {
		box-shadow: 0px 7px 8px -4px rgba(0, 0, 0, 0.2), 0px 12px 17px 2px rgba(0, 0, 0, 0.14), 0px 5px 22px 4px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation13 {
		box-shadow: 0px 7px 8px -4px rgba(0, 0, 0, 0.2), 0px 13px 19px 2px rgba(0, 0, 0, 0.14), 0px 5px 24px 4px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation14 {
		box-shadow: 0px 7px 9px -4px rgba(0, 0, 0, 0.2), 0px 14px 21px 2px rgba(0, 0, 0, 0.14), 0px 5px 26px 4px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation15 {
		box-shadow: 0px 8px 9px -5px rgba(0, 0, 0, 0.2), 0px 15px 22px 2px rgba(0, 0, 0, 0.14), 0px 6px 28px 5px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation16 {
		box-shadow: 0px 8px 10px -5px rgba(0, 0, 0, 0.2), 0px 16px 24px 2px rgba(0, 0, 0, 0.14), 0px 6px 30px 5px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation17 {
		box-shadow: 0px 8px 11px -5px rgba(0, 0, 0, 0.2), 0px 17px 26px 2px rgba(0, 0, 0, 0.14), 0px 6px 32px 5px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation18 {
		box-shadow: 0px 9px 11px -5px rgba(0, 0, 0, 0.2), 0px 18px 28px 2px rgba(0, 0, 0, 0.14), 0px 7px 34px 6px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation19 {
		box-shadow: 0px 9px 12px -6px rgba(0, 0, 0, 0.2), 0px 19px 29px 2px rgba(0, 0, 0, 0.14), 0px 7px 36px 6px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation20 {
		box-shadow: 0px 10px 13px -6px rgba(0, 0, 0, 0.2), 0px 20px 31px 3px rgba(0, 0, 0, 0.14), 0px 8px 38px 7px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation21 {
		box-shadow: 0px 10px 13px -6px rgba(0, 0, 0, 0.2), 0px 21px 33px 3px rgba(0, 0, 0, 0.14), 0px 8px 40px 7px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation22 {
		box-shadow: 0px 10px 14px -6px rgba(0, 0, 0, 0.2), 0px 22px 35px 3px rgba(0, 0, 0, 0.14), 0px 8px 42px 7px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation23 {
		box-shadow: 0px 11px 14px -7px rgba(0, 0, 0, 0.2), 0px 23px 36px 3px rgba(0, 0, 0, 0.14), 0px 9px 44px 8px rgba(0, 0, 0, 0.12);
	}

	.MuiPaper-elevation24 {
		box-shadow: 0px 11px 15px -7px rgba(0, 0, 0, 0.2), 0px 24px 38px 3px rgba(0, 0, 0, 0.14), 0px 9px 46px 8px rgba(0, 0, 0, 0.12);
	}
</style>
<style data-jss="" data-meta="MuiAppBar">
	.MuiAppBar-root {
		width: 100%;
		display: flex;
		z-index: 1100;
		box-sizing: border-box;
		flex-shrink: 0;
		flex-direction: column;
	}

	.MuiAppBar-positionFixed {
		top: 0;
		left: auto;
		right: 0;
		position: fixed;
	}

	@media print {
		.MuiAppBar-positionFixed {
			position: absolute;
		}
	}

	.MuiAppBar-positionAbsolute {
		top: 0;
		left: auto;
		right: 0;
		position: absolute;
	}

	.MuiAppBar-positionSticky {
		top: 0;
		left: auto;
		right: 0;
		position: sticky;
	}

	.MuiAppBar-positionStatic {
		position: static;
	}

	.MuiAppBar-positionRelative {
		position: relative;
	}

	.MuiAppBar-colorDefault {
		color: rgba(0, 0, 0, 0.87);
		background-color: #f5f5f5;
	}

	.MuiAppBar-colorPrimary {
		color: #fff;
		background-color: #000000;
	}

	.MuiAppBar-colorSecondary {
		color: #fff;
		background-color: #1302F4;
	}

	.MuiAppBar-colorInherit {
		color: inherit;
	}

	.MuiAppBar-colorTransparent {
		color: inherit;
		background-color: transparent;
	}
</style>
<style data-jss="" data-meta="MuiToolbar">
	.MuiToolbar-root {
		display: flex;
		position: relative;
		align-items: center;
	}

	.MuiToolbar-gutters {
		padding-left: 16px;
		padding-right: 16px;
	}

	@media (min-width:640px) {
		.MuiToolbar-gutters {
			padding-left: 24px;
			padding-right: 24px;
		}
	}

	.MuiToolbar-regular {
		min-height: 56px;
	}

	@media (min-width:375px) and (orientation: landscape) {
		.MuiToolbar-regular {
			min-height: 48px;
		}
	}

	@media (min-width:640px) {
		.MuiToolbar-regular {
			min-height: 64px;
		}
	}

	.MuiToolbar-dense {
		min-height: 48px;
	}
</style>
<style data-jss="" data-meta="MuiTypography">
	.MuiTypography-root {
		margin: 0;
	}

	.MuiTypography-body2 {
		font-size: 0.875rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.43;
	}

	.MuiTypography-body1 {
		font-size: 1rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.5;
	}

	.MuiTypography-caption {
		font-size: 0.75rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.66;
	}

	.MuiTypography-button {
		font-size: 0.875rem;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		line-height: 1.75;
		text-transform: uppercase;
	}

	.MuiTypography-h1 {
		font-size: 6rem;
		font-family: Roboto, sans-serif;
		font-weight: 300;
		line-height: 1.167;
	}

	.MuiTypography-h2 {
		font-size: 3.75rem;
		font-family: Roboto, sans-serif;
		font-weight: 300;
		line-height: 1.2;
	}

	.MuiTypography-h3 {
		font-size: 3rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.167;
	}

	.MuiTypography-h4 {
		font-size: 2.125rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.235;
	}

	.MuiTypography-h5 {
		font-size: 1.5rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.334;
	}

	.MuiTypography-h6 {
		font-size: 1.25rem;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		line-height: 1.6;
	}

	.MuiTypography-subtitle1 {
		font-size: 1rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.75;
	}

	.MuiTypography-subtitle2 {
		font-size: 0.875rem;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		line-height: 1.57;
	}

	.MuiTypography-overline {
		font-size: 0.75rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 2.66;
		text-transform: uppercase;
	}

	.MuiTypography-srOnly {
		/* X */
		width: 1px;
		height: 1px;
		overflow: hidden;
		position: absolute;
	}

	.MuiTypography-alignLeft {
		text-align: left;
	}

	.MuiTypography-alignCenter {
		text-align: center;
	}

	.MuiTypography-alignRight {
		text-align: right;
	}

	.MuiTypography-alignJustify {
		text-align: justify;
	}

	.MuiTypography-noWrap {
		/* X */
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
		/* 텍스트가 내용을 초과하면 "..."으로 표시함 */
	}
	
	.MuiTypography-gutterBottom {
		margin-bottom: 0.35em;
	}

	.MuiTypography-paragraph {
		margin-bottom: 16px;
	}

	.MuiTypography-colorInherit {
		color: inherit;
	}

	.MuiTypography-colorPrimary {
		color: #000000;
	}

	.MuiTypography-colorSecondary {
		color: #1302F4;
	}

	.MuiTypography-colorTextPrimary {
		color: rgba(0, 0, 0, 0.87);
	}

	.MuiTypography-colorTextSecondary {
		color: rgba(0, 0, 0, 0.54);
	}

	.MuiTypography-colorError {
		color: #f44336;
	}

	.MuiTypography-displayInline {
		display: inline;
	}

	.MuiTypography-displayBlock {
		display: block;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss1 {
		padding: 0;
	}

	.jss2 {
		gap: 36px;
		display: flex;
		position: relative;
		min-height: 48px;
		align-items: center;
	}

	.jss3 img {
		height: 20px;
		vertical-align: middle;
	}

	.jss4 {
		font-weight: 700;
		border-bottom: 1px solid black;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss20 {
		padding: 52px 0;
		text-align: center;
	}

	.jss20 .MuiToolbar-root {
		margin: auto;
		flex-direction: column;
	}

	.jss20 .MuiToolbar-root p {
		margin: initial;
	}
</style>
<style data-jss="" data-meta="MuiContainer">
	.MuiContainer-root {
		width: 100%;
		display: block;
		padding: 24px;
		max-width: 1140px;
		box-sizing: border-box;
		margin-left: auto;
		margin-right: auto;
		padding-left: 16px;
		padding-right: 16px;
	}

	@media (min-width:640px) {
		.MuiContainer-root {
			padding-left: 24px;
			padding-right: 24px;
		}
	}

	.MuiContainer-disableGutters {
		padding-left: 0;
		padding-right: 0;
	}

	@media (min-width:375px) {
		.MuiContainer-fixed {
			max-width: 375px;
		}
	}

	@media (min-width:640px) {
		.MuiContainer-fixed {
			max-width: 640px;
		}
	}

	@media (min-width:1024px) {
		.MuiContainer-fixed {
			max-width: 1024px;
		}
	}

	@media (min-width:1280px) {
		.MuiContainer-fixed {
			max-width: 1280px;
		}
	}

	@media (min-width:375px) {
		.MuiContainer-maxWidthXs {
			max-width: 444px;
		}
	}

	@media (min-width:640px) {
		.MuiContainer-maxWidthSm {
			max-width: 640px;
		}
	}

	@media (min-width:1024px) {
		.MuiContainer-maxWidthMd {
			max-width: 1024px;
		}
	}

	@media (min-width:1280px) {
		.MuiContainer-maxWidthLg {
			max-width: 1280px;
		}
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss5 {
		padding-bottom: 36px;
		background-color: #f9f9f9;
	}
</style>
<style data-jss="" data-meta="MuiGrid">
	.MuiGrid-container {
		width: 100%;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
	}

	.MuiGrid-item {
		margin: 0;
		box-sizing: border-box;
	}

	.MuiGrid-zeroMinWidth {
		min-width: 0;
	}

	.MuiGrid-direction-xs-column {
		flex-direction: column;
	}

	.MuiGrid-direction-xs-column-reverse {
		flex-direction: column-reverse;
	}

	.MuiGrid-direction-xs-row-reverse {
		flex-direction: row-reverse;
	}

	.MuiGrid-wrap-xs-nowrap {
		flex-wrap: nowrap;
	}

	.MuiGrid-wrap-xs-wrap-reverse {
		flex-wrap: wrap-reverse;
	}

	.MuiGrid-align-items-xs-center {
		align-items: center;
	}

	.MuiGrid-align-items-xs-flex-start {
		align-items: flex-start;
	}

	.MuiGrid-align-items-xs-flex-end {
		align-items: flex-end;
	}

	.MuiGrid-align-items-xs-baseline {
		align-items: baseline;
	}

	.MuiGrid-align-content-xs-center {
		align-content: center;
	}

	.MuiGrid-align-content-xs-flex-start {
		align-content: flex-start;
	}

	.MuiGrid-align-content-xs-flex-end {
		align-content: flex-end;
	}

	.MuiGrid-align-content-xs-space-between {
		align-content: space-between;
	}

	.MuiGrid-align-content-xs-space-around {
		align-content: space-around;
	}

	.MuiGrid-justify-content-xs-center {
		justify-content: center;
	}

	.MuiGrid-justify-content-xs-flex-end {
		justify-content: flex-end;
	}

	.MuiGrid-justify-content-xs-space-between {
		justify-content: space-between;
	}

	.MuiGrid-justify-content-xs-space-around {
		justify-content: space-around;
	}

	.MuiGrid-justify-content-xs-space-evenly {
		justify-content: space-evenly;
	}

	.MuiGrid-spacing-xs-1 {
		width: calc(100% + 8px);
		margin: -4px;
	}

	.MuiGrid-spacing-xs-1>.MuiGrid-item {
		padding: 4px;
	}

	.MuiGrid-spacing-xs-2 {
		width: calc(100% + 16px);
		margin: -8px;
	}

	.MuiGrid-spacing-xs-2>.MuiGrid-item {
		padding: 8px;
	}

	.MuiGrid-spacing-xs-3 {
		width: calc(100% + 24px);
		margin: -12px;
	}

	.MuiGrid-spacing-xs-3>.MuiGrid-item {
		padding: 12px;
	}

	.MuiGrid-spacing-xs-4 {
		width: calc(100% + 32px);
		margin: -16px;
	}

	.MuiGrid-spacing-xs-4>.MuiGrid-item {
		padding: 16px;
	}

	.MuiGrid-spacing-xs-5 {
		width: calc(100% + 40px);
		margin: -20px;
	}

	.MuiGrid-spacing-xs-5>.MuiGrid-item {
		padding: 20px;
	}

	.MuiGrid-spacing-xs-6 {
		width: calc(100% + 48px);
		margin: -24px;
	}

	.MuiGrid-spacing-xs-6>.MuiGrid-item {
		padding: 24px;
	}

	.MuiGrid-spacing-xs-7 {
		width: calc(100% + 56px);
		margin: -28px;
	}

	.MuiGrid-spacing-xs-7>.MuiGrid-item {
		padding: 28px;
	}

	.MuiGrid-spacing-xs-8 {
		width: calc(100% + 64px);
		margin: -32px;
	}

	.MuiGrid-spacing-xs-8>.MuiGrid-item {
		padding: 32px;
	}

	.MuiGrid-spacing-xs-9 {
		width: calc(100% + 72px);
		margin: -36px;
	}

	.MuiGrid-spacing-xs-9>.MuiGrid-item {
		padding: 36px;
	}

	.MuiGrid-spacing-xs-10 {
		width: calc(100% + 80px);
		margin: -40px;
	}

	.MuiGrid-spacing-xs-10>.MuiGrid-item {
		padding: 40px;
	}

	.MuiGrid-grid-xs-auto {
		flex-grow: 0;
		max-width: none;
		flex-basis: auto;
	}

	.MuiGrid-grid-xs-true {
		flex-grow: 1;
		max-width: 100%;
		flex-basis: 0;
	}

	.MuiGrid-grid-xs-1 {
		flex-grow: 0;
		max-width: 8.333333%;
		flex-basis: 8.333333%;
	}

	.MuiGrid-grid-xs-2 {
		flex-grow: 0;
		max-width: 16.666667%;
		flex-basis: 16.666667%;
	}

	.MuiGrid-grid-xs-3 {
		flex-grow: 0;
		max-width: 25%;
		flex-basis: 25%;
	}

	.MuiGrid-grid-xs-4 {
		flex-grow: 0;
		max-width: 33.333333%;
		flex-basis: 33.333333%;
	}

	.MuiGrid-grid-xs-5 {
		flex-grow: 0;
		max-width: 41.666667%;
		flex-basis: 41.666667%;
	}

	.MuiGrid-grid-xs-6 {
		flex-grow: 0;
		max-width: 50%;
		flex-basis: 50%;
	}

	.MuiGrid-grid-xs-7 {
		flex-grow: 0;
		max-width: 58.333333%;
		flex-basis: 58.333333%;
	}

	.MuiGrid-grid-xs-8 {
		flex-grow: 0;
		max-width: 66.666667%;
		flex-basis: 66.666667%;
	}

	.MuiGrid-grid-xs-9 {
		flex-grow: 0;
		max-width: 75%;
		flex-basis: 75%;
	}

	.MuiGrid-grid-xs-10 {
		flex-grow: 0;
		max-width: 83.333333%;
		flex-basis: 83.333333%;
	}

	.MuiGrid-grid-xs-11 {
		flex-grow: 0;
		max-width: 91.666667%;
		flex-basis: 91.666667%;
	}

	.MuiGrid-grid-xs-12 {
		flex-grow: 0;
		max-width: 100%;
		flex-basis: 100%;
	}

	@media (min-width:640px) {
		.MuiGrid-grid-sm-auto {
			flex-grow: 0;
			max-width: none;
			flex-basis: auto;
		}

		.MuiGrid-grid-sm-true {
			flex-grow: 1;
			max-width: 100%;
			flex-basis: 0;
		}

		.MuiGrid-grid-sm-1 {
			flex-grow: 0;
			max-width: 8.333333%;
			flex-basis: 8.333333%;
		}

		.MuiGrid-grid-sm-2 {
			flex-grow: 0;
			max-width: 16.666667%;
			flex-basis: 16.666667%;
		}

		.MuiGrid-grid-sm-3 {
			flex-grow: 0;
			max-width: 25%;
			flex-basis: 25%;
		}

		.MuiGrid-grid-sm-4 {
			flex-grow: 0;
			max-width: 33.333333%;
			flex-basis: 33.333333%;
		}

		.MuiGrid-grid-sm-5 {
			flex-grow: 0;
			max-width: 41.666667%;
			flex-basis: 41.666667%;
		}

		.MuiGrid-grid-sm-6 {
			flex-grow: 0;
			max-width: 50%;
			flex-basis: 50%;
		}

		.MuiGrid-grid-sm-7 {
			flex-grow: 0;
			max-width: 58.333333%;
			flex-basis: 58.333333%;
		}

		.MuiGrid-grid-sm-8 {
			flex-grow: 0;
			max-width: 66.666667%;
			flex-basis: 66.666667%;
		}

		.MuiGrid-grid-sm-9 {
			flex-grow: 0;
			max-width: 75%;
			flex-basis: 75%;
		}

		.MuiGrid-grid-sm-10 {
			flex-grow: 0;
			max-width: 83.333333%;
			flex-basis: 83.333333%;
		}

		.MuiGrid-grid-sm-11 {
			flex-grow: 0;
			max-width: 91.666667%;
			flex-basis: 91.666667%;
		}

		.MuiGrid-grid-sm-12 {
			flex-grow: 0;
			max-width: 100%;
			flex-basis: 100%;
		}
	}

	@media (min-width:1024px) {
		.MuiGrid-grid-md-auto {
			flex-grow: 0;
			max-width: none;
			flex-basis: auto;
		}

		.MuiGrid-grid-md-true {
			flex-grow: 1;
			max-width: 100%;
			flex-basis: 0;
		}

		.MuiGrid-grid-md-1 {
			flex-grow: 0;
			max-width: 8.333333%;
			flex-basis: 8.333333%;
		}

		.MuiGrid-grid-md-2 {
			flex-grow: 0;
			max-width: 16.666667%;
			flex-basis: 16.666667%;
		}

		.MuiGrid-grid-md-3 {
			flex-grow: 0;
			max-width: 25%;
			flex-basis: 25%;
		}

		.MuiGrid-grid-md-4 {
			flex-grow: 0;
			max-width: 33.333333%;
			flex-basis: 33.333333%;
		}

		.MuiGrid-grid-md-5 {
			flex-grow: 0;
			max-width: 41.666667%;
			flex-basis: 41.666667%;
		}

		.MuiGrid-grid-md-6 {
			flex-grow: 0;
			max-width: 50%;
			flex-basis: 50%;
		}

		.MuiGrid-grid-md-7 {
			flex-grow: 0;
			max-width: 58.333333%;
			flex-basis: 58.333333%;
		}

		.MuiGrid-grid-md-8 {
			flex-grow: 0;
			max-width: 66.666667%;
			flex-basis: 66.666667%;
		}

		.MuiGrid-grid-md-9 {
			flex-grow: 0;
			max-width: 75%;
			flex-basis: 75%;
		}

		.MuiGrid-grid-md-10 {
			flex-grow: 0;
			max-width: 83.333333%;
			flex-basis: 83.333333%;
		}

		.MuiGrid-grid-md-11 {
			flex-grow: 0;
			max-width: 91.666667%;
			flex-basis: 91.666667%;
		}

		.MuiGrid-grid-md-12 {
			flex-grow: 0;
			max-width: 100%;
			flex-basis: 100%;
		}
	}

	@media (min-width:1280px) {
		.MuiGrid-grid-lg-auto {
			flex-grow: 0;
			max-width: none;
			flex-basis: auto;
		}

		.MuiGrid-grid-lg-true {
			flex-grow: 1;
			max-width: 100%;
			flex-basis: 0;
		}

		.MuiGrid-grid-lg-1 {
			flex-grow: 0;
			max-width: 8.333333%;
			flex-basis: 8.333333%;
		}

		.MuiGrid-grid-lg-2 {
			flex-grow: 0;
			max-width: 16.666667%;
			flex-basis: 16.666667%;
		}

		.MuiGrid-grid-lg-3 {
			flex-grow: 0;
			max-width: 25%;
			flex-basis: 25%;
		}

		.MuiGrid-grid-lg-4 {
			flex-grow: 0;
			max-width: 33.333333%;
			flex-basis: 33.333333%;
		}

		.MuiGrid-grid-lg-5 {
			flex-grow: 0;
			max-width: 41.666667%;
			flex-basis: 41.666667%;
		}

		.MuiGrid-grid-lg-6 {
			flex-grow: 0;
			max-width: 50%;
			flex-basis: 50%;
		}

		.MuiGrid-grid-lg-7 {
			flex-grow: 0;
			max-width: 58.333333%;
			flex-basis: 58.333333%;
		}

		.MuiGrid-grid-lg-8 {
			flex-grow: 0;
			max-width: 66.666667%;
			flex-basis: 66.666667%;
		}

		.MuiGrid-grid-lg-9 {
			flex-grow: 0;
			max-width: 75%;
			flex-basis: 75%;
		}

		.MuiGrid-grid-lg-10 {
			flex-grow: 0;
			max-width: 83.333333%;
			flex-basis: 83.333333%;
		}

		.MuiGrid-grid-lg-11 {
			flex-grow: 0;
			max-width: 91.666667%;
			flex-basis: 91.666667%;
		}

		.MuiGrid-grid-lg-12 {
			flex-grow: 0;
			max-width: 100%;
			flex-basis: 100%;
		}
	}

	@media (min-width:xlpx) {
		.MuiGrid-grid-xl-auto {
			flex-grow: 0;
			max-width: none;
			flex-basis: auto;
		}

		.MuiGrid-grid-xl-true {
			flex-grow: 1;
			max-width: 100%;
			flex-basis: 0;
		}

		.MuiGrid-grid-xl-1 {
			flex-grow: 0;
			max-width: 8.333333%;
			flex-basis: 8.333333%;
		}

		.MuiGrid-grid-xl-2 {
			flex-grow: 0;
			max-width: 16.666667%;
			flex-basis: 16.666667%;
		}

		.MuiGrid-grid-xl-3 {
			flex-grow: 0;
			max-width: 25%;
			flex-basis: 25%;
		}

		.MuiGrid-grid-xl-4 {
			flex-grow: 0;
			max-width: 33.333333%;
			flex-basis: 33.333333%;
		}

		.MuiGrid-grid-xl-5 {
			flex-grow: 0;
			max-width: 41.666667%;
			flex-basis: 41.666667%;
		}

		.MuiGrid-grid-xl-6 {
			flex-grow: 0;
			max-width: 50%;
			flex-basis: 50%;
		}

		.MuiGrid-grid-xl-7 {
			flex-grow: 0;
			max-width: 58.333333%;
			flex-basis: 58.333333%;
		}

		.MuiGrid-grid-xl-8 {
			flex-grow: 0;
			max-width: 66.666667%;
			flex-basis: 66.666667%;
		}

		.MuiGrid-grid-xl-9 {
			flex-grow: 0;
			max-width: 75%;
			flex-basis: 75%;
		}

		.MuiGrid-grid-xl-10 {
			flex-grow: 0;
			max-width: 83.333333%;
			flex-basis: 83.333333%;
		}

		.MuiGrid-grid-xl-11 {
			flex-grow: 0;
			max-width: 91.666667%;
			flex-basis: 91.666667%;
		}

		.MuiGrid-grid-xl-12 {
			flex-grow: 0;
			max-width: 100%;
			flex-basis: 100%;
		}
	}
</style>
<style data-jss="" data-meta="MuiTouchRipple">
	.MuiTouchRipple-root {
		/* 세모 */
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		z-index: 0;
		overflow: hidden;
		position: absolute;
		border-radius: inherit;
		pointer-events: none;
	}

	.MuiTouchRipple-ripple {
		opacity: 0;
		position: absolute;
	}

	.MuiTouchRipple-rippleVisible {
		opacity: 0.3;
		animation: MuiTouchRipple-keyframes-enter 550ms cubic-bezier(0.4, 0, 0.2, 1);
		transform: scale(1);
	}

	.MuiTouchRipple-ripplePulsate {
		animation-duration: 200ms;
	}

	.MuiTouchRipple-child {
		width: 100%;
		height: 100%;
		display: block;
		opacity: 1;
		border-radius: 50%;
		background-color: currentColor;
	}

	.MuiTouchRipple-childLeaving {
		opacity: 0;
		animation: MuiTouchRipple-keyframes-exit 550ms cubic-bezier(0.4, 0, 0.2, 1);
	}

	.MuiTouchRipple-childPulsate {
		top: 0;
		left: 0;
		position: absolute;
		animation: MuiTouchRipple-keyframes-pulsate 2500ms cubic-bezier(0.4, 0, 0.2, 1) 200ms infinite;
	}

	@-webkit-keyframes MuiTouchRipple-keyframes-enter {
		0% {
			opacity: 0.1;
			transform: scale(0);
		}

		100% {
			opacity: 0.3;
			transform: scale(1);
		}
	}

	@-webkit-keyframes MuiTouchRipple-keyframes-exit {
		0% {
			opacity: 1;
		}

		100% {
			opacity: 0;
		}
	}

	@-webkit-keyframes MuiTouchRipple-keyframes-pulsate {
		0% {
			transform: scale(1);
		}

		50% {
			transform: scale(0.92);
		}

		100% {
			transform: scale(1);
		}
	}
</style>
<style data-jss="" data-meta="MuiButtonBase">
	.MuiButtonBase-root {
		color: inherit;
		border: 0;
		cursor: pointer;
		margin: 0;
		display: inline-flex;
		outline: 0;
		padding: 0;
		position: relative;
		align-items: center;
		user-select: none;
		border-radius: 0;
		vertical-align: middle;
		-moz-appearance: none;
		justify-content: center;
		text-decoration: none;
		background-color: transparent;
		-webkit-appearance: none;
		-webkit-tap-highlight-color: transparent;
	}

	.MuiButtonBase-root::-moz-focus-inner {
		border-style: none;
	}

	.MuiButtonBase-root.Mui-disabled {
		cursor: default;
		pointer-events: none;
	}

	@media print {
		.MuiButtonBase-root {
			-webkit-print-color-adjust: exact;
		}
	}
</style>
<style data-jss="" data-meta="MuiButton">
	.MuiButton-root {
		color: rgba(0, 0, 0, 0.87);
		padding: 10px 20px;
		font-size: 0.98rem;
		min-width: 64px;
		box-sizing: border-box;
		transition: background-color 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms, box-shadow 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms, border 250ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		line-height: 1.75;
		border-radius: 0;
		text-transform: uppercase;
	}

	.MuiButton-root:hover {
		text-decoration: none;
		background-color: rgba(0, 0, 0, 0.03);
		color:white;
		
	}

	.MuiButton-root.Mui-disabled {
		color: rgba(0, 0, 0, 0.26);
	}

	@media (hover: none) {
		.MuiButton-root:hover {
			background-color: transparent;
		}
	}

	.MuiButton-root:hover.Mui-disabled {
		background-color: transparent;
	}

	.MuiButton-label {
		width: 100%;
		display: inherit;
		align-items: inherit;
		justify-content: inherit;
	}

	.MuiButton-text {
		padding: 6px 8px;
	}

	.MuiButton-textPrimary {
		color: #000000;
	}

	.MuiButton-textPrimary:hover {
		background-color: rgba(0, 0, 0, 0.04);
	}

	@media (hover: none) {
		.MuiButton-textPrimary:hover {
			background-color: transparent;
		}
	}

	.MuiButton-textSecondary {
		color: #1302F4;
	}

	.MuiButton-textSecondary:hover {
		background-color: rgba(19, 2, 244, 0.04);
	}

	@media (hover: none) {
		.MuiButton-textSecondary:hover {
			background-color: transparent;
		}
	}

	.MuiButton-outlined {
		border: 1px solid rgba(0, 0, 0, 0.23);
		padding: 5px 15px;
	}

	.MuiButton-outlined.Mui-disabled {
		border: 1px solid rgba(0, 0, 0, 0.12);
	}

	.MuiButton-outlinedPrimary {
		color: #000000;
		border: 1px solid rgba(0, 0, 0, 0.5);
	}

	.MuiButton-outlinedPrimary:hover {
		border: 1px solid #000000;
		background-color: rgba(0, 0, 0, 0.04);
	}

	@media (hover: none) {
		.MuiButton-outlinedPrimary:hover {
			background-color: transparent;
		}
	}

	.MuiButton-outlinedSecondary {
		color: #1302F4;
		border: 1px solid rgba(19, 2, 244, 0.5);
	}

	.MuiButton-outlinedSecondary:hover {
		border: 1px solid #1302F4;
		background-color: rgba(19, 2, 244, 0.04);
	}

	.MuiButton-outlinedSecondary.Mui-disabled {
		border: 1px solid rgba(0, 0, 0, 0.26);
	}

	@media (hover: none) {
		.MuiButton-outlinedSecondary:hover {
			background-color: transparent;
		}
	}

	.MuiButton-contained {
		color: rgba(0, 0, 0, 0.87);
		box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2), 0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
		background-color: #e0e0e0;
	}

	.MuiButton-contained:hover {
		box-shadow: 0px 2px 4px -1px rgba(0, 0, 0, 0.2), 0px 4px 5px 0px rgba(0, 0, 0, 0.14), 0px 1px 10px 0px rgba(0, 0, 0, 0.12);
		background-color: #d5d5d5;
	}

	.MuiButton-contained.Mui-focusVisible {
		box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiButton-contained:active {
		box-shadow: 0px 5px 5px -3px rgba(0, 0, 0, 0.2), 0px 8px 10px 1px rgba(0, 0, 0, 0.14), 0px 3px 14px 2px rgba(0, 0, 0, 0.12);
	}

	.MuiButton-contained.Mui-disabled {
		color: rgba(0, 0, 0, 0.26);
		box-shadow: none;
		background-color: rgba(0, 0, 0, 0.12);
	}

	@media (hover: none) {
		.MuiButton-contained:hover {
			box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2), 0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
			background-color: #e0e0e0;
		}
	}

	.MuiButton-contained:hover.Mui-disabled {
		background-color: rgba(0, 0, 0, 0.12);
	}

	.MuiButton-containedPrimary {
		color: #fff;
		background-color: #000000;
	}

	.MuiButton-containedPrimary:hover {
		background-color: rgb(0, 0, 0);
	}

	@media (hover: none) {
		.MuiButton-containedPrimary:hover {
			background-color: #000000;
		}
	}

	.MuiButton-containedSecondary {
		color: #fff;
		background-color: #1302F4;
	}

	.MuiButton-containedSecondary:hover {
		background-color: rgb(13, 1, 170);
	}

	@media (hover: none) {
		.MuiButton-containedSecondary:hover {
			background-color: #1302F4;
		}
	}

	.MuiButton-disableElevation {
		box-shadow: none;
	}

	.MuiButton-disableElevation:hover {
		box-shadow: none;
	}

	.MuiButton-disableElevation.Mui-focusVisible {
		box-shadow: none;
	}

	.MuiButton-disableElevation:active {
		box-shadow: none;
	}

	.MuiButton-disableElevation.Mui-disabled {
		box-shadow: none;
	}

	.MuiButton-colorInherit {
		color: inherit;
		border-color: currentColor;
	}

	.MuiButton-textSizeSmall {
		padding: 4px 5px;
		font-size: 0.8125rem;
	}

	.MuiButton-textSizeLarge {
		padding: 8px 11px;
		font-size: 0.9375rem;
	}

	.MuiButton-outlinedSizeSmall {
		padding: 3px 9px;
		font-size: 0.8125rem;
	}

	.MuiButton-outlinedSizeLarge {
		padding: 7px 21px;
		font-size: 0.9375rem;
	}

	.MuiButton-containedSizeSmall {
		padding: 4px 10px;
		font-size: 0.8125rem;
	}

	.MuiButton-containedSizeLarge {
		padding: 8px 22px;
		font-size: 0.9375rem;
	}

	.MuiButton-fullWidth {
		width: 100%;
	}

	.MuiButton-startIcon {
		display: inherit;
		margin-left: -4px;
		margin-right: 8px;
	}

	.MuiButton-startIcon.MuiButton-iconSizeSmall {
		margin-left: -2px;
	}

	.MuiButton-endIcon {
		display: inherit;
		margin-left: 8px;
		margin-right: -4px;
	}

	.MuiButton-endIcon.MuiButton-iconSizeSmall {
		margin-right: -2px;
	}

	.MuiButton-iconSizeSmall>*:first-child {
		font-size: 18px;
	}

	.MuiButton-iconSizeMedium>*:first-child {
		font-size: 20px;
	}

	.MuiButton-iconSizeLarge>*:first-child {
		font-size: 22px;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss6 {
		margin: 20px auto;
		max-width: 300px;
	}

	.jss7 p {
		margin: 0;
		font-size: 18px;
	}

	.jss8 {
		font-size: 24px;
		margin-bottom: 20px;
	}

	@media (max-width:1023.95px) {
		.jss8 {
			margin-bottom: 10px;
		}
	}

	.jss9 {
		width: 75%;
		max-height: 400px;
		object-fit: contain;
	}

	.jss10 {
		text-align: center;
	}

	@media (max-width:1023.95px) {
		.jss10 {
			display: none;
		}
	}

	.jss11 {
		margin: 36px 12px 12px 0;
	}

	@media (max-width:1023.95px) {
		.jss12 {
			color: #999999;
		}
	}
</style>
<style data-jss="" data-meta="MuiCard">
	.MuiCard-root {
		/* X */
		overflow: hidden;
	}
</style>
<style data-jss="" data-meta="MuiCardMedia">
	.MuiCardMedia-root {
		display: block;
		background-size: cover;
		background-repeat: no-repeat;
		background-position: center;
	}

	.MuiCardMedia-media {
		width: 100%;
	}

	.MuiCardMedia-img {
		object-fit: cover;
	}
</style>
<style data-jss="" data-meta="MuiCardContent">
	.MuiCardContent-root {
		padding: 16px;
	}

	.MuiCardContent-root:last-child {
		padding-bottom: 24px;
	}
</style>
<style data-jss="" data-meta="MuiSvgIcon">
	.MuiSvgIcon-root {
		fill: currentColor;
		width: 1em;
		height: 1em;
		display: inline-block;
		font-size: 1.5rem;
		transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
		flex-shrink: 0;
		user-select: none;
	}

	.MuiSvgIcon-colorPrimary {
		color: #000000;
	}

	.MuiSvgIcon-colorSecondary {
		color: #1302F4;
	}

	.MuiSvgIcon-colorAction {
		color: rgba(0, 0, 0, 0.54);
	}

	.MuiSvgIcon-colorError {
		color: #f44336;
	}

	.MuiSvgIcon-colorDisabled {
		color: rgba(0, 0, 0, 0.26);
	}

	.MuiSvgIcon-fontSizeInherit {
		font-size: inherit;
	}

	.MuiSvgIcon-fontSizeSmall {
		font-size: 1.25rem;
	}

	.MuiSvgIcon-fontSizeLarge {
		font-size: 2.1875rem;
	}
</style>
<style data-jss="" data-meta="MuiChip">
	.MuiChip-root {
		color: rgba(0, 0, 0, 0.87);
		border: none;
		cursor: default;
		height: 32px;
		display: inline-flex;
		outline: 0;
		padding: 0 12px;
		font-size: 0.8125rem;
		box-sizing: border-box;
		transition: background-color 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms, box-shadow 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
		align-items: center;
		font-family: Roboto, sans-serif;
		white-space: nowrap;
		border-radius: 16px;
		vertical-align: middle;
		justify-content: center;
		text-decoration: none;
		background-color: #e0e0e0;
	}

	.MuiChip-root.Mui-disabled {
		opacity: 0.5;
		pointer-events: none;
	}

	.MuiChip-root .MuiChip-avatar {
		color: #616161;
		width: 24px;
		height: 24px;
		font-size: 0.75rem;
		margin-left: 5px;
		margin-right: -6px;
	}

	.MuiChip-root .MuiChip-avatarColorPrimary {
		color: #fff;
		background-color: rgb(0, 0, 0);
	}

	.MuiChip-root .MuiChip-avatarColorSecondary {
		color: #fff;
		background-color: rgb(13, 1, 170);
	}

	.MuiChip-root .MuiChip-avatarSmall {
		width: 18px;
		height: 18px;
		font-size: 0.625rem;
		margin-left: 4px;
		margin-right: -4px;
	}

	.MuiChip-sizeSmall {
		height: 24px;
	}

	.MuiChip-colorPrimary {
		color: #fff;
		background-color: #000000;
	}

	.MuiChip-colorSecondary {
		color: #fff;
		background-color: #1302F4;
	}

	.MuiChip-clickable {
		cursor: pointer;
		user-select: none;
		-webkit-tap-highlight-color: transparent;
	}

	.MuiChip-clickable:hover,
	.MuiChip-clickable:focus {
		background-color: rgb(206, 206, 206);
	}

	.MuiChip-clickable:active {
		box-shadow: 0px 2px 1px -1px rgba(0, 0, 0, 0.2), 0px 1px 1px 0px rgba(0, 0, 0, 0.14), 0px 1px 3px 0px rgba(0, 0, 0, 0.12);
	}

	.MuiChip-clickableColorPrimary:hover,
	.MuiChip-clickableColorPrimary:focus {
		background-color: rgb(20, 20, 20);
	}

	.MuiChip-clickableColorSecondary:hover,
	.MuiChip-clickableColorSecondary:focus {
		background-color: rgb(37, 22, 244);
	}

	.MuiChip-deletable:focus {
		background-color: rgb(206, 206, 206);
	}

	.MuiChip-deletableColorPrimary:focus {
		background-color: rgb(51, 51, 51);
	}

	.MuiChip-deletableColorSecondary:focus {
		background-color: rgb(66, 52, 246);
	}

	.MuiChip-outlined {
		border: 1px solid rgba(0, 0, 0, 0.23);
		background-color: transparent;
	}

	.MuiChip-clickable.MuiChip-outlined:hover,
	.MuiChip-clickable.MuiChip-outlined:focus,
	.MuiChip-deletable.MuiChip-outlined:focus {
		background-color: rgba(0, 0, 0, 0.04);
	}

	.MuiChip-outlined .MuiChip-avatar {
		margin-left: 4px;
	}

	.MuiChip-outlined .MuiChip-avatarSmall {
		margin-left: 2px;
	}

	.MuiChip-outlined .MuiChip-icon {
		margin-left: 4px;
	}

	.MuiChip-outlined .MuiChip-iconSmall {
		margin-left: 2px;
	}

	.MuiChip-outlined .MuiChip-deleteIcon {
		margin-right: 5px;
	}

	.MuiChip-outlined .MuiChip-deleteIconSmall {
		margin-right: 3px;
	}

	.MuiChip-outlinedPrimary {
		color: #000000;
		border: 1px solid #000000;
	}

	.MuiChip-clickable.MuiChip-outlinedPrimary:hover,
	.MuiChip-clickable.MuiChip-outlinedPrimary:focus,
	.MuiChip-deletable.MuiChip-outlinedPrimary:focus {
		background-color: rgba(0, 0, 0, 0.04);
	}

	.MuiChip-outlinedSecondary {
		color: #1302F4;
		border: 1px solid #1302F4;
	}

	.MuiChip-clickable.MuiChip-outlinedSecondary:hover,
	.MuiChip-clickable.MuiChip-outlinedSecondary:focus,
	.MuiChip-deletable.MuiChip-outlinedSecondary:focus {
		background-color: rgba(19, 2, 244, 0.04);
	}

	.MuiChip-icon {
		color: #616161;
		margin-left: 5px;
		margin-right: -6px;
	}

	.MuiChip-iconSmall {
		width: 18px;
		height: 18px;
		margin-left: 4px;
		margin-right: -4px;
	}

	.MuiChip-iconColorPrimary {
		color: inherit;
	}

	.MuiChip-iconColorSecondary {
		color: inherit;
	}

	.MuiChip-label {
		/* 기술스택 버튼 */
		overflow: hidden;
		white-space: nowrap;
		padding-left: 12px;
		padding-right: 12px;
		text-overflow: ellipsis;
	}

	.MuiChip-labelSmall {
		padding-left: 8px;
		padding-right: 8px;
	}

	.MuiChip-deleteIcon {
		color: rgba(0, 0, 0, 0.26);
		width: 22px;
		cursor: pointer;
		height: 22px;
		margin: 0 5px 0 -6px;
		-webkit-tap-highlight-color: transparent;
	}

	.MuiChip-deleteIcon:hover {
		color: rgba(0, 0, 0, 0.4);
	}

	.MuiChip-deleteIconSmall {
		width: 16px;
		height: 16px;
		margin-left: -4px;
		margin-right: 4px;
	}

	.MuiChip-deleteIconColorPrimary {
		color: rgba(255, 255, 255, 0.7);
	}

	.MuiChip-deleteIconColorPrimary:hover,
	.MuiChip-deleteIconColorPrimary:active {
		color: #fff;
	}

	.MuiChip-deleteIconColorSecondary {
		color: rgba(255, 255, 255, 0.7);
	}

	.MuiChip-deleteIconColorSecondary:hover,
	.MuiChip-deleteIconColorSecondary:active {
		color: #fff;
	}

	.MuiChip-deleteIconOutlinedColorPrimary {
		color: rgba(0, 0, 0, 0.7);
	}

	.MuiChip-deleteIconOutlinedColorPrimary:hover,
	.MuiChip-deleteIconOutlinedColorPrimary:active {
		color: #000000;
	}

	.MuiChip-deleteIconOutlinedColorSecondary {
		color: rgba(19, 2, 244, 0.7);
	}

	.MuiChip-deleteIconOutlinedColorSecondary:hover,
	.MuiChip-deleteIconOutlinedColorSecondary:active {
		color: #1302F4;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss29 {
		gap: 8px;
		display: flex;
		align-items: center;
	}

	.jss30 svg {
		height: 100%;
		display: block;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss26 {
		height: 400px;
		display: flex;
		box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.05);
		margin-right: 36px;
		border-radius: 10px;
		margin-bottom: 36px;
		flex-direction: column;
	}

	@media (max-width:1023.95px) {
		.jss26 {
			gap: 24px;
			height: 100%;
			padding: 24px;
			margin-right: 0;
		}
	}

	.jss26 .MuiCardMedia-root {
		/* Card 그림 사이즈 넘어가면 잘림 */
		flex: 1 1 100%;
		overflow: hidden;
	}

	.jss26 .MuiCardContent-root {
		gap: 8px;
		flex: 1 0 60%;
		display: flex;
		padding: 18px;
		flex-direction: column;
		justify-content: space-between;
	}

	.jss26 .MuiChip-root {
		margin: auto 4px 4px auto;
		font-family: Montserrat;
	}

	.jss26 h6 {
		line-height: 1.5rem;
	}

	.jss26 p {
		/* 카드 본문 내용 부분 */
		margin: 12px 0;
		display: -webkit-box;
		overflow: hidden;
		font-size: 14px;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
	}

	@media (max-width:1023.95px) {
		.jss26 .MuiCardContent-root {
			padding: 0;
		}
	}

	@media (max-width:1023.95px) {
		.jss26 .MuiCardContent-root .MuiTypography-h4 {
			padding: 18px;
			margin-bottom: 12px;
		}
	}

	.jss26 .MuiCardMedia-root img {
		object-fit: cover;
	}

	.jss27 {
		display: flex;
		justify-content: space-between;
	}

	@media (max-width:1023.95px) {
		.jss27 {
			margin-top: 24px;
		}
	}

	.jss28 {
		gap: 1rem;
		display: flex;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss25 {
		/* 카드들어가는 틀 */
		gap: 1rem;
		display: grid;
		overflow: visible;
		grid-template-columns: repeat(3, minmax(0, 1fr));
	}

	@media (min-width:375px) and (max-width:1023.95px) {
		.jss25 {
			grid-template-columns: repeat(2, 1fr);
		}
	}

	@media (max-width:639.95px) {
		.jss25 {
			grid-template-columns: repeat(1, 1fr);
		}
	}
</style>
<style data-jss="" data-meta="PrivateTabIndicator">
	.jss15 {
		width: 100%;
		bottom: 0;
		height: 2px;
		position: absolute;
		transition: all 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	}

	.jss16 {
		background-color: #000000;
	}

	.jss17 {
		background-color: #1302F4;
	}

	.jss18 {
		right: 0;
		width: 2px;
		height: 100%;
	}
</style>
<style data-jss="" data-meta="MuiTabs">
	.MuiTabs-root {
		/* 탐색, 최신순, 조회순 */
		display: flex;
		overflow: hidden;
		min-height: 48px;
		-webkit-overflow-scrolling: touch;
	}

	.MuiTabs-vertical {
		flex-direction: column;
	}

	.MuiTabs-flexContainer {
		display: flex;
	}

	.MuiTabs-flexContainerVertical {
		flex-direction: column;
	}

	.MuiTabs-centered {
		justify-content: center;
	}

	.MuiTabs-scroller {
		flex: 1 1 auto;
		display: inline-block;
		position: relative;
		white-space: nowrap;
	}

	.MuiTabs-fixed {
		width: 100%;
		overflow-x: hidden;
	}

	.MuiTabs-scrollable {
		overflow-x: scroll;
		scrollbar-width: none;
	}

	.MuiTabs-scrollable::-webkit-scrollbar {
		display: none;
	}

	@media (max-width:639.95px) {
		.MuiTabs-scrollButtonsDesktop {
			display: none;
		}
	}
</style>
<style data-jss="" data-meta="MuiTab">
	.MuiTab-root {
		padding: 6px 12px;
		overflow: hidden;
		position: relative;
		font-size: 0.875rem;
		max-width: 264px;
		min-width: 72px;
		box-sizing: border-box;
		min-height: 48px;
		text-align: center;
		flex-shrink: 0;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		line-height: 1.75;
		white-space: normal;
		text-transform: uppercase;
	}

	@media (min-width:640px) {
		.MuiTab-root {
			min-width: 160px;
		}
	}

	.MuiTab-labelIcon {
		min-height: 72px;
		padding-top: 9px;
	}

	.MuiTab-labelIcon .MuiTab-wrapper>*:first-child {
		margin-bottom: 6px;
	}

	.MuiTab-textColorInherit {
		color: inherit;
		opacity: 0.7;
	}

	.MuiTab-textColorInherit.Mui-selected {
		opacity: 1;
	}

	.MuiTab-textColorInherit.Mui-disabled {
		opacity: 0.5;
	}

	.MuiTab-textColorPrimary {
		color: rgba(0, 0, 0, 0.54);
	}

	.MuiTab-textColorPrimary.Mui-selected { /* 탐색, 최신순 조회순 글자 그 자체 */
		color: #000000;
	}

	.MuiTab-textColorPrimary.Mui-disabled {
		color: rgba(0, 0, 0, 0.38);
	}

	.MuiTab-textColorSecondary {
		color: rgba(0, 0, 0, 0.54);
	}

	.MuiTab-textColorSecondary.Mui-selected {
		color: #1302F4;
	}

	.MuiTab-textColorSecondary.Mui-disabled {
		color: rgba(0, 0, 0, 0.38);
	}

	.MuiTab-fullWidth {
		flex-grow: 1;
		max-width: none;
		flex-basis: 0;
		flex-shrink: 1;
	}

	.MuiTab-wrapped {
		font-size: 0.75rem;
		line-height: 1.5;
	}

	.MuiTab-wrapper {
		width: 100%;
		display: inline-flex;
		align-items: center;
		flex-direction: column;
		justify-content: center;
	}
</style>
<style data-jss="" data-meta="MuiFormControl">
	.MuiFormControl-root {
		border: 0;
		margin: 0;
		display: inline-flex;
		padding: 0;
		position: relative;
		min-width: 0;
		flex-direction: column;
		vertical-align: top;
	}

	.MuiFormControl-marginNormal {
		margin-top: 16px;
		margin-bottom: 8px;
	}

	.MuiFormControl-marginDense {
		margin-top: 8px;
		margin-bottom: 4px;
	}

	.MuiFormControl-fullWidth {
		width: 100%;
	}
</style>
<style data-jss="" data-meta="MuiInputBase">
	@-webkit-keyframes mui-auto-fill {}

	@-webkit-keyframes mui-auto-fill-cancel {}

	.MuiInputBase-root {
		color: rgba(0, 0, 0, 0.87);
		cursor: text;
		display: inline-flex;
		position: relative;
		font-size: 1rem;
		box-sizing: border-box;
		align-items: center;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.1876em;
	}

	.MuiInputBase-root.Mui-disabled {
		color: rgba(0, 0, 0, 0.38);
		cursor: default;
	}

	.MuiInputBase-multiline {
		padding: 6px 0 7px;
	}

	.MuiInputBase-multiline.MuiInputBase-marginDense {
		padding-top: 3px;
	}

	.MuiInputBase-fullWidth {
		width: 100%;
	}

	.MuiInputBase-input {
		font: inherit;
		color: currentColor;
		width: 100%;
		border: 0;
		height: 1.1876em;
		margin: 0;
		display: block;
		padding: 6px 0 7px;
		min-width: 0;
		background: none;
		box-sizing: content-box;
		animation-name: mui-auto-fill-cancel;
		letter-spacing: inherit;
		animation-duration: 10ms;
		-webkit-tap-highlight-color: transparent;
	}

	.MuiInputBase-input::-webkit-input-placeholder {
		color: currentColor;
		opacity: 0.42;
		transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	}

	.MuiInputBase-input::-moz-placeholder {
		color: currentColor;
		opacity: 0.42;
		transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	}

	.MuiInputBase-input:-ms-input-placeholder {
		color: currentColor;
		opacity: 0.42;
		transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	}

	.MuiInputBase-input::-ms-input-placeholder {
		color: currentColor;
		opacity: 0.42;
		transition: opacity 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
	}

	.MuiInputBase-input:focus {
		outline: 0;
	}

	.MuiInputBase-input:invalid {
		box-shadow: none;
	}

	.MuiInputBase-input::-webkit-search-decoration {
		-webkit-appearance: none;
	}

	.MuiInputBase-input.Mui-disabled {
		opacity: 1;
	}

	.MuiInputBase-input:-webkit-autofill {
		animation-name: mui-auto-fill;
		animation-duration: 5000s;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input::-webkit-input-placeholder {
		opacity: 0 !important;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input::-moz-placeholder {
		opacity: 0 !important;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input:-ms-input-placeholder {
		opacity: 0 !important;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input::-ms-input-placeholder {
		opacity: 0 !important;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input:focus::-webkit-input-placeholder {
		opacity: 0.42;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input:focus::-moz-placeholder {
		opacity: 0.42;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input:focus:-ms-input-placeholder {
		opacity: 0.42;
	}

	label[data-shrink=false]+.MuiInputBase-formControl .MuiInputBase-input:focus::-ms-input-placeholder {
		opacity: 0.42;
	}

	.MuiInputBase-inputMarginDense {
		padding-top: 3px;
	}

	.MuiInputBase-inputMultiline {
		height: auto;
		resize: none;
		padding: 0;
	}

	.MuiInputBase-inputTypeSearch {
		-moz-appearance: textfield;
		-webkit-appearance: textfield;
	}
</style>
<style data-jss="" data-meta="PrivateNotchedOutline">
	.jss21 {
		top: -5px;
		left: 0;
		right: 0;
		bottom: 0;
		margin: 0;
		padding: 0 8px;
		overflow: hidden;
		position: absolute;
		border-style: solid;
		border-width: 1px;
		border-radius: inherit;
		pointer-events: none;
	}

	.jss22 {
		padding: 0;
		text-align: left;
		transition: width 150ms cubic-bezier(0.0, 0, 0.2, 1) 0ms;
		line-height: 11px;
	}

	.jss23 {
		width: auto;
		height: 11px;
		display: block;
		padding: 0;
		font-size: 0.75em;
		max-width: 0.01px;
		text-align: left;
		transition: max-width 50ms cubic-bezier(0.0, 0, 0.2, 1) 0ms;
		visibility: hidden;
	}

	.jss23>span {
		display: inline-block;
		padding-left: 5px;
		padding-right: 5px;
	}

	.jss24 {
		max-width: 1000px;
		transition: max-width 100ms cubic-bezier(0.0, 0, 0.2, 1) 50ms;
	}
</style>
<style data-jss="" data-meta="MuiOutlinedInput">
	.MuiOutlinedInput-root {
		position: relative;
		border-radius: 4px;
	}

	.MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline {
		border-color: rgba(0, 0, 0, 0.87);
	}

	@media (hover: none) {
		.MuiOutlinedInput-root:hover .MuiOutlinedInput-notchedOutline {
			border-color: rgba(0, 0, 0, 0.23);
		}
	}

	.MuiOutlinedInput-root.Mui-focused .MuiOutlinedInput-notchedOutline {
		border-color: #000000;
		border-width: 2px;
	}

	.MuiOutlinedInput-root.Mui-error .MuiOutlinedInput-notchedOutline {
		border-color: #f44336;
	}

	.MuiOutlinedInput-root.Mui-disabled .MuiOutlinedInput-notchedOutline {
		border-color: rgba(0, 0, 0, 0.26);
	}

	.MuiOutlinedInput-colorSecondary.Mui-focused .MuiOutlinedInput-notchedOutline {
		border-color: #1302F4;
	}

	.MuiOutlinedInput-adornedStart {
		padding-left: 14px;
	}

	.MuiOutlinedInput-adornedEnd {
		padding-right: 14px;
	}

	.MuiOutlinedInput-multiline {
		padding: 18.5px 14px;
	}

	.MuiOutlinedInput-multiline.MuiOutlinedInput-marginDense {
		padding-top: 10.5px;
		padding-bottom: 10.5px;
	}

	.MuiOutlinedInput-notchedOutline {
		border-color: rgba(0, 0, 0, 0.23);
	}

	.MuiOutlinedInput-input {
		padding: 18.5px 14px;
	}

	.MuiOutlinedInput-input:-webkit-autofill {
		border-radius: inherit;
	}

	.MuiOutlinedInput-inputMarginDense {
		padding-top: 10.5px;
		padding-bottom: 10.5px;
	}

	.MuiOutlinedInput-inputMultiline {
		padding: 0;
	}

	.MuiOutlinedInput-inputAdornedStart {
		padding-left: 0;
	}

	.MuiOutlinedInput-inputAdornedEnd {
		padding-right: 0;
	}
</style>
<style data-jss="" data-meta="MuiTextField">

</style>
<style data-jss="" data-meta="MuiIconButton">
	.MuiIconButton-root {
		flex: 0 0 auto;
		color: rgba(0, 0, 0, 0.54);
		padding: 12px;
		overflow: visible;
		font-size: 1.5rem;
		text-align: center;
		transition: background-color 150ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
		border-radius: 50%;
	}

	.MuiIconButton-root:hover {
		background-color: rgba(0, 0, 0, 0.04);
	}

	.MuiIconButton-root.Mui-disabled {
		color: rgba(0, 0, 0, 0.26);
		background-color: transparent;
	}

	@media (hover: none) {
		.MuiIconButton-root:hover {
			background-color: transparent;
		}
	}

	.MuiIconButton-edgeStart {
		margin-left: -12px;
	}

	.MuiIconButton-sizeSmall.MuiIconButton-edgeStart {
		margin-left: -3px;
	}

	.MuiIconButton-edgeEnd {
		margin-right: -12px;
	}

	.MuiIconButton-sizeSmall.MuiIconButton-edgeEnd {
		margin-right: -3px;
	}

	.MuiIconButton-colorInherit {
		color: inherit;
	}

	.MuiIconButton-colorPrimary {
		color: #000000;
	}

	.MuiIconButton-colorPrimary:hover {
		background-color: rgba(0, 0, 0, 0.04);
	}

	@media (hover: none) {
		.MuiIconButton-colorPrimary:hover {
			background-color: transparent;
		}
	}

	.MuiIconButton-colorSecondary {
		color: #1302F4;
	}

	.MuiIconButton-colorSecondary:hover {
		background-color: rgba(19, 2, 244, 0.04);
	}

	@media (hover: none) {
		.MuiIconButton-colorSecondary:hover {
			background-color: transparent;
		}
	}

	.MuiIconButton-sizeSmall {
		padding: 3px;
		font-size: 1.125rem;
	}

	.MuiIconButton-label {
		width: 100%;
		display: flex;
		align-items: inherit;
		justify-content: inherit;
	}
</style>
<style data-jss="" data-meta="MuiAutocomplete">
	.MuiAutocomplete-root.Mui-focused .MuiAutocomplete-clearIndicatorDirty {
		visibility: visible;
	}

	@media (pointer: fine) {
		.MuiAutocomplete-root:hover .MuiAutocomplete-clearIndicatorDirty {
			visibility: visible;
		}
	}

	.MuiAutocomplete-fullWidth {
		width: 100%;
	}

	.MuiAutocomplete-tag {
		margin: 3px;
		max-width: calc(100% - 6px);
	}

	.MuiAutocomplete-tagSizeSmall {
		margin: 2px;
		max-width: calc(100% - 4px);
	}

	.MuiAutocomplete-inputRoot {
		flex-wrap: wrap;
	}

	.MuiAutocomplete-hasPopupIcon .MuiAutocomplete-inputRoot,
	.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot {
		padding-right: 30px;
	}

	.MuiAutocomplete-hasPopupIcon.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot {
		padding-right: 56px;
	}

	.MuiAutocomplete-inputRoot .MuiAutocomplete-input {
		width: 0;
		min-width: 30px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiInput-root"] {
		padding-bottom: 1px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] {
		padding: 9px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"][class*="MuiOutlinedInput-marginDense"] {
		padding: 6px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"] {
		padding-top: 19px;
		padding-left: 8px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"][class*="MuiFilledInput-marginDense"] {
		padding-bottom: 1px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"][class*="MuiFilledInput-marginDense"] .MuiAutocomplete-input {
		padding: 4.5px 4px;
	}

	.MuiAutocomplete-hasPopupIcon .MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"],
	.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"] {
		padding-right: 39px;
	}

	.MuiAutocomplete-hasPopupIcon.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"] {
		padding-right: 65px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"] .MuiAutocomplete-input {
		padding: 9px 4px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiFilledInput-root"] .MuiAutocomplete-endAdornment {
		right: 9px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"][class*="MuiOutlinedInput-marginDense"] .MuiAutocomplete-input {
		padding: 4.5px 4px;
	}

	.MuiAutocomplete-hasPopupIcon .MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"],
	.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] {
		padding-right: 39px;
	}

	.MuiAutocomplete-hasPopupIcon.MuiAutocomplete-hasClearIcon .MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] {
		padding-right: 65px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] .MuiAutocomplete-input {
		padding: 9.5px 4px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] .MuiAutocomplete-input:first-child {
		padding-left: 6px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiOutlinedInput-root"] .MuiAutocomplete-endAdornment {
		right: 9px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiInput-root"][class*="MuiInput-marginDense"] .MuiAutocomplete-input {
		padding: 4px 4px 5px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiInput-root"][class*="MuiInput-marginDense"] .MuiAutocomplete-input:first-child {
		padding: 3px 0 6px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiInput-root"] .MuiAutocomplete-input {
		padding: 4px;
	}

	.MuiAutocomplete-inputRoot[class*="MuiInput-root"] .MuiAutocomplete-input:first-child {
		padding: 6px 0;
	}

	.MuiAutocomplete-input {
		opacity: 0;
		flex-grow: 1;
		text-overflow: ellipsis;
	}

	.MuiAutocomplete-inputFocused {
		opacity: 1;
	}

	.MuiAutocomplete-endAdornment {
		top: calc(50% - 14px);
		right: 0;
		position: absolute;
	}

	.MuiAutocomplete-clearIndicator {
		padding: 4px;
		visibility: hidden;
		margin-right: -2px;
	}

	.MuiAutocomplete-popupIndicator {
		padding: 2px;
		margin-right: -2px;
	}

	.MuiAutocomplete-popupIndicatorOpen {
		transform: rotate(180deg);
	}

	.MuiAutocomplete-popper {
		z-index: 1300;
	}

	.MuiAutocomplete-popperDisablePortal {
		position: absolute;
	}

	.MuiAutocomplete-paper {
		margin: 4px 0;
		overflow: hidden;
		font-size: 1rem;
		font-family: Roboto, sans-serif;
		font-weight: 400;
		line-height: 1.5;
	}

	.MuiAutocomplete-listbox {
		margin: 0;
		padding: 8px 0;
		overflow: auto;
		list-style: none;
		max-height: 40vh;
	}

	.MuiAutocomplete-loading {
		color: rgba(0, 0, 0, 0.54);
		padding: 14px 16px;
	}

	.MuiAutocomplete-noOptions {
		color: rgba(0, 0, 0, 0.54);
		padding: 14px 16px;
	}

	.MuiAutocomplete-option {
		cursor: pointer;
		display: flex;
		outline: 0;
		box-sizing: border-box;
		min-height: 48px;
		align-items: center;
		padding-top: 6px;
		padding-left: 16px;
		padding-right: 16px;
		padding-bottom: 6px;
		justify-content: flex-start;
		-webkit-tap-highlight-color: transparent;
	}

	@media (min-width:640px) {
		.MuiAutocomplete-option {
			min-height: auto;
		}
	}

	.MuiAutocomplete-option[aria-selected="true"] {
		background-color: rgba(0, 0, 0, 0.08);
	}

	.MuiAutocomplete-option[data-focus="true"] {
		background-color: rgba(0, 0, 0, 0.04);
	}

	.MuiAutocomplete-option:active {
		background-color: rgba(0, 0, 0, 0.08);
	}

	.MuiAutocomplete-option[aria-disabled="true"] {
		opacity: 0.38;
		pointer-events: none;
	}

	.MuiAutocomplete-groupLabel {
		top: -8px;
		background-color: #fff;
	}

	.MuiAutocomplete-groupUl {
		padding: 0;
	}

	.MuiAutocomplete-groupUl .MuiAutocomplete-option {
		padding-left: 24px;
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss19 {
		flex: 1 1 auto;
	}

	.jss19 .MuiOutlinedInput-root {
		padding-left: 24px;
		border-radius: 100px;
	}

	.jss19 .MuiAutocomplete-endAdornment {
		display: none;
	}

	@media (max-width:1023.95px) {
		.jss19 {
			width: 100%;
		}
	}
</style>
<style data-jss="" data-meta="makeStyles">
	.jss13 {
		gap: 180px;
		display: flex;
		align-items: center;
		justify-content: space-between;
	}

	@media (max-width:1023.95px) {
		.jss13 {
			gap: 0;
			flex-direction: column-reverse;
		}
	}

	.jss14 {
		margin: 36px 0;
	}

	@media (max-width:1023.95px) {
		.jss14 {
			width: 100%;
			margin: 24px;
		}
	}
</style>
</head>

<body>
<div id='grayLayer'></div>

<jsp:include page="./login/sign_in.jsp" />
<jsp:include page="./login/sign_up.jsp" />

	<form id="mainForm">
		<noscript>You need to enable JavaScript to run this app.</noscript>
		<div id="root">
			<div class="App">
				<!-- 
		    <div class="slick-slider slick-initialized" dir="ltr"><button type="button" data-role="none" class="slick-arrow slick-prev" style="display: block;"> Previous</button>
		        <div class="slick-list">
		            <div class="slick-track" style="width: 8701px; opacity: 1; transform: translate3d(-3729px, 0px, 0px);">
		                <div data-index="-1" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: black; color: white; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: initial;"><strong>매주 새로운 포트폴리오가 업데이트 됩니다 👇👇👇</strong></div>
		                        </div>/tabindex="-1"
		                    </div>
		                </div>/data-index="-1"
		                <div data-index="0" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: rgb(10, 207, 131); color: black; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: pointer;"><span>포트폴리오 제작에 어려움을 겪고 계신가요? <strong>포트폴리오 멘토링 문의</strong></span>
		                                <div style="width: 20px; height: 20px; background-color: white; border-radius: 100%; position: relative; margin-left: 8px;"><svg class="MuiSvgIcon-root MuiSvgIcon-colorPrimary MuiSvgIcon-fontSizeInherit" focusable="false" viewBox="0 0 24 24" aria-hidden="true" style="position: absolute; top: 2px; left: 3px;">
		                                        <path d="M5.88 4.12L13.76 12l-7.88 7.88L8 22l10-10L8 2z"></path>
		                                        </svg>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div data-index="1" class="slick-slide" tabindex="-1" aria-hidden="true" style="outline: none; width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: rgb(19, 2, 244); color: white; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: pointer;"><strong>DevFoliOh! 팀에게 서비스 의견을 들려주세요.</strong>
		                                <div style="width: 20px; height: 20px; background-color: white; border-radius: 100%; position: relative; margin-left: 8px;"><svg class="MuiSvgIcon-root MuiSvgIcon-colorPrimary MuiSvgIcon-fontSizeInherit" focusable="false" viewBox="0 0 24 24" aria-hidden="true" style="position: absolute; top: 2px; left: 3px;">
		                                        <path d="M5.88 4.12L13.76 12l-7.88 7.88L8 22l10-10L8 2z"></path>
		                                    </svg></div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div data-index="2" class="slick-slide slick-active slick-current" tabindex="-1" aria-hidden="false" style="outline: none; width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: black; color: white; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: initial;"><strong>매주 새로운 포트폴리오가 업데이트 됩니다 👇👇👇</strong></div>
		                        </div>
		                    </div>
		                </div>
		                <div data-index="3" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: rgb(10, 207, 131); color: black; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: pointer;"><span>포트폴리오 제작에 어려움을 겪고 계신가요? <strong>포트폴리오 멘토링 문의</strong></span>
		                                <div style="width: 20px; height: 20px; background-color: white; border-radius: 100%; position: relative; margin-left: 8px;"><svg class="MuiSvgIcon-root MuiSvgIcon-colorPrimary MuiSvgIcon-fontSizeInherit" focusable="false" viewBox="0 0 24 24" aria-hidden="true" style="position: absolute; top: 2px; left: 3px;">
		                                        <path d="M5.88 4.12L13.76 12l-7.88 7.88L8 22l10-10L8 2z"></path>
		                                    </svg></div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div data-index="4" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: rgb(19, 2, 244); color: white; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: pointer;"><strong>DevFoliOh! 팀에게 서비스 의견을 들려주세요.</strong>
		                                <div style="width: 20px; height: 20px; background-color: white; border-radius: 100%; position: relative; margin-left: 8px;"><svg class="MuiSvgIcon-root MuiSvgIcon-colorPrimary MuiSvgIcon-fontSizeInherit" focusable="false" viewBox="0 0 24 24" aria-hidden="true" style="position: absolute; top: 2px; left: 3px;">
		                                        <path d="M5.88 4.12L13.76 12l-7.88 7.88L8 22l10-10L8 2z"></path>
		                                    </svg></div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div data-index="5" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true" style="width: 1243px;">
		                    <div>
		                        <div tabindex="-1" style="width: 100%; display: inline-block;">
		                            <div style="background-color: black; color: white; padding: 12px 0px; display: flex; justify-content: center; align-items: center; font-size: 16px; cursor: initial;"><strong>매주 새로운 포트폴리오가 업데이트 됩니다 👇👇👇</strong></div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <button type="button" data-role="none" class="slick-arrow slick-next" style="display: block;"> Next</button>
		         -->
			</div>
			
			<!--
			<header
				class="MuiPaper-root MuiAppBar-root MuiAppBar-positionSticky MuiAppBar-colorInherit MuiPaper-elevation0">
				<div class="MuiToolbar-root MuiToolbar-regular jss2 MuiToolbar-gutters">
					<a class="jss3" href="./">
						<img alt="logo" src="./image/logo.png">
					</a>
					<a href="./">
						<span class="MuiTypography-root jss4 MuiTypography-colorTextPrimary">프로젝트</span>
					</a>
					<a href="./board/qna">
						<span class="MuiTypography-root MuiTypography-colorTextSecondary">QnA</span>
					</a>
					<div style="margin-left: auto;">
						<dl class="topnav">
							<c:if test="${empty memName}">
								<dd>
									<a href="#" class="modal" style="color: black; font-size: 0.9em">Login</a>
								</dd>
							</c:if>
							
							<c:if test="${not empty memName}">
								<dd>
									${memName}님 환영합니다.
								</dd>
								<dd>
									<a href="#" id="logoutBtn">Logout</a>
								</dd>
							</c:if>
						</dl>
					</div>
				</div>
			</header>
			-->
			
			<header>
			    <nav class="navbar navbar-expand-lg navbar-light bg-white">
			        <div class="container" style="">
			            <a class="OMGlogo" href="./"><img src="./img/logo/logo_no_bg2.png" alt="OhMyGoal!"></a>
			
			            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
			                aria-controls="#navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			                <span class="navbar-toggler-icon"></span>
			            </button>
			            <div class="collapse navbar-collapse" id="navbarNav">
			                <ul class="navbar-nav " style="margin-left: 20px;">
			                    <li class="nav-item">
			                        <a class="nav-link" href="./board/about">소개</a>
			                    </li>
			                    <li class="nav-item">
			                        <a class="nav-link" href="./board/ranking">명예의 전당</a>
			                    </li>
			                    <li class="nav-item">
			                        <a class="nav-link" href="./board/qna">문의하기</a>
			                    </li>
			                </ul>
			            </div>
			
			            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
			                <ul class="navbar-nav">
			                    <c:if test="${empty memName}">
			                        <li class="nav-item">
			                            <a id="topnav_loginBtn" class="nav-link" href="#" style="text-decoration: none;">로그인</a>
			                        </li>
			                    </c:if>
			
			                    <c:if test="${not empty memName}">
			                        <li class="nav-item">
			                            <a class="nav-link" href="./member/myPage" style="text-decoration: none;">${memName}님
			                                환영합니다.&nbsp;&nbsp;&nbsp;마이페이지</a>
			                        </li>
			                        <li class="nav-item">
			                            <a id="logoutBtn" class="nav-link" href="#" style="text-decoration: none;">로그아웃</a>
			                        </li>
			                    </c:if>
			                </ul>
			            </div>
			        </div>
			    </nav>
			</header>
			
			<div class="MuiContainer-root MuiContainer-maxWidthLg">
				<div class="MuiGrid-root MuiGrid-container">
					<div class="MuiGrid-root jss7 MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6">
						<p>다른 사람들은 어떤 1일 1미션을 하고 있을까?</p><img class="jss6"
							src="./image/logo.png" alt="logo">
						<div class="jss8">그룹 1일 1미션 모아보기 서비스</div>
						<p class="jss12">다양한 사람들의 미션을 한눈에 모아보고, 마음에 드는 미션을 많은 사람들과 함께 달성해보세요.</p>
						<!--
						<a class="MuiButtonBase-root MuiButton-root MuiButton-contained jss11 MuiButton-containedPrimary"
							tabindex="0" aria-disabled="false" href="./mission/missionBoard">
							<span class="MuiButton-label">그룹 미션 참가</span>
							<span class="MuiTouchRipple-root"></span>
						</a>
						-->
						<c:if test="${not empty memName}">
							<a class="MuiButtonBase-root MuiButton-root MuiButton-contained jss11 MuiButton-containedSecondary"
								tabindex="0" aria-disabled="false" href="./mission/missionWrite" style="border-radius:5px;">
								<span class="MuiButton-label" >그룹 미션 만들기</span>
								<span class="MuiTouchRipple-root"></span>
							</a>
						</c:if>
					</div>
					<div class="MuiGrid-root jss10 MuiGrid-item MuiGrid-grid-xs-12 MuiGrid-grid-md-6"><img class="jss9"
							src="https://devfolio.kr/static/media/hero.25d3f028.jpg" alt="hero_image"></div>
				</div>
			</div>
			<div class="jss5">
				<div class="MuiContainer-root MuiContainer-maxWidthLg">
					<div class="jss13">
						<div class="MuiTabs-root jss14">
							<div class="MuiTabs-scroller MuiTabs-fixed" style="overflow: hidden;">
								<div aria-label="project list order" class="MuiTabs-flexContainer" role="tablist">
									<!--
									<button class="MuiButtonBase-root MuiTab-root MuiTab-textColorPrimary Mui-selected" tabindex="0" type="button" role="tab" aria-selected="true">
										<span class="MuiTab-wrapper">탐색</span>
										<span class="MuiTouchRipple-root"></span>
									</button>
									-->
									<input type="hidden" id="tag" value="tag">
									<button id="menuBar1" class="MuiButtonBase-root MuiTab-root MuiTab-textColorPrimary" tabindex="-1" type="button" role="tab" aria-selected="false">
										<span class="MuiTab-wrapper">최신순</span>
										<span class="MuiTouchRipple-root"></span>
									</button>
									<button id="menuBar2" class="MuiButtonBase-root MuiTab-root MuiTab-textColorPrimary" tabindex="-1" type="button" role="tab" aria-selected="false">
									<span class="MuiTab-wrapper">조회순</span>
									<span class="MuiTouchRipple-root"></span>
									</button>
									<button id="menuBar3" class="MuiButtonBase-root MuiTab-root MuiTab-textColorPrimary" tabindex="-1" type="button" role="tab" aria-selected="false">
										<span class="MuiTab-wrapper">좋아요순</span>
										<span class="MuiTouchRipple-root"></span>
									</button>
								</div>
								<span class="jss15 jss16 MuiTabs-indicator" style="left: 0px; width: 160px;"></span>
							</div>
						</div>
						<div class="MuiFormControl-root jss19">
							<div class="MuiAutocomplete-root MuiAutocomplete-fullWidth MuiAutocomplete-hasClearIcon MuiAutocomplete-hasPopupIcon"
								role="combobox" aria-expanded="false">
								<div class="MuiFormControl-root MuiTextField-root MuiFormControl-fullWidth">
									<div
										class="MuiInputBase-root MuiOutlinedInput-root MuiAutocomplete-inputRoot MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-adornedEnd MuiOutlinedInput-adornedEnd">
										<input aria-invalid="false" autocomplete="off" name="word" id="tags-outlined"
											placeholder="원하는 챌린지를 검색해보세요" type="text"
											class="MuiInputBase-input MuiOutlinedInput-input MuiAutocomplete-input MuiAutocomplete-inputFocused MuiInputBase-inputAdornedEnd MuiOutlinedInput-inputAdornedEnd"
											aria-autocomplete="list" autocapitalize="none" spellcheck="false" value="">
										<div class="MuiAutocomplete-endAdornment"><button
												class="MuiButtonBase-root MuiIconButton-root MuiAutocomplete-clearIndicator"
												tabindex="-1" type="button" aria-label="Clear" title="Clear"><span
													class="MuiIconButton-label"><svg
														class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall"
														focusable="false" viewBox="0 0 24 24" aria-hidden="true">
														<path
															d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z">
														</path>
													</svg></span><span
													class="MuiTouchRipple-root"></span></button><button
												class="MuiButtonBase-root MuiIconButton-root MuiAutocomplete-popupIndicator"
												tabindex="-1" type="button" aria-label="Open" title="Open"><span
													class="MuiIconButton-label"><svg class="MuiSvgIcon-root"
														focusable="false" viewBox="0 0 24 24" aria-hidden="true">
														<path d="M7 10l5 5 5-5z"></path>
													</svg></span><span class="MuiTouchRipple-root"></span></button>
										</div>
										<fieldset aria-hidden="true" class="jss21 MuiOutlinedInput-notchedOutline"
											style="padding-left: 8px;">
											<legend class="jss22" style="width: 0.01px;"><span>&ZeroWidthSpace;</span>
											</legend>
										</fieldset>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="infinite-scroll-component__outerdiv">
						<div class="infinite-scroll-component jss25" style="height: auto; overflow: auto;">
							<!-- 프로젝트 내용시작 style="height: auto; overflow: auto; -->
							<!--
		                	<a href="/project/29">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root">
		                            	<img src="https://user-images.githubusercontent.com/37354708/131096309-fe90c4a1-6f94-4bed-96b3-50ca525c3f4a.png" alt="https://user-images.githubusercontent.com/37354708/131096309-fe90c4a1-6f94-4bed-96b3-50ca525c3f4a.png" width="100%" height="100%">
		                            </div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>✋Hola! 스터디, 사이드 프로젝트 팀원을 만나는 가장 쉬운 방법.</strong></h6>
		                                    <p>스터디, 모각코, 사이드 프로젝트 등 함께하고 싶은 개발자를 Hola!에서 찾으세요.🙆🏻&zwj;♀️
		
		                                        원하는 기술 스택을 선택해서 팀원을 쉽게 구할 수 있어요.</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">React</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Nginx</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Nodejs</span></div>
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">Sihyun</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">13</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">6107</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/33">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/33794732/68991929-b0faab80-08a7-11ea-9d47-7a27f4225a96.png" alt="https://user-images.githubusercontent.com/33794732/68991929-b0faab80-08a7-11ea-9d47-7a27f4225a96.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>🎊 Contest-collection 어떤 공모전이 있는지 한 눈에 볼 수 있는 서비스</strong></h6>
		                                    <p>🎊 공모전 모음 웹서비스 with Pug + Node.js + MongoDB
		                                    </p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Nodejs</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Express</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">SCSS</span></div> + 1
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">leyuri</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">667</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/36">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://camo.githubusercontent.com/2d99d31b81b44e7770e2858658eaef3424879cd8c5f1ae6c4328751aa094345c/68747470733a2f2f696d616765732e76656c6f672e696f2f696d616765732f6262696f336f2f706f73742f36336364643736322d353632362d346266382d626539302d6261313839613535346131362f254531253834253932254531253835254141254531253834253836254531253835254137254531253836254142253230254531253834253830254531253835254235254531253834253835254531253835254139254531253836254138253230323032312d30312d3139253230254531253834253842254531253835254139254531253834253843254531253835254135254531253836254142253230342e30342e33352e676966" alt="https://camo.githubusercontent.com/2d99d31b81b44e7770e2858658eaef3424879cd8c5f1ae6c4328751aa094345c/68747470733a2f2f696d616765732e76656c6f672e696f2f696d616765732f6262696f336f2f706f73742f36336364643736322d353632362d346266382d626539302d6261313839613535346131362f254531253834253932254531253835254141254531253834253836254531253835254137254531253836254142253230254531253834253830254531253835254235254531253834253835254531253835254139254531253836254138253230323032312d30312d3139253230254531253834253842254531253835254139254531253834253843254531253835254135254531253836254142253230342e30342e33352e676966" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>🗺 Seoul wifi location map service</strong></h6>
		                                    <p>밖에서 핸드폰 데이터가 떨어져가서 급하게 와이파이가 필요할때, 서울시의 와이파이가 설치된 곳의 위치 정보를 검색하고 확인 할 수 있으며,
		                                        자신의 현재 위치를 검색하여 주변의 가까운 와이파이 위치를 확인합니다.</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">React</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">JavaScript</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">HTML</span></div> + 2
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">2minzy</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1506</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/61">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/42797995/98429243-db60fc80-20e8-11eb-9d8f-1094b63362ac.gif" alt="https://user-images.githubusercontent.com/42797995/98429243-db60fc80-20e8-11eb-9d8f-1094b63362ac.gif" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>[FE] 😊 주접 생성기</strong></h6>
		                                    <p>주접떠는 사이트입니다. 여러분의 주접을 추가해보세요.🥸</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Next.js</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Styled-components</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Typescript</span></div> + 1
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">jong-hui</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">3</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">2732</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/64">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/7058293/110066182-30213500-7db4-11eb-881e-fa3ea0537b7a.png" alt="https://user-images.githubusercontent.com/7058293/110066182-30213500-7db4-11eb-881e-fa3ea0537b7a.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>[IOS] 🐟가슴속 3천원🐟</strong></h6>
		                                    <p>🐟가슴속 3천원🐟은 전국 붕어빵 지도로 시작하여 전국 길거리 음식점 정복을 꿈꾸는 프로젝트입니다. </p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Swift</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">SnapKit</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">RxSwift</span></div> + 1
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">Hyunsik-Yoo</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1521</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M20 2H4c-1.1 0-2 .9-2 2v18l4-4h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/66">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/72644361/104651996-c792d180-56fb-11eb-867c-5b55dbe21833.png" alt="https://user-images.githubusercontent.com/72644361/104651996-c792d180-56fb-11eb-867c-5b55dbe21833.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>[BE] Cherish 당신의 소중한 사람들을 위한 연락관리 서비스</strong></h6>
		                                    <p>지인들에게 연락을 통해 식물이 자라나도록 해보세요</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Nodejs</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Express</span></div>
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">TeamCherish</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">762</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/87">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://github.com/craftzdog/react-native-animated-todo/raw/master/doc/thumb.jpg" alt="https://github.com/craftzdog/react-native-animated-todo/raw/master/doc/thumb.jpg" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>리액트 네이티브로 만든 Todo App</strong></h6>
		                                    <p>Animated ToDo app built with React Native and Reanimated v2</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Typescript</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">React-Native</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Expo</span></div> + 4
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">craftzdog</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">726</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/90">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/37354708/142584682-f8739599-0dd1-4c7d-b1c2-34beb0670477.png" alt="https://user-images.githubusercontent.com/37354708/142584682-f8739599-0dd1-4c7d-b1c2-34beb0670477.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>아동 급식 카드 가맹점을 조회할 수 있는 앱 '드림트리'</strong></h6>
		                                    <p>[제 12기 SW 마에스트로 해커톤 2등 수상작] / 편리하게 꿈나무 카드 (아동 급식 카드) 가맹점을 조회할 수 있는 앱 '드림트리'입니다.</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Kotlin</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">MVVM</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">DataBinding</span></div> + 6
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">SOMA-Hackaton</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1205</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/120">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/37354708/146474784-a6c5519b-d4f4-45ff-a578-e2faef0033e1.png" alt="https://user-images.githubusercontent.com/37354708/146474784-a6c5519b-d4f4-45ff-a578-e2faef0033e1.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>미리 맞이하는 당신의 이른 죽음 - Android repository</strong></h6>
		                                    <p>☄️ 미리 맞이해보는 당신의 이른 죽음
		                                        "죽음이라는 새로운 시각으로 과거의 삶을 바라보고, 회고하며 그를 통해 현재와 미래의 삶을 재구성한다."</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Kotlin</span></div>
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">Apophis-AppJam</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">661</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/128">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/37354708/147752990-8dab19c0-05c2-40fc-8fb4-8ea6e815dc2e.png" alt="https://user-images.githubusercontent.com/37354708/147752990-8dab19c0-05c2-40fc-8fb4-8ea6e815dc2e.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>✨ 운동 포스터 제작 및 공유 iOS 어플리케이션 - Bodymood ✨</strong></h6>
		                                    <p>오늘도 헬스장 출첵 성공! 헬스장에서 오늘 하루를 마무리 지으셨다면,
		                                        그 마무리를 Bodymood가 멋진 한 장의 포스터로 만들어 드릴게요!</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Swift</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Rich Text Format</span></div>
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">depromeet</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">363</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/137">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://user-images.githubusercontent.com/39258902/84595274-eb561680-ae91-11ea-8e14-541dad6d9bae.png" alt="https://user-images.githubusercontent.com/39258902/84595274-eb561680-ae91-11ea-8e14-541dad6d9bae.png" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>💪 모두의 헬스 케어 비서 - MOBI 💪</strong></h6>
		                                    <p>일상생활에서 편리하게 식이관리를 할 수 있게 도와주는 애플리케이션입니다. </p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Java</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">HTML</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Firebase</span></div> + 4
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">yeahsilver</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">1</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">950</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a><a href="/project/157">
		                        <div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded">
		                            <div class="MuiCardMedia-root"><img src="https://raw.githubusercontent.com/Ashumaurya/Mapify/main/screenshots/Mapify.gif" alt="https://raw.githubusercontent.com/Ashumaurya/Mapify/main/screenshots/Mapify.gif" width="100%" height="100%"></div>
		                            <div class="MuiCardContent-root">
		                                <div>
		                                    <h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>⚒ 로드맵/플로우차트 생성 프로그램</strong></h6>
		                                    <p>블로그 및 프레젠테이션을 위한 로드맵과 순서도를 만드는 플랫폼입니다. PNG로 저장하거나 간단한 클릭으로 웹사이트에 임베드할 수 있습니다</p>
		                                    <div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Next.js</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Firebase</span></div>
		                                        <div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">Tailwind CSS</span></div> + 2
		                                    </div>
		                                </div>
		                                <div class="jss27">
		                                    <div class="jss29">
		                                        <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                <path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path>
		                                            </svg></div><span class="MuiTypography-root MuiTypography-caption">theashishmaurya</span>
		                                    </div>
		                                    <div class="jss28">
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">0</span>
		                                        </div>
		                                        <div class="jss29">
		                                            <div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
		                                                    <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path>
		                                                </svg></div><span class="MuiTypography-root MuiTypography-caption">351</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </a>
		                    -->
						</div> <!-- /infinite-scroll-component jss25 -->
					</div> <!-- /infinite-scroll-component__outerdiv -->
				</div> <!-- /MuiContainer-root MuiContainer-maxWidthLg -->
			</div> <!-- /jss5 -->
			<header
				class="MuiPaper-root MuiAppBar-root MuiAppBar-positionStatic MuiAppBar-colorInherit jss20 MuiPaper-elevation0">
				<div class="MuiToolbar-root MuiToolbar-regular MuiToolbar-gutters">
					<p><strong>OhMyGoal! 2023</strong></p>
					<p>모든 컨텐츠의 저작권은 OhMyGoal에게 있습니다.</p>
					<p>OhMyGoal.help@gmail.com</p>
				</div>
			</header>
		</div><!-- /app -->
		</div><!-- /div -->
	</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#tag').val("1");
	
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/end',
		success: function () {console.log("처리완료");},
		error: function (err) {console.log(err);}
	});
	
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/list1',
		dataType: 'json',
		success: function (data) {
			$(data).each(function () {
				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				else{var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				$('.infinite-scroll-component.jss25').append(imgs);
			});
		},
		error: function (err) {
			console.log(err);
		}
	});
});

$('#topnav_loginBtn').click(function(){
	$('#grayLayer').fadeIn(300);
	$('#login-wrap').fadeIn(300);
	
	return false;
});

$('#grayLayer').click(function(){
	$(this).fadeOut(300);
	$('#login-wrap').fadeOut(300);
	$('#signup-wrap').fadeOut(300);
});

$('#logoutBtn').click(function(){
	$.ajax({
		type: 'post',
		url: '/OhMyGoal/board/logout',
		success: function(){
			alert("로그아웃이 완료되었습니다.");
			location.href = '/OhMyGoal/';
		},
		error: function(err){
			console.log(err);
		}
	});
});

$('#menuBar1').click(function() {
	$('#tag').val("1");
	$('.MuiTabs-indicator').css('left', '0px').css('width', '160px');
	
	$('.infinite-scroll-component.jss25').empty();
    
    $.ajax({
		type: 'post',
		url: '/OhMyGoal/board/list1',
		data: {
			tag: $('#tag').val(),
			word: $('#tags-outlined').val()
		},
		dataType: 'json',
		success: function (data) {
			$(data).each(function () {
				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				else{var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				$('.infinite-scroll-component.jss25').append(imgs);
			});
		},
		error: function (err) {
			console.log(err);
		}
	});
 });
 
$('#menuBar2').click(function() {
	$('#tag').val("2");
	$('.MuiTabs-indicator').css('left', '160px').css('width', '160px');
	
	$('.infinite-scroll-component.jss25').empty();
    
    $.ajax({
		type: 'post',
		url: '/OhMyGoal/board/list1',
		data: {
			tag: $('#tag').val(),
			word: $('#tags-outlined').val()
		},
		dataType: 'json',
		success: function (data) {
			$(data).each(function () {
				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				else{var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				$('.infinite-scroll-component.jss25').append(imgs);
			});
		},
		error: function (err) {
			console.log(err);
		}
	});
 });
 
$('#menuBar3').click(function() {
	$('#tag').val("3");
	$('.MuiTabs-indicator').css('left', '320px').css('width', '160px');
	
	$('.infinite-scroll-component.jss25').empty();
    
    $.ajax({
		type: 'post',
		url: '/OhMyGoal/board/list1',
		data: {
			tag: $('#tag').val(),
			word: $('#tags-outlined').val()
		},
		dataType: 'json',
		success: function (data) {
			$(data).each(function () {
				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				else{var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				$('.infinite-scroll-component.jss25').append(imgs);
			});
		},
		error: function (err) {
			console.log(err);
		}
	});
 });

$(window).scroll(function() {
	if($(window).scrollTop() >= $(document).height() - $(window).height() && $(document).height() !== $(window).height()) {
    	$.ajax({
    		type: 'post',
    		url: '/OhMyGoal/board/list2',
    		data: {
                tag: $('#tag').val(),
                word: $('#tags-outlined').val(),
                startNum: "${startNum}",
                endNum: "${endNum}",
            },
    		dataType: 'json',
    		success: function (data) {
    			$(data).each(function () {
    				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
    				else{var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
    				$('.infinite-scroll-component.jss25').append(imgs);
    			});
    		},
    		error: function (err) {
    			console.log(err);
    		}
    	});
    }
});

$('#tags-outlined').keyup(function() {
	$('.infinite-scroll-component.jss25').empty();
    console.log($('#tags-outlined').val());
    
    $.ajax({
		type: 'post',
		url: '/OhMyGoal/board/list1',
		data: {
			tag: $('#tag').val(),
			word: $('#tags-outlined').val()
		},
		//data: $('#mainForm').serialize(), //서버로 보내는 데이터
		dataType: 'json', //서버로부터 받은 데이터형, "text", "html", "xml", "json"
		success: function (data) {
			$(data).each(function () {
				if(this.img != '/OhMyGoal/image/EndingMission.png'){var imgs = '<a href="' + this.url + '?seq=' + this.seq + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				else{var imgs = '<a href="' + this.url + '"><div class="MuiPaper-root MuiCard-root jss26 MuiPaper-elevation1 MuiPaper-rounded" style="background-color: #bdbdbd;"><div class="MuiCardMedia-root"><img src="' + this.img + '" alt="sample.png" width="100%" height="100%"></div><div class="MuiCardContent-root"><div><h6 class="MuiTypography-root MuiTypography-subtitle1"><strong>' + this.subject + '</strong></h6><p>' + $(this.content).text() + '</p><div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.category+'</span></div><div class="MuiChip-root MuiChip-colorPrimary MuiChip-sizeSmall"><span class="MuiChip-label MuiChip-labelSmall">'+this.maxmember+'명</span></div></div></div><div class="jss27"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.id + '</span></div><div class="jss28"><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.likes + '</span></div><div class="jss29"><div class="jss30"><svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall" focusable="false" viewBox="0 0 24 24" aria-hidden="true"><path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg></div><span class="MuiTypography-root MuiTypography-caption">' + this.views + '</span></div></div></div></div></div></a>';}
				$('.infinite-scroll-component.jss25').append(imgs);
			});
		},
		error: function (err) {
			console.log(err);
		}
	});
});
</script>
</body>
<!-- Mirrored from devfolio.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Apr 2023 04:56:32 GMT -->
</html>