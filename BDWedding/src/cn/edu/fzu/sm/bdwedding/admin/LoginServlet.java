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

@WebServlet("/LoginServlet")  //ע�� ֪ͨ������
public class LoginServlet extends HttpServlet {  //��¼���м��[��ҳ�����ݿ���м�����]
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��ȡ��ҳ���ݵĲ��� �ò������ύ��submit������ʱ���ȡ��
		String username=req.getParameter("aname");
		String password=req.getParameter("apassword");
		
		String sql="select aid,aname,apassword from admin where aname='"
				+username+"' and apassword='"+password+"'";

		try
		{
			Statement stmt=DbUtil.getConn().createStatement();//��ȡ���ݿ�����ӣ�������һ�����ݿ�����״̬
			ResultSet rs = stmt.executeQuery(sql);//ִ�����ݿ�Ĳ�ѯ���
			if(rs.next()){
				req.getRequestDispatcher("index.jsp").forward(req,resp);  //��¼�ɹ���ת
			}
			else{
				//��ʾ���� ��Ϊ�������Դ��ݵ�login.jsp
				req.setAttribute("msg", "Error username or password!");
				req.getRequestDispatcher("login.jsp").forward(req,resp);  //��¼ʧ����ת
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