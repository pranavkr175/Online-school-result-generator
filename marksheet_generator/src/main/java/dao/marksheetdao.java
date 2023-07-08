package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Marks;
import entity.StudentDetail;

public class marksheetdao {

	private Connection con;

	public marksheetdao(Connection con ) {
		this.con=con;
	}
	
	public boolean registerStudent(StudentDetail sd) {
		boolean f=false;
		String sql="insert into student (roll,name,fname,address,dob) values(?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, sd.getRoll());
			ps.setString(2, sd.getName());
			ps.setString(3, sd.getFname());
			ps.setString(4, sd.getAdd());
			ps.setString(5, sd.getDob());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean marksRoll(Marks mr) {
		boolean f=false;
		String sql="insert into marsks_subject (roll) values(?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, mr.getRoll());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	
	public StudentDetail getDetailOfStudentByRoll(int roll) {
		StudentDetail sd=null;
		String sql="select * from student where roll=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, roll);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				sd=new StudentDetail();
				sd.setRoll(rs.getInt(1));
				sd.setName(rs.getString(2));
				sd.setFname(rs.getString(3));
				sd.setAdd(rs.getString(4));
				sd.setDob(rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sd;
	}
	
	public List<StudentDetail> getAllDetail(){
		List<StudentDetail>ls=new ArrayList<StudentDetail>();
		StudentDetail sd=null;
		String sql="select * from student";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				sd=new StudentDetail();
				sd.setRoll(rs.getInt("roll"));
				sd.setName(rs.getString("name"));
				sd.setFname(rs.getString("fname"));
				sd.setAdd(rs.getString("address"));
				sd.setDob(rs.getString("dob"));
				ls.add(sd);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ls;
	}
	
	
	public Marks getDetailOfSubByRoll(int roll) {
		Marks mr=null;
		String sql="select * from marsks_subject where roll=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, roll);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				mr=new Marks();
				mr.setRoll(rs.getInt(1));
				mr.setC(rs.getInt(2));
				mr.setWeb_tech(rs.getInt(3));
				mr.setJava(rs.getInt(4));
				mr.setNetworking(rs.getInt(5));
				mr.setPython(rs.getInt(6));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mr;
	}
	
	public boolean setMarksOnMarksheet(Marks mr) {
		boolean f=false;
		String sql="UPDATE marsks_subject SET C=?,WEB=?,JAVA=?,NETWORKING=?,PYTHON=? WHERE ROLL=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, mr.getC());
			ps.setInt(2, mr.getWeb_tech());
			ps.setInt(3, mr.getJava());
			ps.setInt(4, mr.getNetworking());
			ps.setInt(5, mr.getPython());
			ps.setInt(6, mr.getRoll());
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean updateStudent(StudentDetail sd) {
		boolean f=false;
		String sql="UPDATE STUDENT SET NAME=?,FNAME=?,ADDRESS=?,DOB=? WHERE ROLL=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sd.getName());
			ps.setString(2, sd.getFname());
			ps.setString(3, sd.getAdd());
			ps.setString(4, sd.getDob());
			ps.setInt(5, sd.getRoll());
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	
}
