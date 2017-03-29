<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    /*
            画圆
    */
    #round:before,
 #round:after {
     position: absolute;
     content: "";
     left: 500px;
     top: 0;
     width: 500px;
     height: 800px;
     background: red;
     -moz-border-radius: 500px 500px 0 0;
     border-radius: 500px 500px 0 0;
     -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
         -ms-transform: rotate(-45deg);
          -o-transform: rotate(-45deg);
             transform: rotate(-45deg);
     -webkit-transform-origin: 0 100%;
        -moz-transform-origin: 0 100%;
         -ms-transform-origin: 0 100%;
          -o-transform-origin: 0 100%;
             transform-origin: 0 100%;
 }
 #round:after {
     left: 0;
     -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
         -ms-transform: rotate(45deg);
          -o-transform: rotate(45deg);
             transform: rotate(45deg);
     -webkit-transform-origin: 100% 100%;
        -moz-transform-origin: 100% 100%;
         -ms-transform-origin: 100% 100%;
          -o-transform-origin: 100% 100%;
             transform-origin :100% 100%;
 }

</style>
</head>
<body>
<div id="round"></div>

</body>
</html>