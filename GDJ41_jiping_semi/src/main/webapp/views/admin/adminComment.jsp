<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
	<section id="sectionMargin">
         <div id="mypage-container" class="flex">
             <div class=" inlineblock overflow" id="mypage-menu">          
                 <h3>MANAGER</h3>                           
                 <div class="" id="my-menu" >
                     <ul id="menu-list">
                         <nav class="nav-sub">
                             <li ><a href="">· 클래스관리</a></li>
                             <ul id="sub-menu">
                                 <li><a>- 클래스 승인</a></li>
                                 <li><a>- 클래스 삭제</a></li>
                             </ul>
                         </nav>
                         <li><a href="">· 댓글 관리</a></li>
                     </ul>                  
                 </div>
             </div>   
             <div id="mypage-content" class="inlineblock">
                 <div class="flex">
                     <img src="<%=request.getContextPath() %>/img/management.png" alt="" width="30px" height="30px">
                     <h4 class="inlineblock" style="margin-bottom: 0; margin-left: 5px;" >클래스 승인</h4>
                 </div>
                 <div class="line"></div>
                     <div class="flex" id="admin-class-appr">
                     <table class="table" id="class-appr-tbl">
                         <thead>
                           <tr>
                             <th scope="col">클래스 번호</th>
                             <th scope="col">클래스명</th>
                             <th scope="col">강사 연락처</th>
                             <th scope="col">클래스 승인여부</th>
                           </tr>
                         </thead>
                         <tbody>
                           <tr>
                             <th scope="row">1</th>
                             <td>알콩이의 아이패드 드로잉</td>
                             <td>010-2323-4545</td>
                             <td>
                                 <button>클래스 승인</button>
                                 <button>클래스 거부</button>
                             </td>
                           </tr>
                           <tr>
                             <th scope="row">2</th>
                             <td>Jacob</td>
                             <td>Thornton</td>
                             <td>
                                 <button>클래스 승인</button>
                                 <button>클래스 거부</button>
                             </td>
                           </tr>
                           <tr>
                             <th scope="row">3</th>
                             <td>Larry the Bird</td>
                             <td>Larry the Bird</td>
                             <td>
                                 <button>클래스 승인</button>
                                 <button>클래스 거부</button>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                     </div>  
                 </div>    
         </div>
     </section>
<%@ include file="/views/common/footer.jsp"%>
<script>
	//마이클래스 서브메뉴!!
	$("#sub-menu").hide();
	$(".nav-sub").mouseenter(e=>{
	    $("#sub-menu").show();
	})  
	$(".nav-sub").mouseleave(e=>{
	    $("#sub-menu").hide();
	});
</script>