/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.jobseeker;


import static com.mycompany.jobseeker.RegistrationDAO.getConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";
    
 
public static boolean insertUser(User user) {
        boolean status = false;
        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL,USERNAME, PASSWORD);
            String query = "INSERT INTO user (username, gender, mobileno, city, education, filePath) VALUES (?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getGender());
            ps.setString(3, user.getMobileno());
            ps.setString(4, user.getCity());
            ps.setString(5, user.getEducation());
            ps.setString(6, user.getFilePath());
            status=ps.executeUpdate()>0;
            con.close();
            con.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        
        return status;
    }
  public List<User> getAllUsers()
        {
        List<User> user = new ArrayList<>();
        String sql = "SELECT * FROM user";
                try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                user.add(new User(rs.getString("username"),rs.getString("gender"),rs.getString("mobileno"),rs.getString("city"),rs.getString("education"),rs.getString("filePath")));
            }
                }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
            return  user;
        }

List<User> getAllUser() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
























     