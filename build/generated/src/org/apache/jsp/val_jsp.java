package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class val_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

    String leadName=request.getParameter("name");
    System.out.println(leadName);
    String leadGender=(String)request.getParameter("gender");
System.out.println(leadGender);
 String leadSelect=(String)request.getParameter("leadSelect");
 System.out.println(leadSelect);
 String leadParentsname=request.getParameter("leadParentsname");
 System.out.println(leadParentsname);
  String leadContact=request.getParameter("leadContact");
 System.out.println(leadContact);
 
  String leadStatusAndReference=request.getParameter("leadStatusAndReference");
 System.out.println(leadStatusAndReference);
 
  String leadComments=request.getParameter("leadComments");
 System.out.println(leadComments);
 
 String leadSelectReference=(String)request.getParameter("leadSelectReference");
 System.out.println(leadSelectReference);
 //session.setAttribute("contact", leadContact);
 
 
 
 try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/tb", "root", "root");
        PreparedStatement ps=c.prepareStatement("insert into leadmodule(name,gender,standardEnquired,parentsName,contact,statusAndReference,comments) values(?,?,?,?,?,?,?)");
        ps.setString(1, leadName);
        ps.setString(2, leadGender);
        ps.setString(3, leadSelect);
        ps.setString(4, leadParentsname);
        ps.setString(5, leadContact);
        ps.setString(6, leadStatusAndReference);
        ps.setString(7, leadComments);
        int y=ps.executeUpdate();
        System.out.println(y);
        
    }catch(Exception e)
    {
    System.out.println(e);
    }
     response.sendRedirect("admissionFetchedModule.jsp");

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
