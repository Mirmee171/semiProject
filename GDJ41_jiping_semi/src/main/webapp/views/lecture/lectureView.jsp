<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<%@ page import="com.jiping.lecture.model.vo.Lecture,
				com.jiping.lecture.model.vo.LectureContent,
				com.jiping.lecture.model.vo.LectureSchedule " %>
<%
	Lecture le= (Lecture)request.getAttribute("le");
	LectureContent content= (LectureContent)request.getAttribute("content");
	LectureSchedule sc = (LectureSchedule)request.getAttribute("schedule");

%>

<section>
    <section>
      <div class="container">
        <div id="mainInfo" class="row">
          <!--보라 1-->
          <div id="left" class="col-7">
            <div id="info_class">
              <p class="card-text"><small class="text-muted">이 클래스는 <%=le.getLectureType() %>클래스 입니다. </small></p>
              <h5 class="card-title"><%=le.getLectureTitle() %> </h5>
              <!--class="card-title"-->
              <div class="card">
                <div class="card-body">
                  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="https://post-phinf.pstatic.net/MjAxOTEyMTJfMTQ3/MDAxNTc2MTM4NTUyNzM4.NcQoxd0YDv6Ihnb3snU5cF-OVlBXyS5eL6pEd-4Df74g.m8xgeLxThkSKU8_dYPo9UlbdgLiTaYUG6WO34ER_k-0g.JPEG/%EC%A4%80%ED%98%81_%281%29.jpg?type=w1200
                              " class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img
                          src="https://post-phinf.pstatic.net/MjAyMDA5MjVfMTc4/MDAxNjAxMDI0MTAyNTY2.hV-sDoyZYI6CSJunuYzelN-t6RmQ63NyuGNvRTKCk3cg.K_DN1PZKXoeMTp-sZLeNjL3MpONfqMfFMpslHkvRM3Mg.JPEG/%EC%A4%80%ED%98%81_%2813%29.jpg?type=w1200"
                          class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img
                          src="https://post-phinf.pstatic.net/MjAyMDA3MjZfMjUz/MDAxNTk1NzUxOTczNDcy.Qio9niIKRMWxwQ92ilGnSmOncAuUpbAiZ1re0hl6R6wg.21S6u-Ctupv21VxBqMq0q911-SZ4AkyYl9q8oEUZX0kg.JPEG/%EC%84%9C%ED%94%84%EB%A1%9C_%2819%29.jpg?type=w1200"
                          class="d-block w-100" alt="...">
                      </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                      data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                      data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
<%-- <script>
$(()=>{
	$.ajax({
		url:"<%=request.getContextPath()%>/lecture/lecture.do",
		data: 
		success: data=>{
			
		}
	})
})
</script>   --%>          
            <div id="info_notice">
              <h5 class="card-title">클래스 상세소개</h5>
              <div class="card">
                <div class="card-body">
                  <p class="card-text">
                    <%=content.getLectureIntroduce() %>
                  </p>
                </div>
              </div>
            </div>
            <div id="info_basic">
              <h5 class="card-title">클래스 진행방식</h5>
              <div class="card">
                <div class="card-body">
                  <p class="card-text">
                  <%=content.getCurriculum() %>
                  </p>
                </div>
              </div>

            </div>
            <div id="info_recommend">
              <h5 class="card-title">이런사람에게 추천합니다!</h5>
              <div class="card">
                <div class="card-body">
                  <p class="card-text">
					<%=content.getRecommend() %>
                  </p>
                </div>
              </div>

            </div>
            <div id="info_extracost">
              <h5 class="card-title">잠깐! 이 수업은 준비물이 필요합니다.</h5>
              <div class="card">
                <div class="card-body">
                  <p class="card-text">
                    <%=content.getLectureNotice() %>
                  </p>
                </div>
              </div>

            </div>
          </div>

          <div id="right" class="col">
            <div id="tutor" style="margin-top: 39px;">
              <h5 class="card-title">튜터를 소개합니다!</h5>
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-center">
                    <div name="flex-shrink-0">
                      <img src="https://post-phinf.pstatic.net/MjAyMDA5MjVfMjEy/MDAxNjAxMDI0Nzc0MDM1.QKM6MrAbdwbp4ep1K0Q14ThsgdsYxMApPB7_934dwkMg.gCtesd36-LkJhWUmoTzeMSYsLOiKYgKMAXXsyGl2d5kg.JPEG/%EC%A4%80%ED%98%81_%2839%29.jpg?type=w1200
                        " alt="..." class="img_basic img_tutor">
                    </div>
                    <div class="flex-grow-1 ms-3">
                      <span>이름 : </span><br>
                      <span>연락처 : </span><br>
                      <a href=""><img src="https://thedaylightaward.com/wp-content/uploads/2019/12/instagram-icon.png"
                          alt="instagram" class="socialImg">
                      </a>
                      <a href=""><img src="https://cdn.worldvectorlogo.com/logos/facebook-icon-1.svg" alt="facebook"
                          class="socialImg">
                      </a>
                      <a href=""><img src="https://www.coolstay.co.kr/img/main/naver.png" alt="blog" class="socialImg">
                      </a>
                    </div>
                  </div>
                  <br>
                  <div class="flex-grow-1 ms-3">
                    <span>경력</span>
                    <ul>
                      <li>경력1</li>
                      <li>경력2</li>
                    </ul>
                    <span>튜터의 한마디</span>
                    <p class="tutorbox_info">튜터의 한마디</p>
                  </div>
                </div>
              </div>
            </div>
            
<!-- 금요일 여기 for문이랑 수강신청 구현 -->
            <div id="class_schedule">
              <h5 class="card-title">수업일정</h5>
              <div class="list-group">
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  <div class="schedule-text">
                    <span class="class-date"><%=sc.getLectureDate() %> </span> <span style="padding-left:30px"> 19:30-21:00</span>
                    <br>
                    <span><%=sc.getLectureAddress() %></span>
                  </div>
                  <span class="class-region"><%=sc.getLectureLocation() %></span>
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  <div class="schedule-text">
                    <span class="class-date">2021.12.21(토) </span> <span> 19:30-21:00</span>
                    <br>
                    <span>대륭테크노타운 3차 509호</span>
                  </div>
                  <span class="class-region">서울시 금천구</span>
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  <div class="schedule-text">
                    <span class="class-date">날짜 </span> <span> 시간 </span>
                    <br>
                    <span>세부장소</span>
                  </div>
                  <span class="class-region">지역</span>
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  <div class="schedule-text">
                    <span class="class-date">날짜 </span> <span> 시간 </span>
                    <br>
                    <span>세부장소</span>
                  </div>
                  <span class="class-region">지역</span>
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  <div class="schedule-text">
                    <span class="class-date">날짜 </span> <span> 시간 </span>
                    <br>
                    <span>세부장소</span>
                  </div>
                  <span class="class-region">지역</span>
                </label>
                <div id="scheduleBtn" class="d-flex justify-content-center">
                  <button id="wish" type="button" class="btn btn-primary btn-lg btn-pink ">♥ 찜 하 기</button>
                  <button id="apply" type="button" class="btn btn-primary btn-lg btn-basic">수 강 신 청</button>
                </div>
              </div>
            </div>
            <div id="class_submit" style="display: none;">
              <h5 class="card-title">수강신청</h5>
              <div class="card">
                <div class="card-body apply">
                  <div id="toggletest"></div>
                  <div id="applycount">
                    <h6>수강신청 현황</h6>
                    <span>14/15</span>
                  </div>
                  <div>
                    <h6>튜터에게 전하는 말</h6>
                    <div id="tutor-message">
                      <textarea id="totutor" class="card" cols="43" rows="7"
                        placeholder="예) 초보니까 쉽게 가르쳐주세요!"></textarea>
                      <div id="check-word-count" style="float: right;">0/70</div>
                    </div>
                  </div>
                  <div>
                    <p>총 결제금액</p>
                    <p style="float: right;">45,000원</p>
                  </div>
                </div>

              </div>
              <div>
                <button type="button" class="btn btn-primary btn-lg btn-basic" style="float: right;">결 제 하 기</button>
              </div>
            </div>
          </div>

          <div id="review" class="row-1">
            <!--보라 2-->
            <div class="line"></div>
            <div class="review-enroll card">
              <div class="card-body">
                <!-- -------------------------------------------------- -->
                <div class="review-head">
                  <div id="title">클래스제목</div>
                  <div id="tutor-review">튜터이름</div>
                </div>
                <div id="starrate">
                  <div>
                    <img class="img_basic img_review" src="https://post-phinf.pstatic.net/MjAxOTEyMTJfMTMy/MDAxNTc2MTM4NTc5MjAy.d6qoHmyl15AA4MjNVN7uOMbOJplPrhTktLxfMQXze9Ig.Ui8K9n80tzLCRsYmAK1VGmFxcRJ6-fndALhaNI69n9Ug.JPEG/%EC%A4%80%ED%98%81_%284%29.jpg?type=w1200
                      ">
                    <span>닉네임</span>
                  </div>
                  <div>
                    <fieldset class="rating">
                      <span>평점:</span>
                      <input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5"
                        title="Awesome - 5 stars"></label>
                      <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half"
                        for="star4half" title="Pretty good - 4.5 stars"></label>
                      <input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4"
                        title="Pretty good - 4 stars"></label>
                      <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half"
                        for="star3half" title="Meh - 3.5 stars"></label>
                      <input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3"
                        title="Meh - 3 stars"></label>
                      <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half"
                        for="star2half" title="Kinda bad - 2.5 stars"></label>
                      <input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2"
                        title="Kinda bad - 2 stars"></label>
                      <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half"
                        for="star1half" title="Meh - 1.5 stars"></label>
                      <input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1"
                        title="Sucks big time - 1 star"></label>
                      <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf"
                        title="Sucks big time - 0.5 stars"></label>
                    </fieldset>
                  </div>
                </div>
                <div class="card">
                  <textarea class="card-body" id="totutor" cols="43" rows="3"
                    placeholder="강의에대한 솔직한 평가를 남겨주세요! &#13;&#10;*악의적인 비방은 무통보 삭제가 될 수 있습니다."></textarea>
                </div>
                <span style="float: right;">0/100</span> <br>
                <button type="submit" class="btn btn-primary btn-lg btn-basic" style="float: right; ">리뷰 등록하기</input>
              </div>
            </div>

            <div id="review-list">
              <h5 class="card-title ">수강생 리뷰</h5>
              <div class="card">
                <div class="card-body ">
                  <!-- 리뷰시작 -->
                  <div class="d-flex ">
                    <div name="review flex-shrink-0">
                      <img class="img_basic img_review" src="https://post-phinf.pstatic.net/MjAxOTEyMTJfMTMy/MDAxNTc2MTM4NTc5MjAy.d6qoHmyl15AA4MjNVN7uOMbOJplPrhTktLxfMQXze9Ig.Ui8K9n80tzLCRsYmAK1VGmFxcRJ6-fndALhaNI69n9Ug.JPEG/%EC%A4%80%ED%98%81_%284%29.jpg?type=w1200
                ">
                    </div>
                    <div class="flex-grow-1 ms-3">
                      <div style="float: right;">
                        <span>2021.12.14 </span><span id="report"><a href=""> 신고</a></span>
                        <!-- 신고사유팝업 연결 -->
                      </div>
                      <span>★★★★★</span><br>
                      <span>홍대불주먹</span><br>
                      <p>
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                      </p>
                    </div>
                  </div>
                  <!-- 리뷰끝 -->
                  <div class="d-flex ">
                    <div name="review flex-shrink-0">
                      <img class="img_basic img_review" src="https://post-phinf.pstatic.net/MjAxOTEyMTJfMTMy/MDAxNTc2MTM4NTc5MjAy.d6qoHmyl15AA4MjNVN7uOMbOJplPrhTktLxfMQXze9Ig.Ui8K9n80tzLCRsYmAK1VGmFxcRJ6-fndALhaNI69n9Ug.JPEG/%EC%A4%80%ED%98%81_%284%29.jpg?type=w1200
                ">
                    </div>
                    <div class="flex-grow-1 ms-3">
                      <div style="float: right;">
                        <span>2021.12.14 </span><span id="report"><a href=""> 신고</a></span>
                        <!-- 신고사유팝업 연결 -->
                      </div>
                      <span>★★★★★</span><br>
                      <span>홍대불주먹</span><br>
                      <p>
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                        1월부터 변경된 지침~ 1/3일부터는 수업시간이 변경되고 한시적으로 시행했던 훈련장려금도 복원된다고 하네요.
                        아쉽다.. 훈련 시작일로부터 산정해주면 좋을텐데 왜 수업일 기준으로 보나요~ 이것에 대한 건의는..고노부에 직접 하도록 하세요~!
                      </p>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <br><br><br><br><br>
    </section>

    <script>
      $(() => {
        $("#apply").click(e => {
          const span = $("<span>");
          const test = $(".schedule-text").clone();
          console.log(test);
          span.append(test)

          $("#class_submit").show();
          $("#toggletest").html(test);
        });

        $("#wish").click(e => {
          alert("찜할래?")
        })



      });
    </script>

<%@ include file="/views/common/footer.jsp" %>