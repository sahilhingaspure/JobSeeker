package com.mycompany.jobseeker;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

public class AdminDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String UName = "root";
    private static final String UPass = "root";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, UName, UPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public List<Admin> getAllAdmin() {
        List<Admin> adminList = new ArrayList<>();
        String sql = "SELECT * FROM admin";

        try (Connection con = getConnection();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                adminList.add(new Admin(
                        rs.getString("jobRole"),
                        rs.getString("location"),
                        rs.getInt("vacancy"),
                        rs.getString("time"),
                        rs.getString("datevalidation"),
                        rs.getString("packages")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminList;
    }

    public static boolean insertAdmin(Admin admin) {
        boolean status = false;
        String query = "INSERT INTO admin (jobRole, location, vacancy, time, datevalidation, packages) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection con = getConnection();
             PreparedStatement pst = con.prepareStatement(query)) {

            if (con == null) {
                System.out.println("Database connection failed!");
                return false;
            }

            pst.setString(1, admin.getJobRole());
            pst.setString(2, admin.getLocation());
            pst.setInt(3, admin.getVacancy());
            pst.setString(4, admin.getTime());
            pst.setString(5, admin.getDateValidation());
            pst.setString(6, admin.getPackages());

            int row = pst.executeUpdate();
            status = (row > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public static Admin getAdminByJobRole(String jobRole) {
        Admin admin = null;
        String sql = "SELECT * FROM admin WHERE jobRole = ?";

        try (Connection con = getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {

            if (con == null) {
                System.out.println("Database connection failed!");
                return null;
            }

            pst.setString(1, jobRole);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    admin = new Admin(
                            rs.getString("jobRole"),
                            rs.getString("location"),
                            rs.getInt("vacancy"),
                            rs.getString("time"),
                            rs.getString("datevalidation"),
                            rs.getString("packages")
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
}
