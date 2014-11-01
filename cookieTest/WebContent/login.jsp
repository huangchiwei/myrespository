<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<style type="text/css">
img{border:0;}
ul,li{padding:0;margin:0;}
.QQbox {z-index:99;right:0;width:128px;height:128px;position:absolute;}
.QQbox .press{right:0;width:36px;cursor:pointer;position:absolute;height:128px;}
.QQbox .Qlist{left:0;width:131px;position:absolute;height:128px;background:url(/imagesforcode/201209/floatServiceBj.gif) no-repeat left center;}
.QQbox .Qlist ul{padding:43px 0 0 21px;}
.QQbox .Qlist li{height:26px;margin-bottom:11px;_margin-bottom:7px; list-style-type:none;}
</style>
<script type="text/javascript">
    window.onload = window.onresize = window.onscroll = function() {
        var oBox = document.getElementById("divQQbox");
        var oLine = document.getElementById("divOnline");
        var oMenu = document.getElementById("divMenu");
        var iScrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        setTimeout(function() {
            clearInterval(oBox.timer);
            var iTop = parseInt((document.documentElement.clientHeight - oBox.offsetHeight) / 2) + iScrollTop;
            oBox.timer = setInterval(function() {
                var iSpeed = (iTop - oBox.offsetTop) / 8;
                iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);
                oBox.offsetTop == iTop ? clearInterval(oBox.timer) : (oBox.style.top = oBox.offsetTop + iSpeed + "px");
            }, 30)
        }, 100)

        oBox.onmouseover = function() {
            this.style.width = 131 + "px";
            oLine.style.display = "block";
            oMenu.style.display = "none";
        };
        oBox.onmouseout = function() {
            this.style.width = '';
            oLine.style.display = "none";
            oMenu.style.display = "block";
        };
    };
</script>
</head>
<body>
 <body>
    <a href='coki'>Cookie</a>
    <br>
    <div class="QQbox" id="divQQbox" >
<div class="Qlist" id="divOnline" style="display:none;">
<ul>
<li><a href="#"><img src="/imagesforcode/201209/floatServiceWeb.gif" alt="网页方式"></a></li>
<li><a href="#"><img src="/imagesforcode/201209/floatServiceQq.gif" alt="QQ方式"></a></li>
</ul>
</div>
<div id="divMenu"><img src="/imagesforcode/201209/floatService.gif" class="press" alt="在线客服"></div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>0
  </body>
</body>
</html>