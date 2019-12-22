package cn.edu.fzu.sm.bdwedding.photographer;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/HunshaUpdateServlet")
public class HunshaUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//���ñ��뷽ʽ
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//����get&set
		PhotoGrapher pg=new PhotoGrapher();
		String pId=req.getParameter("pid");
		String pSortname=req.getParameter("psortname");
		String pName=req.getParameter("pname");
		String pSortaddress=req.getParameter("psortaddress");
		String pPay=req.getParameter("ppay");
		String pIncome=req.getParameter("pincome");
	
		String sql="update photographer set psortname='"+pSortname+"',pname='"+pName+
				"',psortaddress='"+pSortaddress+"',ppay='"+pPay+
				"',pincome='"+pIncome+" 'where "+"pid='"+pId+"'";
				
		String sql1="select pid from photographer where pid='"+pg.getpId()+"'";
				
		try{
			Statement stmt=DbUtil.getConn().createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			if(rs.next()){
				req.setAttribute("msg", "Exist!");
			}
			else{
				stmt.executeUpdate(sql); 
				req.getRequestDispatcher("HunshaListServlet").forward(req,resp); 
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
