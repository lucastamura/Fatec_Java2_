/*
 -------------------- AULA 18/04 -------------------------------------
 */

package exservlets;

import java.io.IOException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "TabuadaServlet", urlPatterns= "/tabuada")
public class TabuadaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            response.getRequestDispatcher("/tabuada.jsp").forward(requetst, response);
            
    }
}
