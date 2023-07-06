package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculadora")
public class CalculadoraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		String calculo1 = request.getParameter("calculo1");
//		String calculo2 = request.getParameter("calculo2");
//		String soma = request.getParameter("soma");
//		
//		
//		double n1 = Double.parseDouble(request.getParameter(calculo1));
//		double n2 = Double.parseDouble(request.getParameter(calculo2));
//		
//		double resultado = 0;
//
//		RequestDispatcher rd = request.getRequestDispatcher("/calculadora.jsp");
//		if (soma != null && soma.equalsIgnoreCase("+")) {
//			resultado = n1 + n2;
//			request.setAttribute("resultado", resultado);
//		}
//		
//		
//		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
