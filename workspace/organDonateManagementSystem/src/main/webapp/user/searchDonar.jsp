<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String oid = request.getParameter("id");
System.out.println(oid);
Dbconnection.getCon();
PreparedStatement ps = Dbconnection.con.prepareStatement(
		"select d.donor_name,d.donor_contact,donor_profile, FLOOR((TIMESTAMPDIFF(MONTH, d.donor_dob, CURDATE()) / 12)) as Age,do.gaurdian_name,do.gaurdian_contact,o.organ_name,do.donation_id  from donation as do inner join organ as o on do.organ_id=o.organ_id inner join donor as d on do.donor_id=d.donor_id where do.organ_id=? and status='active'");
ps.setString(1, oid);
ResultSet rs = ps.executeQuery();
int srNo = 1;
while (rs.next()) {

	
%>
<tr>
	<td scope="col"><%=srNo++%></td>
	<td scope="col" class="d-flex justify-content-start"
		style="align-item: center"><img src="../<%=rs.getString(3)%>"
		style="height: 50px; width: 50px; border-radius: 50%; " class="mx-3 border  border-primary">
		<div>
			<p class="m-0 p-0">
				Name :
				<%=rs.getString(1)%>
			</p>
			<p>
				Contact :
				<%=rs.getString(2)%>
			</p>
		</div></td>
	<td scope="col"><%=rs.getString(4)%></td>
	<td scope="col"><%=rs.getString(7)%></td>
	<td scope="col">
		<div>
			<p class="m-0 p-0">
				Name :
				<%=rs.getString(1)%>
			</p>
			<p>
				Contact :
				<%=rs.getString(2)%>
			</p>
		</div>
	</td>
	<td scope="col">
	<%if(!session.getAttribute("userType").toString().toLowerCase().equals("d")){ %>
	<button class="btn btn-warning" onclick=ask('<%=rs.getString(8)%>','<%=rs.getString(7)%>')>
	<i class="icofont-patient-file"></i>
		Ask for Donate
	</button>
	<%} %>
	</td>
</tr>
<%

}
Dbconnection.con.close();
%>