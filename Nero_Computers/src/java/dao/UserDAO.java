package dao;

import connection.DBConnection;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sahan Maitipe
 */
public class UserDAO {

    private Connection connection;
    private static UserDAO userDAO;

    private UserDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBConnection.getInstance().getConnection();
    }

    public static UserDAO getInstance() throws ClassNotFoundException, SQLException {
        if (userDAO == null) {
            userDAO = new UserDAO();
        }

        return userDAO;
    }

    public User getUserByUsernameAndPassword(String username, String password) throws SQLException {
        User user = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT * FROM Users WHERE Username = ? AND Password = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setUserID(resultSet.getInt("UserID"));
                user.setUsername(resultSet.getString("Username"));

            }
        
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        }

        return user;
    }

    

    public User getUserByUsername(String username) throws SQLException{
        User user = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT * FROM Users WHERE Username = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setUserID(resultSet.getInt("UserID"));
                user.setUsername(resultSet.getString("Username"));
                user.setPassword(resultSet.getString("Password"));
                user.setEmail(resultSet.getString("Email"));
            }else{
                user = null;
            }
        }finally {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        }

        return user;
    }

    
    
    public boolean createUser(User newUser) throws SQLException {
        PreparedStatement preparedStatement = null;

            // Check if the username already exists
            if (getUserByUsername(newUser.getUsername()) != null) {
                // Username already exists, return false to indicate failure
                return false;
            }else{
            // If the username is available, insert the new user into the database
                String query = "INSERT INTO Users (Username, Password, Email) VALUES (?, ?, ?)";
                preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, newUser.getUsername());
                preparedStatement.setString(2, newUser.getPassword());
                preparedStatement.setString(3, newUser.getEmail());

                // Execute the insert query
                int rowsAffected = preparedStatement.executeUpdate();

                // If the insertion was successful, return true
                return true;      
            }
    }
    
    
    

}
