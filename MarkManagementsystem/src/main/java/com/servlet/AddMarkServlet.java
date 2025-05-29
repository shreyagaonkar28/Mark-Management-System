package com.servlet;

import com.dao.MarkDAO;
import com.model.StudentMark;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/addMark")
public class AddMarkServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int studentID = Integer.parseInt(request.getParameter("studentID"));
            String studentName = request.getParameter("studentName");
            String subject = request.getParameter("subject");
            int marks = Integer.parseInt(request.getParameter("marks"));
            String examDate = request.getParameter("examDate");

            StudentMark mark = new StudentMark(studentID, studentName, subject, marks, examDate);
            MarkDAO dao = new MarkDAO();
            dao.addMark(mark);

            response.sendRedirect("markdisplay.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}