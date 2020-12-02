package controller;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Calculate extends HttpServlet {
    public Calculate(){

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");
        String operacion = request.getParameter("operacion");

        if (!valor1.equals("") && !valor2.equals("") && !operacion.equals("")) {
            float val1 = Float.parseFloat(valor1);
            float val2 = Float.parseFloat(valor2);

            Calculator calculator = new Calculator(val1, val2, operacion);
            request.getSession().setAttribute("Calculadora", calculator);
            request.getRequestDispatcher("fieldsuccess.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("fielderror.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.processRequest(request, response);
    }

    public String getServeletInfo() {
        return "Short description";
    }
}
