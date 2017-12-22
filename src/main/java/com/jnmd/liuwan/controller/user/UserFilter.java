package com.jnmd.liuwan.controller.user;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jnmd.liuwan.domain.Users;



public class UserFilter implements Filter{

    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
          HttpServletRequest request=(HttpServletRequest)req;
//          HttpSession session=request.getSession();
//          String reqUri=request.getRequestURI();
//          String index="/liuwan/index.jsp";
//          String index1="/liuwan/userMapper";
//          System.out.println("uri="+reqUri);
//          if(reqUri.equals(index) || reqUri.equals(index1)){
//              chain.doFilter(request, resp); 
//          }else{
//              if(reqUri.indexOf("login")==-1){
//                  Users users=(Users)session.getAttribute("user");
//                  if(users==null){
//                      session.setAttribute("uri", reqUri);
//                      request.getRequestDispatcher("/login").forward(request, (HttpServletResponse)resp);
//                      return;
//                  }
//              }
//              chain.doFilter(request, resp);
//          }
          chain.doFilter(request, resp);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
        
    }

    

}
