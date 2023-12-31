package com.eshore.action.user;

import com.eshore.action.Action;
import com.eshore.factory.DAOFactory;
import com.eshore.pojo.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditinfUserAction implements Action{

	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取用户的id值
		int uid = Integer.parseInt(String.valueOf(
				request.getSession().getAttribute("uid")));
		//获取用户的用户名
		String uname = request.getParameter("uname");
		//获取用户email
		String email = request.getParameter("email");
		try{
			//根据用户名查询用户
			Users user=DAOFactory.getUserDAOInstance().queryByName(
					String.valueOf(request.getSession().getAttribute("uname")));
			if(user.getUname().equals(uname)||
					DAOFactory.getUserDAOInstance().
					queryByName(uname).getUid()==0){//用户名未注册
				if(user.getEmail().equals(email)||
						DAOFactory.getUserDAOInstance().
						queryByEmail(email).getUid()==0){//邮箱未被注册
					if(DAOFactory.getUserDAOInstance().
							editInf(uid, uname, email)==1){//用户信息修改成功
						request.getSession().setAttribute("uname", uname);
						request.setAttribute("status", "信息修改成功！");
					}else{//用户信息修改失败
						request.setAttribute("status", "修改操作失败，请重试！");
					}
				}else{//邮箱已经被注册
					request.setAttribute("status", "电子邮箱账号已被注册,请换一个！");
				}
			}else{//判断用户名已经存在
				request.setAttribute("status", "用户名已存在，请换一个！");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return "shoppingcart?action=lookbus";
	}

}
