package com.eshore.action;

import com.eshore.factory.DAOFactory;
import com.eshore.pojo.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Vector;
//import java.util.Date;

/**
 * 商品的Servlet类
 */
@WebServlet(
	urlPatterns = { "/goods" }, 
	name = "goodsServlet" 
)
public class GoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//判断action类型
		String action=request.getParameter("action");
		String path="null";
		Vector<Goods> gVector=new Vector<Goods>();
		
		try{
			if(action.equals("index-select")){//查询商品列表
				String keyWord=request.getParameter("keyWord");//获取查询的输入值
				String keyClass=request.getParameter("keyClass");//获取查询类别
				gVector=DAOFactory.getGoodDAOInstance().//获得所有商品
					queryAll(keyWord, keyClass);
				request.setAttribute("goods", gVector);
				path="goods/goodslist.jsp";
			}else if(action.equals("goodslist-select")){//指定商品列表
				Goods good=new Goods();
				String sid=request.getParameter("sid");//获得商品的id
				gVector=DAOFactory.getGoodDAOInstance().//获得指定的商品对象
					queryGoodBySid(Integer.valueOf(sid));
				if(gVector.size()>0&&gVector!=null)
					good =(Goods)gVector.get(0);
				request.setAttribute("good", good);
				path="goods/good.jsp";
			}else if(action.equals("addgoods")){
				Goods good=new Goods();
				String sid=request.getParameter("sid");//获得商品的id
				SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
				String time = request.getParameter("pdate");
				Date date = new Date((ft.parse(time)).getTime());
				good.setGood(request.getParameter("gname"),
						request.getParameter("gphoto"),
						request.getParameter("kinds"),
						request.getParameter("types"),
						request.getParameter("producer"),
						Float.parseFloat(request.getParameter("price")),
						Float.parseFloat(request.getParameter("carriage")),
						date,
						request.getParameter("paddress"),
						request.getParameter("described"));

				request.setAttribute("goods", good);
				path="goods?action=displaygoods";
				DAOFactory.getGoodDAOInstance().addGood(good);
			}else if(action.equals("deletegoods")){
				String sid=request.getParameter("gid");//获得商品的id
				int gid=Integer.parseInt(sid);
				DAOFactory.getGoodDAOInstance().deleteGood(gid);
				path="goods?action=displaygoods";
			}else if(action.equals("displaygoods")){
				String keyWord="*";//获取查询的输入值
				String keyClass="3";//获取查询类别
				gVector=DAOFactory.getGoodDAOInstance().//获得所有商品
						queryAll(keyWord, keyClass);
				request.setAttribute("goods", gVector);
				path="deletegoods.jsp";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}
