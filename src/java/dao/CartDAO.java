package dao;

import connection.DBConnection;
import dto.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
