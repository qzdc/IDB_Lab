package com.eshore.action.user;

import com.eshore.action.Action;
import com.eshore.factory.DAOFactory;
import com.eshore.pojo.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *修改用户
 */
public class EditUserAction implements Action {

	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try{
			//根据用户名查询用户
			Users user = DAOFactory.getUserDAOInstance().queryByName(
					String.valueOf(request.getSession().getAttribute("uname")));
			System.out.println(user.getEmail());
			request.setAttribute("email", user.getEmail());
		}catch(Exception e){
			e.printStackTrace();
		}
		return "user/editinf.jsp";
	}
}
