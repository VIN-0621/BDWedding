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

@WebServlet("/RegisterServlet")  //注解 通知服务器
public class RegisterServlet extends HttpServlet {  //登录的中间层[网页与数据库的中间桥梁]
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获取网页传递的参数 该参数是提交（submit）表单的时候获取的
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
			Statement stmt=DbUtil.getConn().createStatement();//获取数据库的连接，并创建一个数据库连接状态
			ResultSet rs=stmt.executeQuery(sql1);
			if(rs.next()){
				req.setAttribute("msg", "Exist!");
			}
			else{
				stmt.executeUpdate(sql);  //执行数据库插入操作
				req.getRequestDispatcher("login.jsp").forward(req,resp);  //登录跳转
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req,resp);  //直接调用doGet,统一用doGet函数来处理业务
	}
}