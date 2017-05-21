<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
$('#publish').click(function(){
layer.open({
  type: 2,
  title:'发布新的话题',
   area : ['970px' , '550px'],
  content: '/student-community/jsps/front/discuss-publish.jsp'
}); 
});
