
package dto;

/**
 *
 * @author Sahan Maitipe
 */
public class Product {
    private int productID;
    private int brandID;
    private String brandName;
    private int categoryID;
    private String description;
    private double unitPrice;
    private int availableQuantity;
    private String imageURL;

    
    public int getProductID() {
        return productID;
    }

   
    public void setProductID(int productID) {
        this.productID = productID;
    }

  
    public int getBrandID() {
        return brandID;
    }

 
    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }
    
    public int getCategoryID() {
        return categoryID;
    }

   
    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

   
    public String getDescription() {
        return description;
    }

    
    public void setDescription(String description) {
        this.description = description;
    }

  
    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getAvailableQuantity() {
        return availableQuantity;
    }

   
    public void setAvailableQuantity(int availableQuantity) {
        this.availableQuantity = availableQuantity;
    }

  
    public String getImageURL() {
        return imageURL;
    }

   
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    
    
    
}
