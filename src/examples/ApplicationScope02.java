package examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ApplicationScope02")
public class ApplicationScope02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ApplicationScope02() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		ServletContext application = getServletContext();//application scope
		try {
			
			int value = (int)application.getAttribute("value"); //application01 서블릿이 실행되지 않았다면, null 값이 넘어온다. 따라서 예외처리를 해줘야함
			value++;
			application.setAttribute("value", value);
			out.print("<h1>value : " + value + "</h1>");
			
		}catch(NullPointerException e) {
			out.print("value의 값이 설정되지 않았습니다.");
		}
		out.close();
	}
}
