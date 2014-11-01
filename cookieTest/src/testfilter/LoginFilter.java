package testfilter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

	 private String permitUrls[] = null;  

	    private String gotoUrl = null;  

	    public void destroy() {  

	        // TODO Auto-generated method stub  

	        permitUrls = null;  

	        gotoUrl = null;  

	    }  

	    public void doFilter(ServletRequest request, ServletResponse response,  

	            FilterChain chain) throws IOException, ServletException {  

	        // TODO Auto-generated method stub  

	        HttpServletRequest res=(HttpServletRequest) request;  

	        HttpServletResponse resp=(HttpServletResponse)response;  

	        if(!isPermitUrl(request)){

	            if(filterCurrUrl(request)){  

	                System.out.println("--->请登录");  

	                resp.sendRedirect(res.getContextPath()+gotoUrl);  

	                return;  

	            }  

	        }  

	        System.out.println("--->允许访问");  

	        chain.doFilter(request, response);  

	    }  

	    public boolean filterCurrUrl(ServletRequest request){  

	        HttpServletRequest res=(HttpServletRequest) request;  

	        User user =(User) res.getSession().getAttribute("user");  

	        if(null==user)  
	        	return false;
	        
	        return false;

	    }        

	    public boolean isPermitUrl(ServletRequest request) {  

	        boolean isPermit = false;  

	        String currentUrl = currentUrl(request);  

	        if (permitUrls != null && permitUrls.length > 0) {  

	            for (int i = 0; i < permitUrls.length; i++) {  

	                if (permitUrls[i].equals(currentUrl)) {  

	                    isPermit = true;  

	                    break;  
	                }  
	            }  
	        }  
	        return isPermit;  
	    }         

	    //请求地址  

	    public String currentUrl(ServletRequest request) {    

	        HttpServletRequest res = (HttpServletRequest) request;  

	        String task = request.getParameter("task");  

	        String path = res.getContextPath();  
	        
	        String uri = res.getRequestURI();  
	        System.out.println("uri:" + uri + "*****path:" + path);
	        if (task != null) {// uri格式 xx/ser  

	            uri = uri.substring(path.length(), uri.length()) + "?" + "task=" 

	                    + task;  

	        } else {  

	            uri = uri.substring(path.length(), uri.length());  

	        }  

	        System.out.println("当前请求地址:" + uri);  

	        return uri;  

	    }  

	    public void init(FilterConfig filterConfig) throws ServletException {  

	        // TODO Auto-generated method stub  

	        String permitUrls = filterConfig.getInitParameter("permitUrls");  

	        String gotoUrl = filterConfig.getInitParameter("gotoUrl");  
	        this.gotoUrl = gotoUrl;  
	        if (permitUrls != null && permitUrls.length() > 0) {  

	            this.permitUrls = permitUrls.split(",");  

	        }  

	    }  
}
