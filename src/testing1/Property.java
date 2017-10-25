package testing1;

public class Property {
	
	int BHK;
	int price;
	int area;
	String type;
	String location;
	
	void getBHK(String str)
	{
		this.BHK=Integer.parseInt(str);
	}
	
	void getprice(String str)
	{
		this.price=Integer.parseInt(str);
	}
	
	void getarea(String str)
	{
		this.area=Integer.parseInt(str);
	}
	
	void gettype(String str)
	{
		this.type = str;
	}
	
	void getlocation(String str)
	{
		this.location = str;
	}
}
