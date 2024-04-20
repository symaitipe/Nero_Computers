package dao;

import connection.DBConnection;
import dto.Product;
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
public class ProductDAO {

    private Connection connection;
    private static ProductDAO productDAO;

    private ProductDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBConnection.getInstance().getConnection();
    }

    public static ProductDAO getInstance() throws ClassNotFoundException, SQLException {
        if (productDAO == null) {
            productDAO = new ProductDAO();
        }
        return productDAO;
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT p.*, b.brandName FROM products p JOIN brands b ON p.brandID = b.brandID";
            statement = this.connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();

                product.setBrandName(resultSet.getString("brandName"));
                product.setDescription(resultSet.getString("Description"));
                product.setUnitPrice(resultSet.getDouble("UnitPrice"));
                product.setAvailableQuantity(resultSet.getInt("AvailableQuantity"));
                product.setImageURL(resultSet.getString("ImageURL"));

                products.add(product);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return products;
    }

    public List<Product> getProductsByBrandAndCategory(String brandName, String category) {
        List<Product> products = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT * FROM products p "
                    + "INNER JOIN brands b ON p.BrandID = b.BrandID "
                    + "INNER JOIN categories c ON p.CategoryID = c.CategoryID "
                    + "WHERE b.BrandName = ? AND c.CategoryName = ?";
            statement = this.connection.prepareStatement(query);
            statement.setString(1, brandName);
            statement.setString(2, category);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Product product = new Product();
                product.setProductID(resultSet.getInt("ProductID"));
                product.setBrandID(resultSet.getInt("BrandID"));
                product.setCategoryID(resultSet.getInt("CategoryID"));
                product.setDescription(resultSet.getString("Description"));
                product.setUnitPrice(resultSet.getDouble("UnitPrice"));
                product.setAvailableQuantity(resultSet.getInt("AvailableQuantity"));
                product.setImageURL(resultSet.getString("ImageURL"));

                products.add(product);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return products;
    }
}
