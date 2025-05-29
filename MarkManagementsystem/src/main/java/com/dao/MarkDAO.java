package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.model.StudentMark;

public class MarkDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/MarkDB";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    // Database connection method with explicit driver loading
    private Connection connect() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Explicitly load JDBC driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    // Add a new student mark record
    public void addMark(StudentMark mark) throws SQLException {
        String sql = "INSERT INTO StudentMarks (StudentID, StudentName, Subject, Marks, ExamDate) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = connect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, mark.getStudentID());
            stmt.setString(2, mark.getStudentName());
            stmt.setString(3, mark.getSubject());
            stmt.setInt(4, mark.getMarks());
            stmt.setDate(5, Date.valueOf(mark.getExamDate()));
            stmt.executeUpdate();
        }
    }

    // Fetch all student marks
    public List<StudentMark> getAllMarks() throws SQLException {
        List<StudentMark> list = new ArrayList<>();
        String sql = "SELECT * FROM StudentMarks";
        try (Connection conn = connect();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                StudentMark mark = new StudentMark(
                    rs.getInt("StudentID"),
                    rs.getString("StudentName"),
                    rs.getString("Subject"),
                    rs.getInt("Marks"),
                    rs.getDate("ExamDate").toString()
                );
                list.add(mark);
            }
        }
        return list;
    }

    // Delete student mark by ID
    public boolean deleteMark(int studentID) throws SQLException {
        String sql = "DELETE FROM StudentMarks WHERE StudentID=?";
        boolean rowDeleted = false;
        try (Connection conn = connect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, studentID);
            int affectedRows = stmt.executeUpdate();
            rowDeleted = affectedRows > 0;
        }
        return rowDeleted;
    }

    // Update existing student mark
    public void updateMark(int studentID, int marks) throws SQLException {
        String sql = "UPDATE StudentMarks SET Marks=? WHERE StudentID=?";
        try (Connection conn = connect(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, marks);
            stmt.setInt(2, studentID);
            stmt.executeUpdate();
        }
    }
    
 // Add this method inside the MarkDAO class

    public List<StudentMark> getMarksByCriteria(String subject, int minMarks, int maxMarks) throws SQLException {
        List<StudentMark> list = new ArrayList<>();
        String sql = "SELECT * FROM StudentMarks WHERE Subject LIKE ? AND Marks BETWEEN ? AND ?";
        
        try (Connection conn = connect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setString(1, "%" + subject + "%");  // partial match on subject
            stmt.setInt(2, minMarks);
            stmt.setInt(3, maxMarks);
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    StudentMark mark = new StudentMark(
                        rs.getInt("StudentID"),
                        rs.getString("StudentName"),
                        rs.getString("Subject"),
                        rs.getInt("Marks"),
                        rs.getDate("ExamDate").toString()
                    );
                    list.add(mark);
                }
            }
        }
        return list;
    }

    
    
}