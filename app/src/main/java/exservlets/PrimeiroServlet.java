/*
-----------------  AULA 18/04  -----------------
*/ 

package exservlets;

import java.io.IOException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "IndexServlet", urlPatterns= "/")
public class PrimeiroServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String n = request.getParameter("nome");
            request.setAttribute("nome", n);
            //response.getWriter().print("Olá" + n);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}

//doGet - vai responder pela requisição em get
//doPost - vai responder pela requisição em post - exemplo
//void método de serviço que não retorna nada