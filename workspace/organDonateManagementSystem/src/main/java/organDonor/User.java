package organDonor;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.Dbconnection;

import com.oreilly.servlet.MultipartRequest;

public class User implements path{

	String name,email,address,dob;
	public static String tempProfilePic,ProfilePic,accountType;
	Long mobileNumber;
	int bloodGroupId;
	public static int id;
	public static int getId() {
		return id;
	}
	public static void setId(int id) {
		User.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public static String getAccountType() {
		return accountType;
	}
	public static void  setAccountType(String inpaccountType) {
		accountType = inpaccountType;
	}
	public static String getTempProfilePic() {
		return tempProfilePic;
	}
	public static void setTempProfilePic(String inptempProfilePic) {
	 tempProfilePic = inptempProfilePic;
	}
	public static String getProfilePic() {
		return ProfilePic;
	}
	public  static void setProfilePic(String profilePic) {
		ProfilePic = profilePic;
	}
	public Long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public int getBloodGroupId() {
		return bloodGroupId;
	}
	public void setBloodGroupId(int bloodGroupId) {
		this.bloodGroupId = bloodGroupId;
	}
	
	//create user
	public static boolean addUser(MultipartRequest m)
	{
	String query="";
	if(m.getParameter("AccountType").toLowerCase().equals("d"))
	query="INSERT INTO donor (donor_name, blood_category, donor_dob, donor_email, donor_contact,donor_profile,donor_address,password,gender) VALUES (?,?,?,?,?,?,?,?,?)";
	else
	query="INSERT INTO Recipient (Recipient_name, blood_category, Recipient_dob, Recipient_email, Recipient_contact,Recipient_profile,Recipient_address,password,gender) VALUES (?,?,?,?,?,?,?,?,?)";
	String DbProfilePath="";
	if(customeMethods.createProfileDirectory(profilePath,m.getFilesystemName("profile")))
	{
		DbProfilePath=getProfilePic();
	}
	try
	{
		Connection con=Dbconnection.getCon();
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1, m.getParameter("name"));
		ps.setString(2, m.getParameter("bloodgroup"));
		ps.setString(3, m.getParameter("dob"));
		ps.setString(4, m.getParameter("email"));
		ps.setString(5, m.getParameter("mobileNo"));
		ps.setString(6, DbProfilePath);
		ps.setString(7, m.getParameter("address"));
		ps.setString(8, m.getParameter("password"));
		ps.setString(9, m.getParameter("gender"));
		
		if(ps.executeUpdate()>0)
		{
			return true;
		}
		return false;
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
	}
	
	
	//Login User
	public static boolean login(String username,String password,String accountType)
	{
		String query="";
		if(accountType.toLowerCase().equals("d"))
		query="select * from donor where donor_email=? and password=? and status='active'";
		else
		query="select * from recipient where Recipient_email=? and password=? and status='active'";
		try {
			PreparedStatement ps=Dbconnection.getCon().prepareStatement(query);
			ps.setString(1,username);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				setAccountType(accountType);
				setId(rs.getInt(1));
				return true;
			}
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	
	}
	
	
	//updateActive Status
	//Login User
		public static boolean updateStatus(String id,String status,String usertype)
		{
			String query="";
			if(usertype.toLowerCase().equals("d"))
			query="update donor set status=? where donor_id=?";
			else
			query="update recipient set status=? where Recipient_id=?";
			try {
				PreparedStatement ps=Dbconnection.getCon().prepareStatement(query);
				ps.setString(1,status);
				ps.setString(2,id);
				
				if(ps.executeUpdate()>0)
				{
					return true;
				}
				return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		
		}
}
