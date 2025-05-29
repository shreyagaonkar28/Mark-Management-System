package com.servlet;

import com.dao.MarkDAO;
import com.model.StudentMark;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ReportCriteriaServlet")
public class ReportCriteriaServlet extends HttpServlet {
    private MarkDAO markDAO = new MarkDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subject = request.getParameter("subject");
        String minMarksStr = request.getParameter("minMarks");
        String maxMarksStr = request.getParameter("maxMarks");

        int minMarks = 0;
        int maxMarks = 100;

        try {
            if (minMarksStr != null && !minMarksStr.trim().isEmpty())
                minMarks = Integer.parseInt(minMarksStr);

            if (maxMarksStr != null && !maxMarksStr.trim().isEmpty())
                maxMarks = Integer.parseInt(maxMarksStr);
        } catch (NumberFormatException e) {
            // ignore and keep defaults
        }

        if (subject == null) subject = "";

        List<StudentMark> reportList = null;
        try {
            reportList = markDAO.getMarksByCriteria(subject, minMarks, maxMarks);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("reportList", reportList);
        request.setAttribute("subject", subject);
        request.setAttribute("minMarks", minMarks);
        request.setAttribute("maxMarks", maxMarks);

        RequestDispatcher dispatcher = request.getRequestDispatcher("report_result.jsp");
        dispatcher.forward(request, response);
    }
}