package orderdetails;


public class order {
    private int orderid;
    private int userid;
    private String contact;
    private String location;
    private String time;
    
    public order(int orderid,int userid,String contact,String location,String time){
        this.orderid = orderid;
        this.userid = userid;
        this.contact = contact;
        this.location = location;
        this.time = time;
        
    }
    
    public order(){
        
    }
    
    public void setOrderID(int orderid){
        this.orderid = orderid;
    }
    public int getOrderID(){
        return orderid;
    }
    
    public void setUserID(int userid){
        this.userid = userid;
    }
    public int getUserID(){
        return userid;
    }
    
    public void setContact(String contact){
        this.contact = contact;
    }
    public String getContact(){
        return contact;
    }
    
    public void setLocation(String location){
        this.location = location;
    }
    public String getLocation(){
        return location;
    }
    
    public void setTime(String time){
        this.time = time;
    }
    public String getTime(){
       return time; 
    }
   
}
