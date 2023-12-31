package com.eshore.filters;

import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(
	description = "字符编码过滤器", 
	filterName = "encodingFilter", 
	urlPatterns = { "/*" },
	initParams = { 
		@WebInitParam(name = "ENCODING", value = "UTF-8")
	} 
)
public class EncodeFilter implements Filter {

	private static Logger log = Logger.getLogger("EncodingFilter");
	private String encoding="";
	private String filterName="";

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		log.debug("请求被"+filterName+"过滤");
		if("GET".equals(request.getMethod())){
			request = new RequestEncodingWrapper(request,encoding);
		}else{
			request.setCharacterEncoding(encoding);
		}
		response.setCharacterEncoding(encoding);
		//传输给过滤器链过滤
		chain.doFilter(request, response);
		log.debug("响应被"+filterName+"过滤");

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		//通过filterConfig获得初始化中编码值
		encoding = filterConfig.getInitParameter("ENCODING");
		filterName = filterConfig.getFilterName();
		if(encoding==null||"".equals(encoding)){
			encoding="UTF-8";
		}
		log.debug("获得编码值");
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
		log.debug("请求销毁");
	}
}
