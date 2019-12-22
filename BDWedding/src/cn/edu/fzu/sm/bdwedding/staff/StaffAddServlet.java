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

import cn.edu.fzu.sm.bdwedding.admin.Admin;
import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/StaffAddServlet")
public class StaffAddServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//编码方式
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//设置get&set
		Staff s=new Staff();
		String sId=req.getParameter("sid").trim();		
		String sName=req.getParameter("sname");
		String sAge=req.getParameter("sage");
		String sSex=req.getParameter("ssex");
		String sPost=req.getParameter("spost");
		String sPhone=req.getParameter("sphone");
		String sWage=req.getParameter("swage");
		s.setsId(Integer.parseInt(sId));
		s.setsName(sName);
		s.setsAge(sAge);
		s.setsSex(sSex);
		s.setsPost(sPost);
		s.setsPhone(sPhone);
		s.setsWage(sWage);
		
		String sql="insert into staff(sid,sname,sage,ssex,spost,sphone,swage)"+
				" values ('"+s.getsId()+"','"+s.getsName()+"','"+s.getsAge()+"','"+s.getsSex()+"','"+
				s.getsPost()+"','"+s.getsPhone()+"','"+s.getsWage()+"')";
		String sql1="select sid from staff where sid='"+s.getsId()+"'";
		try{
			Statement stmt=DbUtil.getConn().createStatement();//��ȡ��ݿ�����ӣ��ݿ�����״̬
			ResultSet rs = stmt.executeQuery(sql1);//ִ����ݿ�Ĳ�ѯ���
			if(rs.next()){
				req.setAttribute("msg", "Exist!");
			}
			else{
				stmt.executeUpdate(sql);  //ִ����ݿ�������
				req.getRequestDispatcher("index.jsp").forward(req,resp); //ˢ��
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


