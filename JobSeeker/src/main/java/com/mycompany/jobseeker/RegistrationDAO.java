/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.jobseeker;

import com.mycompany.jobseeker.Registration;
import static com.mycompany.jobseeker.RegistrationDAO.getConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author
 */


public class RegistrationDAO {
    
   private static final String  URL="jdbc:mysql://localhost:3306/mydb";
    private static final String UName="root";  
    private static final String Upass="root";
   
    
    public static Connection getConnection() throws SQLException
            { Connection con=null;
                 try
                {
                  Class.forName("com.mysql.cj.jdbc.Driver");
                   con = DriverManager.getConnection(URL, UName, Upass);

                }
              catch (Exception e) 
                {        
                    e.printStackTrace();
                }
                 return con;

            }
     public List<Registration> getAllRegistrations()
        {
        List<Registration> registration = new ArrayList<>();
        String sql = "SELECT * FROM registration";
                try{
            Connection con = getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                registration.add(new Registration(rs.getString("Name"),rs.getString("EmailId"),rs.getString("Username"),rs.getString("Password")));
            }
                }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
            return  registration;
        }
     
     public static boolean insertRegistration(Registration registration) {
        boolean status = false;
        

        try {
             Connection con =getConnection();

            String sql = "INSERT INTO registration( Name, EmailId,Username,Password) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);

           
            pst.setString(1, registration.getName());
            pst.setString(2, registration.getEmailId());
            pst.setString(3, registration.getUsername());
            pst.setString(4, registration.getPassword());

            int row = pst.executeUpdate();
            if (row > 0) {
                status = true;
            }

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
     }

    List<Registration> getAllRegistration() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    
}
