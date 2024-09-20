<<<<<<< HEAD
<%@ page import="com.jhta.afterpay.user.dao.UserDao" %>
<%@ page import="com.jhta.afterpay.user.vo.User" %>
=======
<%@ page import="com.jhta.afterpay.user.UserDao" %>
<%@ page import="com.jhta.afterpay.user.User" %>
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    UserDao userDao = new UserDao();
    User user = userDao.getUserById(id);

    if(user == null){
        response.sendRedirect("login-form.jsp?invalid");
        return;
    }

    if("Y".equals(user.getIsBanned())){
        response.sendRedirect("login-form.jsp?disabled");
        return;
    }

    String sha256Password = DigestUtils.sha256Hex(pwd);
    if (!sha256Password.equals(user.getPwd())) {
        response.sendRedirect("login-form.jsp?invalid");
        return;
    }

    session.setAttribute("USERNO", user.getNo());
    session.setAttribute("USERID", user.getId());
    session.setAttribute("USERNAME", user.getName());
<<<<<<< HEAD
=======
    session.setAttribute("GRADE",user.getGradeId());
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a

    response.sendRedirect("/index.jsp");




%>
