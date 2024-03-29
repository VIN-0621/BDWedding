package cn.edu.fzu.sm.bdwedding.photographer;

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

import cn.edu.fzu.sm.bdwedding.staff.Staff;
import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/HunshaListServlet")
public class HunshaListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//编码方式
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
				
		String pName=req.getParameter("pname");
			if(pName==null){
				pName="";
		}
		String sql="select * from photographer where pname like '%"+pName +"' or pname like '"
						+pName+"%'" +" or pname like '%"+pName+"%'";
				
	
		try{
			Statement stmt=DbUtil.getConn().createStatement();//获取数据库的连接，并创建一个数据库连接状态
			ResultSet rs = stmt.executeQuery(sql);//执行数据库的查询语句
			List<PhotoGrapher> pg=null;
			while(rs.next()){
				if(pg==null)
				{
					pg=new ArrayList<PhotoGrapher>();
				}
				PhotoGrapher p=new PhotoGrapher();
				p.setpId(rs.getInt("pid"));
				p.setpSortname(rs.getString("psortname"));
				p.setpName(rs.getString("pname"));
				p.setpSortaddress(rs.getString("psortaddress"));
				p.setpPay(rs.getString("ppay"));
				p.setpIncome(rs.getString("pincome"));			
				pg.add(p);
			}
			req.setAttribute("pgHunshalist",pg);
			req.getRequestDispatcher("/1-hunshataoxi.jsp").forward(req, resp);
			
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
