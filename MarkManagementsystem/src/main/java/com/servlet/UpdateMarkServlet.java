package com.servlet;

import com.dao.MarkDAO;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateMarkServlet")
public class UpdateMarkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        int marks = Integer.parseInt(request.getParameter("marks"));

        MarkDAO dao = new MarkDAO();
        try {
            dao.updateMark(studentId, marks);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("markdisplay.jsp");
    }
}