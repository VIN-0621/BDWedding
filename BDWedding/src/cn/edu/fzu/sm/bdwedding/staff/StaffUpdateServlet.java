package cn.edu.fzu.sm.bdwedding.staff;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/StaffUpdateServlet")
public class StaffUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//���ñ��뷽ʽ
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//����get&set
		Staff s=new Staff();
		String sId=req.getParameter("sid");
		String sName=req.getParameter("sname");
		String sAge=req.getParameter("sage");
		String sSex=req.getParameter("ssex");
		String sPost=req.getParameter("spost");
		String sPhone=req.getParameter("sphone");
		String sWage=req.getParameter("swage");
	
		String sql="update staff set sname='"+sName+"',sage='"+sAge+
				"',ssex='"+sSex+"',spost='"+sPost+
				"',sphone='"+sPhone+"',swage='"+sWage+" 'where "+"sid='"+sId+"'";
				
		String sql1="select sid from staff where sid='"+s.getsId()+"'";
				
		try{
			Statement stmt=DbUtil.getConn().createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			if(rs.next()){
				req.setAttribute("msg", "Exist!");
			}
			else{
				stmt.executeUpdate(sql); 
				req.getRequestDispatcher("StaffListServlet").forward(req,resp); 
			}			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
