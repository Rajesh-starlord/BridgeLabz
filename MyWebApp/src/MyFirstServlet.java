import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
 
@WebServlet("/sayhello")
public class MyFirstServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
			 
		// Set the response MIME type of the response message
		response.setContentType("text/html");
		// Allocate a output writer to write the response message into the network socket
		PrintWriter out = response.getWriter();
		String name = request.getParameter("Name");
		String pswd =  request.getParameter("password");
		char[] pwd = pswd.toCharArray();
		int pwdLength = pswd.length();
		int namelength = name.length();
		int count = 0;
		int upperCaseCount = 0;
		int digitCount = 0;
		int spCount = 0;
		boolean nameCheck = false;
		boolean pswdCheck = false;
		if(Character.isUpperCase(name.charAt(0))){
			count++;
		}
		
		for (char ch1 : pwd){
			if(Character.isUpperCase(ch1)){
				upperCaseCount++;
			}
			else if(Character.isDigit(ch1)){
				digitCount++;
			}else if(Character.isLowerCase(ch1)){
			}
			else{
				spCount++;
			}
		}
		// Write the response message, in an HTML page
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>Hello, world!</title></head>");
		out.println("<body>");
		out.println("<div style='position:absolute;height:300px;width:300px;left:38%;top:25%;box-shadow: 2px 5px 5px 0px;text-align:center;padding:5px;'>");
		if(namelength >= 3 && count > 1){
			nameCheck = true;
		}else{
			out.println("<h1>Oops....</h1>");
			out.println("<p>invalid Username</p>");
		}
		if(pwdLength >= 8 && upperCaseCount >= 1 && digitCount >= 1 && spCount == 1){
			pswdCheck = true;
		}else{
			out.println("<h1>Oops....</h1>");
			out.println("<p>invalid password</p>");
		}
		if(nameCheck && pswdCheck){
			out.println("<h1>Welcome "+name+"</h1>");
			out.println("<p style='color:green'>Login Successfull....</p>");
		}
		out.println("<a style='color:red' href='http://localhost:8080/MyWebApp'>return to Login....Page</a>");
		out.println("</div>");
		out.println("</body></html>");
		out.close();
   }
}