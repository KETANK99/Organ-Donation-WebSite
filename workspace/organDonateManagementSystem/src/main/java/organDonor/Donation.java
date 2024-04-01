package organDonor;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.Session;

import DB.Dbconnection;

public class Donation {
	int donation_id,donor_id,organ_id;
	 String donation_date,gaurdian_name,gaurdian_contact;
	 

public static boolean add(HttpServletRequest request,String userid)
{
	try {
	String organs[]=request.getParameterValues("organs");
	Dbconnection.getCon();
	int dbcount=0;
	for(int i=0;i<organs.length;i++)
	{
		
		
			PreparedStatement ps=Dbconnection.con.prepareStatement("insert into Donation ( donor_id, organ_id, donation_date, gaurdian_name, gaurdian_contact,cause_of_death,dod)values (?,?,sysdate(),?,?,?,?)");
			ps.setString(1, userid);
			ps.setString(2, organs[i]);
			ps.setString(3,request.getParameter("gname"));
			ps.setString(4,request.getParameter("gcontact"));
			ps.setString(5,request.getParameter("causeofDeath"));
			ps.setString(6,request.getParameter("dod"));
			if(ps.executeUpdate()>0)
			{
				dbcount++;
			}
			
	}
	if(dbcount==organs.length)
	{
		
	Dbconnection.con.close();
		
	return true;
	}
	
	Dbconnection.con.close();
	
	return false;
	}catch (Exception e) {
		e.printStackTrace();
		return false;
	}
}
}
