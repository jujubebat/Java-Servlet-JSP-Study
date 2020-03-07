package examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/next")
public class NextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NextServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>form</title></head>");
		out.println("<body>");
		
		int dice = (Integer)request.getAttribute("dice"); //front에서 forward 받은 주사위 값을 사용한다.
		out.println("dice : " + dice + "<br>");
		for(int i =0; i<dice; i++) {
			out.print("hello<br>");
		}
		out.println("<body>");
		out.println("</html>");
	}
}
