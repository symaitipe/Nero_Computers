 package dao;

import connection.DBConnection;
import dto.Brand;
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
public class BrandDAO {

    private Connection connection;
    private static BrandDAO brandDAO;

    private BrandDAO() throws ClassNotFoundException, SQLException {
        this.connection = DBConnection.getInstance().getConnection();
    }

    public static BrandDAO getInstance() throws ClassNotFoundException, SQLException {
        if (brandDAO == null) {
            brandDAO = new BrandDAO();
        }
        return brandDAO;
    }

    public List<Brand> getBrandsByCategory(String category) throws SQLException {
        List<Brand> brandList = new ArrayList<>();

        String sql = "SELECT b.BrandID, b.BrandName "
                + "FROM Brands b "
                + "INNER JOIN BrandCategoryMap bcm ON b.BrandID = bcm.BrandID "
                + "INNER JOIN Categories c ON bcm.CategoryID = c.CategoryID "
                + "WHERE c.CategoryName = ?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, category);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("BrandID");
                    String name = resultSet.getString("BrandName");
                    Brand brand = new Brand(id, name);
                    brandList.add(brand);
                }
            }
        }
        return brandList;

    }
}
