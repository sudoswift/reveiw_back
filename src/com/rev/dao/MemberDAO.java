package com.rev.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.rev.vo.MemberVO;

public class MemberDAO {
	private static MemberDAO mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private MemberDAO() {
		
	}

	public static synchronized MemberDAO getInstance() {
		if (mDao == null) {
			mDao = new MemberDAO();
		}
		return mDao;
	}
	public Connection getConnection() {
		String url = "jdbc:mysql://localhost/review?serverTimezone=UTC";
		String id = "root", pw = "0000";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public int join(MemberVO mDto) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("insert into member values(?,?,?,?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPwd());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getBirthday());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, null);
		}
		return result;
	}
	
}
