package controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import connection.DBConnection;

public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html;charset=UTF-8");

        // Parse JSON data sent from the client
        ObjectMapper mapper = new ObjectMapper();
        Map<String, Object> formData = mapper.readValue(request.getReader(), Map.class);

        // Extract data from JSON
        int userID = (int) formData.get("userID");
        String contactNumber = (String) formData.get("contactNumber");
        String shippingLocation = (String) formData.get("shippingLocation");
        List<Map<String, Object>> orderDetails = (List<Map<String, Object>>) formData.get("orderDetails");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Obtain database connection using DBConnection class
            DBConnection dbConnection = DBConnection.getInstance();
            conn = dbConnection.getConnection();

            // Insert into Orders table
            String insertOrderSQL = "INSERT INTO Orders (UserID, ContactNumber, ShippingLocation) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(insertOrderSQL, Statement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, userID);
            pstmt.setString(2, contactNumber);
            pstmt.setString(3, shippingLocation);
            pstmt.executeUpdate();
            rs = pstmt.getGeneratedKeys();
            int orderID = -1;
            if (rs.next()) {
                orderID = rs.getInt(1);
            }

            // Insert into OrderDetails table
            String insertOrderDetailSQL = "INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(insertOrderDetailSQL);
            for (Map<String, Object> item : orderDetails) {
                Object productIdObj = item.get("productId");
                if (productIdObj instanceof Integer) {
                    int productId = (int) productIdObj;
                    int quantity = (int) item.get("quantity");
                    pstmt.setInt(1, orderID);
                    pstmt.setInt(2, productId);
                    pstmt.setInt(3, quantity);
                    pstmt.executeUpdate();
                    
                    // Update available quantity for the product
                    updateAvailableQuantity(conn, productId, quantity);
                } else {
                    String productIdStr = (String) productIdObj;
                    try {
                        int productId = Integer.parseInt(productIdStr);
                        int quantity = (int) item.get("quantity");
                        pstmt.setInt(1, orderID);
                        pstmt.setInt(2, productId);
                        pstmt.setInt(3, quantity);
                        pstmt.executeUpdate();
                        
                        // Update available quantity for the product
                        updateAvailableQuantity(conn, productId, quantity);
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                }
            }

            // Clear the cart after checkout
            String clearCartSQL = "DELETE FROM Carts WHERE UserID = ?";
            pstmt = conn.prepareStatement(clearCartSQL);
            pstmt.setInt(1, userID);
            pstmt.executeUpdate();

          
            response.getWriter().write("Checkout successful!");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database operation error");
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private void updateAvailableQuantity(Connection conn, int productId, int quantity) throws SQLException {
        String updateQuantitySQL = "UPDATE Products SET AvailableQuantity = AvailableQuantity - ? WHERE ProductID = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(updateQuantitySQL)) {
            pstmt.setInt(1, quantity);
            pstmt.setInt(2, productId);
            pstmt.executeUpdate();
        }
    }
}
