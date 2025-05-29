package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ReportServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Just forward to report_form.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("report_form.jsp");
        dispatcher.forward(request, response);
    }
}