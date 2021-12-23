<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<style>
  
    *{
      font-family: "서울남산체";
    }
    
        html,
    body {
      height: 100%;
    }
    
    body {
      
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: white;
      text-align: center;
    }
    
    section{
      margin: 100px auto;
    }
  
    .form-signin {
    width: 900px;
    padding: 60px 15px 25px 15px;
    margin: auto;
    border: 1px solid #c4c4c4;
  }
    
    .form-signin .checkbox {
      font-weight: 400;
    }
    
    .loginContent{
      margin-left: 10px;
      margin-bottom: 5px;
      display: block;
      text-align: left;
      color: #c4c4c4;
    }
    
    .payment-container{
      margin-top: 40px;
      margin-bottom: 40px;
    }
    
    .border-right{
      border-right: 1px solid black;
    }
    .fs_14{
      font-size: 14px;
    }
    .btn_mint{
      background-color: #94d5de;
      color: white;
    }
    #paymentDetail{
      text-align: left;
      
    }
    #paymentDetail span{
      display: block;
    }
    .line{
      height: 5px;
      width: 100%;
      max-width: 900px;
      block-size: 3px;
      background-color: #94D5DE;
      margin: auto;
      margin-bottom: 50px;        
    }
    #firstMenu{
      margin: auto; 
      max-width: 900px; 
    }
    </style>    
    
  <section>
  <div id="firstMenu">
    <h4 style="text-align: left;">결제하기</h4> 
    <div class="line"></div>
  </div>
  
  
    <main class="form-signin">
      
      <div class="payment-container">
        <div class="row fs_14">
              <div class="col-6 col-md-3">
            <img src="../../img/Thumbnail.png" alt="Thumbnail">
          </div>
              <div class="col-6 col-md-6" id="paymentDetail">
            <h3>YBS의 신나는 생활코딩</h3>
            <span>일시 : 2021.12.22</span>
            <span>총 : 1회</span>
            <span>수강인원 : 총 1명</span>
            <span>장소 : 서울시 금천구 대륭테크노타운 3차 509호</span>
          </div>
              <div class="col-6 col-md-3">
            <img src="../../img/YBS.png" alt="tutorPic">
            <span style="font-size: 18px;">YBS 선생님</span>
          </div>
            </div>
      </div>
      
      <div style="text-align: right; margin-right: 15px;">결제 금액: 30,000원</div>
    </main>
  
    <div id="paymentType" style="padding: 100px;">
      <button type="button" id="kakaoPay" class="btn btn_mint btn-lg" style="margin-right: 20px;">카카오페이</button>
      <button type="button" id="cardPay" class="btn btn_mint btn-lg">카드 결제</button>
    </div>
  </section>
    <script>
      //카카오페이
      $("#kakaoPay").click(e=>{
              
            //가맹점 식별코드
            IMP.init('imp77938975');
            IMP.request_pay({
              pg : 'kakaopay',
          pay_method : 'card', //생략 가능
          merchant_uid: "order_no_0005", // 상점에서 관리하는 주문 번호
          name : 'YBS의 신나는 생활코딩',
          amount : 100,
          buyer_email : 'user00@naver.com',
          buyer_name : '유저공공',
          buyer_tel : '010-0000-0000',
          buyer_addr : '',
          buyer_postcode : ''
            }, function(rsp) {
                console.log(rsp);
              if ( rsp.success ) {
                  var msg = '결제가 완료되었습니다.';
                  msg += '고유ID : ' + rsp.imp_uid;
                  msg += '상점 거래ID : ' + rsp.merchant_uid;
                  msg += '결제 금액 : ' + rsp.paid_amount;
                  msg += '카드 승인번호 : ' + rsp.apply_num;
              } else {
                   var msg = '결제에 실패하였습니다.';
                   msg += '에러내용 : ' + rsp.error_msg;
              }
              alert(msg);
            });
          
          });
      
      //카드결제
      $("#cardPay").click(e=>{
              
            //가맹점 식별코드
            IMP.init('imp77938975');
            IMP.request_pay({
              pg : 'nice',
          pay_method : 'card', //생략 가능
          merchant_uid: "order_no_0005", // 상점에서 관리하는 주문 번호
          name : 'YBS의 신나는 생활코딩',
          amount : 100,
          buyer_email : 'user00@naver.com',
          buyer_name : '유저공공',
          buyer_tel : '010-0000-0000',
          buyer_addr : '',
          buyer_postcode : ''
            }, function(rsp) {
                console.log(rsp);
              if ( rsp.success ) {
                  var msg = '결제가 완료되었습니다.';
                  // msg += '고유ID : ' + rsp.imp_uid;
                  // msg += '상점 거래ID : ' + rsp.merchant_uid;
                  // msg += '결제 금액 : ' + rsp.paid_amount;
                  // msg += '카드 승인번호 : ' + rsp.apply_num;
              } else {
                   var msg = '결제에 실패하였습니다.';
                   msg += '에러내용 : ' + rsp.error_msg;
              }
              alert(msg);
            });
          
          });
    </script>
<%@ include file="/views/common/footer.jsp" %>