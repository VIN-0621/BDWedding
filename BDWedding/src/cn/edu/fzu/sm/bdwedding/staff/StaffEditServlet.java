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

@WebServlet("/StaffEditServlet")
public class StaffEditServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//���ñ��뷽ʽ
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//����get&set
		Staff s=new Staff();
		String sId=req.getParameter("sid").trim();	
		String sql="select * from staff where sid='"+sId+"'";
		try{
			ResultSet rs=DbUtil.getConn().createStatement().executeQuery(sql);
			while(rs.next())
			{
				s.setsId(rs.getInt("sid"));
				s.setsName(rs.getString("sname"));
				s.setsAge(rs.getString("sage"));
				s.setsSex(rs.getString("ssex"));
				s.setsPost(rs.getString("spost"));
				s.setsPhone(rs.getString("sphone"));
				s.setsWage(rs.getString("swage"));
			}
			req.setAttribute("Staff", s);
			req.getRequestDispatcher("/EditStaff.jsp").forward(req, resp);
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
