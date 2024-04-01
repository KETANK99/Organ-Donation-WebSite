package organDonor;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import DB.Dbconnection;

public class transplant {

	public static boolean addDetails(HttpServletRequest request)
	{
		String query="insert into Transplantation (donation_id, recipient_id, transplantation_date, transplantation_location) values(?,?,?,?)";
		Dbconnection.getCon();
		PreparedStatement ps;
		try {
			ps = Dbconnection.con.prepareStatement(query);
			ps.setString(1,request.getParameter("donationId"));
			ps.setString(2,request.getParameter("reciepentId"));
			ps.setString(3,request.getParameter("date"));
			ps.setString(4,request.getParameter("name")+", "+request.getParameter("address"));
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
	
	public static boolean UpdateStatus(HttpServletRequest request)
	{
		String query="update Transplantation set status=? where transplantation_id=?";
		Dbconnection.getCon();
		PreparedStatement ps;
		try {
			ps = Dbconnection.con.prepareStatement(query);
			ps.setString(1,request.getParameter("status"));
			ps.setString(2,request.getParameter("id"));
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
