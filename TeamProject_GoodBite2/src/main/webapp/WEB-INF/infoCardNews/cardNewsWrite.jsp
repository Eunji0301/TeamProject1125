<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@page import="com.HelloHealthy.myapp.domain.BoardVo" %> --%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <% 
 /* BoardVo bv = (BoardVo)request.getAttribute("bv");   //강제형변환  양쪽형을 맞춰준다 
 
 String memberName = "";
 if (session.getAttribute("memberName") !=null){
	 memberName = (String)session.getAttribute("memberName");
 }
 int midx=0;
 if (session.getAttribute("midx") !=null){
	 midx = Integer.parseInt(session.getAttribute("midx").toString());
 } */
 %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>cardNewsWrite</title>
<link href="${pageContext.request.contextPath}/resources/css/socss/cardNewsWrite.css" rel="stylesheet">
<!--jquery CDN주소 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script> 
<script>
function checkImageType(fileName){	
	var pattern = /jpg$|gif$|png$|jpeg$/i;    //자바스크립트의 정규표현식	
	return fileName.match(pattern);
} 
function getOriginalFileName(fileName){    //원본 파일이름 추출
	var idx = fileName.lastIndexOf("_")+1;
	return fileName.substr(idx);
}
function getImageLink(fileName){
	
	var front = fileName.substr(0,12);
	var end = fileName.substr(14);
	return front+end;
}
function download(){	
	 //주소사이에 s-는 빼고	
	var downloadImage = getImageLink("${bv.filename}"); 
	var downLink = "${pageContext.request.contextPath}/board/displayFile.aws?fileName="+downloadImage+"&down=1";
	
	return downLink;
}
function commentDel(cidx){	
	let ans= confirm("삭제하시겠습니까?");	
	if (ans== true){
		
		$.ajax({
			type :  "get",    //전송방식
			url : "${pageContext.request.contextPath}/comment/"+cidx+"/commentDeleteAction.aws",
			dataType : "json",       // json타입은 문서에서  {"키값" : "value값","키값2":"value값2"}
			success : function(result){   //결과가 넘어와서 성공했을 받는 영역
			//	alert("전송성공 테스트");	
			//	alert(result.value);
			$.boardCommentList();								
			},
			error : function(){  //결과가 실패했을때 받는 영역						
				alert("전송실패");
			}			
		});			
	}	
	return;
}

//jquery로 만드는 함수  ready밖에 생성
$.boardCommentList = function(){
	//alert("test");
	var block = $("#block").val();
	//alert("block:"+block);
	$.ajax({
		type :  "get",    //전송방식
		url : "${pageContext.request.contextPath}/comment/${bv.bidx}/"+block+"/commentList.aws",
		dataType : "json",       // json타입은 문서에서  {"키값" : "value값","키값2":"value값2"}
		success : function(result){   //결과가 넘어와서 성공했을 받는 영역
			//alert("전송성공 테스트");				
					
			var strTr = "";				
			$(result.clist).each(function(){	
			
			var btnn="";			
			 //현재로그인 사람과 댓글쓴 사람의 번호가 같을때만 나타내준다
			if (this.midx == "${midx}") {
				if (this.delyn=="N"){
					btnn= "<button type='button' onclick='commentDel("+this.cidx+");'>삭제</button>";
				}			
			}
			strTr = strTr + "<tr>"
			/* +"<td>"+this.cidx+"</td>" */
			+"<td>"+this.cwriter+"</td>"
			+"<td class='content'>"+this.ccontents+"</td>"
			+"<td>"+this.writeday+"</td>"
			+"<td>"+btnn+"</td>"
			+"</tr>";					
		});		       
		
		var str  = "<table class='replyTable'>"
			+"<tr>"
			/* +"<th>번호</th>" */
			+"<th>작성자</th>"
			+"<th>내용</th>"
			+"<th>날짜</th>"
			+"<th>DEL</th>"
			+"</tr>"+strTr+"</table>";		
		
		$("#commentListView").html(str);		
		
		if (result.moreView =="N"){
			$("#morebtn").css("display","none");  //감춘다
		}else{
			$("#morebtn").css("display","block"); //보여준다			
		}	
		let nextBlock = result.nextBlock;	
		$("#block").val(nextBlock);
						
		},
		error : function(){  //결과가 실패했을때 받는 영역						
			alert("전송실패");
		}			
	});	
}

$(document).ready(function(){	
	
	$("#dUrl").html(getOriginalFileName("${bv.filename}"));	
	
	$("#dUrl").click(function(){	
		$("#dUrl").attr("href",download());	
		return;
	});	
	
	$.boardCommentList();	
	
	$("#btn").click(function(){
	//	alert("추천버튼 클릭");		
		$.ajax({
			type :  "get",    //전송방식
			url : "${pageContext.request.contextPath}/board/boardRecom.aws?bidx=${bv.bidx}",
			dataType : "json",       // json타입은 문서에서  {"키값" : "value값","키값2":"value값2"}
			success : function(result){   //결과가 넘어와서 성공했을 받는 영역
			//	alert("전송성공 테스트");				
				var str ="추천("+result.recom+")";			
				$("#btn").val(str);			
			},
			error : function(){  //결과가 실패했을때 받는 영역						
				alert("전송실패");
			}			
		});			
	});	
	
	$("#cmtBtn").click(function(){
	
		let midx = "${midx}";		
		if (midx == "" || midx == "null" || midx == null || midx == 0){
			alert("로그인을 해주세요");
			return;
		}  				
		let cwriter = $("#cwriter").val();
		let ccontents = $("#ccontents").val();
		
		if (cwriter == ""){
			alert("작성자를 입력해주세요");
			$("#cwriter").focus();
			return;		
		}else if (ccontents ==""){
			alert("내용을 입력해주세요");
			$("#ccontents").focus();
			return;
		}		
		$.ajax({
			type :  "post",    //전송방식
			url : "${pageContext.request.contextPath}/comment/commentWriteAction.aws",
			data : {"cwriter" : cwriter, 
					   "ccontents" : ccontents, 
					   "bidx" : "${bv.bidx}",
					   "midx" : "${midx}"
					   },
			dataType : "json",       // json타입은 문서에서  {"키값" : "value값","키값2":"value값2"}
			success : function(result){   //결과가 넘어와서 성공했을 받는 영역
			//	alert("전송성공 테스트");			
			//	var str ="("+result.value+")";			
			//	alert(str);		
				if(result.value ==1){
					$("#ccontents").val("");
					 $("#block").val(1);
				}				
				$.boardCommentList();
			},
			error : function(){  //결과가 실패했을때 받는 영역						
				alert("전송실패");
			}			
		});			
	});	
	
	$("#more").click(function(){			
		$.boardCommentList();		
	});
	
	
});
</script>
</head>
<body>
<header>
	<div class="inner">
		<h1 class="mainTitle">카드 뉴스</h1>
	</div>
</header>

<div class="board write"> <!-- 수정사항 -->
	<div class="inner">
		<article class="detailContents">
			<div class="contentTitle">
		    	<p class="title">제목</p>
		    	<a class="subbox">${bv.subject}</a>
			</div>
			<p class="write">${bv.writer}</p>
			<div class="editer">에티터</div>
			<div class="content">
				${bv.contents}	
			</div>	
			<c:if test="${!empty bv.filename}">
			<img src="${pageContext.request.contextPath}/board/displayFile.aws?fileName=${bv.filename}">	
			<p>
			<a id="dUrl"  href="#"  class="fileDown">첨부파일 다운로드</a>
			</p>		
			</c:if>
		</article>

		<div class="btnBox">
			<a class="btn aBtn" href="${pageContext.request.contextPath}/board/boardDelete.aws?bidx=${bv.bidx}">삭제</a>
			<a class="btn aBtn" href="${pageContext.request.contextPath}/board/boardModify.aws?bidx=${bv.bidx}">저장</a>
		</div>
	</div>
</div>
</body>
</html>