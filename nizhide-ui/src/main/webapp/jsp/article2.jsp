<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./resources/css/inspector.css" rel="stylesheet" type="text/css">
<link href="./resources/css/main.css" rel="stylesheet" type="text/css">
<link href="./resources/css/base.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./resources/css/typo.css">
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="./resources/css/ie.css"/><![endif]-->
<!-- Le fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/img/ico/apple-touch-icon-ipad3.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/img/ico/apple-touch-icon-iphone4.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/img/ico/apple-touch-icon-ipad.png">
<link rel="apple-touch-icon-precomposed" href="/static/img/ico/apple-touch-icon-iphone.png">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/favicon.ico">
<meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
 <style>
    code{ color:#1abc9c; } 
    
    pre{white-space:pre-wrap;}

    i.serif{ text-transform:lowercase; color:#1abc9c; }
    :-moz-any(h1, h2, h3, h4, h5, h5) i.serif{ text-transform: capitalize; }
    i.serif:hover{ color:inherit; }

    #wrapper{ padding:1% 3%; position:relative;}
    #tagline{ color:#999; font-size:1em; margin:-2em 0 2em; padding-bottom:2em; border-bottom:3px double #eee; }
    #fork{ position:fixed; top:0; right:0; _position:absolute; }
    #table{ margin-bottom:2em; color:#888; }
    #github{ position:absolute;top:1em;}
    #github iframe{ display:inline;margin-right:1em; }

    @media only screen and (max-width: 640px) {
      table{ word-break:break-all;word-wrap:break-word;font-size:12px; }
      .typo table th, .typo table td, .typo-table th, .typo-table td .typo table caption {
        padding: 0.5em;
      }
      #fork{ display:none; }
    }
  </style>
<title>传送门</title>

</head>
<body>
<div class="mobile_page " style="min-height: 400px">
<div id="ld_u9j4rh_102">
<div class="mobile_header" id="header">
<div class="logo logo_alert" id="__w2_iGwgFhq_logo">
<a href="/" id="__w2_iGwgFhq_logo_text">传送门</a>
</div>
<div class="search" style="position: absolute;right: 15px;left: 88px;">
<div class="search_contents navigator" style="width: 100%">
<form class="search_form" action="/search" method="get" name="search_form" style="width: 100%;background: #fff">
<div class="search_input" style="width: 100%">
<input class="question_box" name="q" type="text"  autocomplete="off" maxlength="250" placeholder="搜索" tabindex="1" id="__w2_sH6y6to_input" style="width: 80%">
</div>
</form>
</div>
</div>
</div>
</div>

<div class="content mobile_content home_page" id="container">
<div id="wrapper" class="typo typo-selection">
<h1>${article.title }</h1><br/>
 <h2 id="tagline" class="serif">${article.time } 胡涵 沸腾</h2>
 ${article.content }

 

<!-- #wrapper -->
</div>
<div>
<div class="mobile_sub_header row">
<div class="mobile_sub_header_buttons">
<ul>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">产品</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">架构</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">Java</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">运营</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">运维</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="/">最新</a>
</li>
<li class="mobile_sub_header_button br5 inbox">
<a href="#">精选</a>
</li>
</ul>
</div>
</div>
</div>

<div class="mobile_footer" id="footer">
<ul class="mobile_footer_options">
<li><a href="/">首页</a></li>
<li class="full_site"><a href="#" target="_blank">热榜</a></li>
</ul>
</div>
</div>  
<script language="javascript" src="./resources/js/reimg.js"></script>
</html>
