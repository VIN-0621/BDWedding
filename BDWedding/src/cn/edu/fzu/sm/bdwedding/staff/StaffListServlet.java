package cn.edu.fzu.sm.bdwedding.staff;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/StaffListServlet")
public class StaffListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//编码方式
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String sName=req.getParameter("sname");
		if(sName==null){
			sName="";
		}
		String sql="select * from staff where sname like '%"+sName +"' or sname like '"
				+sName+"%'" +" or sname like '%"+sName+"%'";
		// page
		// select * from user limit pagw*5,5
		// where name like id +'%'+
	
		try{
			Statement stmt=DbUtil.getConn().createStatement();//获取数据库的连接，并创建一个数据库连接状态
			ResultSet rs = stmt.executeQuery(sql);//执行数据库的查询语句
			List<Staff> stf=null;
			while(rs.next()){
				if(stf==null)
				{
					stf=new ArrayList<Staff>();
				}
				Staff s=new Staff();
				s.setsId(rs.getInt("sid"));
				s.setsName(rs.getString("sname"));
				s.setsAge(rs.getString("sage"));
				s.setsSex(rs.getString("ssex"));
				s.setsPost(rs.getString("spost"));
				s.setsPhone(rs.getString("sphone"));
				s.setsWage(rs.getString("swage"));
				stf.add(s);
			}
			req.setAttribute("stafflist",stf);
			req.getRequestDispatcher("/1-renshiguanli-jqgrid.jsp").forward(req, resp);
			
		}
		catch(Exception e){
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
