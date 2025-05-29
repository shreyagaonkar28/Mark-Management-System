package com.servlet;

import com.dao.MarkDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/DeleteMarkServlet")
public class DeleteMarkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            int studentId = Integer.parseInt(request.getParameter("studentId"));

            MarkDAO dao = new MarkDAO();
            boolean result = dao.deleteMark(studentId);

            if (result) {
                request.setAttribute("message", "Record deleted successfully.");
            } else {
                request.setAttribute("message", "Record not found.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error deleting record.");
        }

        request.getRequestDispatcher("markdisplay.jsp").forward(request, response);
    }
}