package cn.edu.fzu.sm.bdwedding.admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.fzu.sm.bdwedding.util.DbUtil;

@WebServlet("/RegisterServlet")  //ע�� ֪ͨ������
public class RegisterServlet extends HttpServlet {  //��¼���м��[��ҳ�����ݿ���м�����]
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��ȡ��ҳ���ݵĲ��� �ò������ύ��submit������ʱ���ȡ��
		Admin a=new Admin();
		String username=req.getParameter("aname");
		String password=req.getParameter("apassword");
		
		//get&set
		a.setaName(username);
		a.setaPassword(password);
		String sql="insert into admin(aname,apassword)"+
				" values ('"+a.getaName()+"','"+a.getaPassword()+"')";

		String sql1="select aid from admin where aid='"+a.getaId()+"'";
		try
		{
			Statement stmt=DbUtil.getConn().createStatement();//��ȡ���ݿ�����ӣ�������һ�����ݿ�����״̬
			ResultSet rs=stmt.executeQuery(sql1);
			if(rs.next()){
				req.setAttribute("msg", "Exist!");
			}
			else{
				stmt.executeUpdate(sql);  //ִ�����ݿ�������
				req.getRequestDispatcher("login.jsp").forward(req,resp);  //��¼��ת
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req,resp);  //ֱ�ӵ���doGet,ͳһ��doGet����������ҵ��
	}
}