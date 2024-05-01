package dao;

import connection.DBConnection;
import dto.Cart;
import dto.CartItem;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sahan Maitipe
 */
public class CartDAO {

    private Connection connection;
    private static CartDAO cartDAO;

    private CartDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBConnection.getInstance().getConnection();
    }

    public static CartDAO getInstance() throws ClassNotFoundException, SQLException {
        if (cartDAO == null) {
            cartDAO = new CartDAO();
        }
        return cartDAO;
    }

    public boolean addToCart(Cart cart) {
        String query = "INSERT INTO Carts (UserID, ProductID, Quantity) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, cart.getUserID());
            preparedStatement.setInt(2, cart.getProductID());
            preparedStatement.setInt(3, cart.getQuantity());
            int affectedRows = preparedStatement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

        public List<CartItem> getProductDetailsForUser(int userID) {
        List<CartItem> cartItems = new ArrayList<>();
         String query = "SELECT p.ProductID, p.ImageURL, p.Description, p.UnitPrice, c.Quantity, p.AvailableQuantity " +
                       "FROM Products p " +
                       "JOIN Carts c ON p.ProductID = c.ProductID " +
                       "WHERE c.UserID = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1,userID);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    CartItem cartItem = new CartItem();
                    cartItem.setProductID(resultSet.getInt("ProductID"));
                    cartItem.setProductURL(resultSet.getString("ImageURL"));
                    cartItem.setProductDescription(resultSet.getString("Description"));
                    cartItem.setUnitPrice(resultSet.getDouble("UnitPrice"));
                    cartItem.setSelectedQuantity(resultSet.getInt("Quantity"));
                    cartItem.setTotalPrice((resultSet.getDouble("UnitPrice") * resultSet.getInt("Quantity")));
                    cartItem.setAvailableQuantity(resultSet.getInt("AvailableQuantity"));
                    
                    
                    cartItems.add(cartItem);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cartItems;
    }
}
