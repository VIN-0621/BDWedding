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

@WebServlet("/LoginServlet")  //注解 通知服务器
public class LoginServlet extends HttpServlet {  //登录的中间层[网页与数据库的中间桥梁]
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获取网页传递的参数 该参数是提交（submit）表单的时候获取的
		String username=req.getParameter("aname");
		String password=req.getParameter("apassword");
		
		String sql="select aid,aname,apassword from admin where aname='"
				+username+"' and apassword='"+password+"'";

		try
		{
			Statement stmt=DbUtil.getConn().createStatement();//获取数据库的连接，并创建一个数据库连接状态
			ResultSet rs = stmt.executeQuery(sql);//执行数据库的查询语句
			if(rs.next()){
				req.getRequestDispatcher("index.jsp").forward(req,resp);  //登录成功跳转
			}
			else{
				//提示错误 作为请求属性传递到login.jsp
				req.setAttribute("msg", "Error username or password!");
				req.getRequestDispatcher("login.jsp").forward(req,resp);  //登录失败跳转
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