<<<<<<< HEAD
<%@ page import="com.jhta.afterpay.user.dao.UserDao" %>
<%@ page import="com.jhta.afterpay.user.vo.User" %>
<%@ page import="com.jhta.afterpay.user.dao.ReviewDao" %>
<%@ page import="com.jhta.afterpay.user.vo.Review" %>
=======
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
  <link href="/common/css/style.css" rel="stylesheet" >
<<<<<<< HEAD
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
=======
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
  <title>AFTER PAY 마이페이지</title>
</head>
<style>
  h1{
    text-align: center;
  }
  #menu .list-group botton{
    text-decoration: none;
    text-emphasis-color: gray;
  }
</style>
<body>
<<<<<<< HEAD
<%@include file="../common/nav.jsp"%>
<%
  /*
  * user.jsp?id=hong
  *
  * 1. 요청파라미터 값 조회
  * 2. 사용자 정보 값 조회
  *
  */

  int userNo = 19;
  UserDao userDao = new UserDao();
  ReviewDao reviewDao = new ReviewDao();
  User user = userDao.getUserByNo(userNo);

  int pointStatus = userDao.getPointStatusByUserNo(userNo);
  int reviewCnt = reviewDao.getReviewCntByUserNo(userNo);
%>

=======
<%
   String userId = (String) session.getAttribute("USERID");
   String grade = (String) session.getAttribute("GRADE");
%>
<%@include file="../common/nav.jsp"%>
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
<div class="container">
  <div class="row mb-3">
    <div class="col-12">
      <h1>MyPage</h1>
      <hr style="border:solid 1px gray;">
    </div>
  </div>

  <!-- 로그인한 사용자 정보 요약 -->
  <div class="col-12">
    <!-- 좌측 이미지, 아이디, 등급 값 보여주기 -->
    <div class="hstack gap-3">
      <div class="p-2">
        <img src="https://i.pinimg.com/474x/3e/c0/d4/3ec0d48e3332288604e8d48096296f3e.jpg" class="img-thumbnail rounded mx-auto d-block" width="90">
      </div>
      <div class="p-2">
<<<<<<< HEAD
        <div class="fs-6"><strong><%=user.getId()%></strong></div>
        <div class="fs-6"><strong><%=user.getGradeId()%></strong></div>
      </div>
      <!-- 우측 정보수정하기 버튼 -->
      <div class="p-2 ms-auto">
        <a href="info.jsp">
          <button class="btn btn-primary" type="submit">
            정보 수정
          </button>
        </a>
=======
        <div class="fs-6"><strong>아이디 <%= userId%></strong></div>
        <div class="fs-6"><strong>등급 <%= grade%></strong></div>
      </div>
      <!-- 우측 정보수정하기 버튼 -->
      <div class="p-2 ms-auto">
        <button class="btn btn-primary" type="submit">정보 수정</button>
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
      </div>
    </div>
  </div>

  <hr style="border:solid 1px gray;" />

  <div class="row mb-3 ">
    <div class="col-12">
<<<<<<< HEAD
      <div class="btn-group btn-group-lg w-100" role="group" aria-label="Basic outlined example">
        <a type="button" class="btn btn-outline-secondary" href="point-history.jsp">
          <strong>적립금</strong><br/>
          <%=pointStatus%> 원
        </a>
        <a type="button" class="btn btn-outline-secondary" href="review.jsp">
          <strong>후기</strong><br/>
          <!-- 후기 페이지에 있는 건수의 합계 값 출력-->
          <%=reviewCnt%>건
=======
      <div class="btn-group  btn-group-lg w-100" role="group" aria-label="Basic outlined example">
        <a type="button" class="btn btn-outline-secondary">
          적립금<br/>
          30,000 원
        </a>
        <a type="button" class="btn btn-outline-secondary">
          후기<br/>
          3 건
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
        </a>
      </div>
    </div>
  </div>

  <div class="row mb-3">
    <div class="col-12">
      <div class="list-group">
<<<<<<< HEAD
        <a href="/user/orders.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          주문 내역
        </a>
        <a href="/user/resolution.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          취소/반품/교환 내역
        </a>
        <a href="/user/cart.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          장바구니
        </a>
        <a href="/user/wish-list.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          위시리스트
        </a>
        <a href="/user/qna.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          상품 문의 내역
        </a>
        <a href="#" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          공지사항
        </a>
        <a href="../index.jsp" class="fs-5 mb-3 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
=======
        <a href="/user/order.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          주문 내역
        </a>
        <a href="/user/resolution.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          취소/반품/교환 내역
        </a>
        <a href="/user/cart.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          장바구니
        </a>
        <a href="/user/wish-list.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          위시리스트
        </a>
        <a href="/user/qna.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          상품 문의 내역
        </a>
        <a href="#" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
          공지사항
        </a>
        <a href="../index.jsp" class="fs-5 mb-2 list-group-item list-group-item-action p-3 btn btn-outline-secondary">
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
          로그아웃
        </a>
      </div>
    </div>
  </div>
<<<<<<< HEAD
=======

  </div>
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>