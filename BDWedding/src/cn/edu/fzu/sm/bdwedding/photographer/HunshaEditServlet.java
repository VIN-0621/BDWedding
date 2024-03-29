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

@WebServlet("/HunshaEditServlet")
public class HunshaEditServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//���ñ��뷽ʽ
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//����get&set
		String pId=req.getParameter("pid").trim();	
		PhotoGrapher photoGrapher=new PhotoGrapher();
		String sql="select * from photographer where pid='"+pId+"'";
		try{
			ResultSet rs=DbUtil.getConn().createStatement().executeQuery(sql);
			while(rs.next())
			{
				photoGrapher.setpId(rs.getInt("pid"));
				photoGrapher.setpSortname(rs.getString("psortname"));
				photoGrapher.setpName(rs.getString("pname"));
				photoGrapher.setpSortaddress(rs.getString("psortaddress"));
				photoGrapher.setpPay(rs.getString("pPay"));
				photoGrapher.setpIncome(rs.getString("pIncome"));
			}
			req.setAttribute("Hunsha", photoGrapher);
			req.getRequestDispatcher("/EditHunsha.jsp").forward(req, resp);
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
