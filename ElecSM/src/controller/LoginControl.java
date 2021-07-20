package controller;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import context.DBContext;

@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String rememberMeStr = request.getParameter("rememberMe");
        boolean remember = "Y".equals(rememberMeStr);
 
        Account a = null;
        boolean hasError = false;
        String errorString = null;
 
        if (user == null || pass == null || user.length() == 0 || pass.length() == 0) {
        	
        } else {
            Connection conn = DBContext.getMySQLConnection();
            try {
                // TÃ¬m user trong DB.
                a = DAO.login(conn, user, pass);
 
                if (a == null) {
                request.setAttribute("mess", "Wrong user or pass");
                request.setAttribute("acc", a);
                RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/Login.jsp");

                dispatcher.forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
        }
        // Trong trÆ°á»�ng há»£p cÃ³ lá»—i,
        // forward (chuyá»ƒn hÆ°á»›ng) tá»›i /WEB-INF/views/login.jsp
        if (hasError) {
            a = new Account();
            a.setUser(user);
            a.setPass(pass);
 
            // LÆ°u cÃ¡c thÃ´ng tin vÃ o request attribute trÆ°á»›c khi forward.
            request.setAttribute("mess", "Wrong user or pass");

            // Forward (Chuyá»ƒn tiáº¿p) tá»›i trang /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
            = this.getServletContext().getRequestDispatcher("/Login.jsp");
 
            dispatcher.forward(request, response);
        }
        // TrÆ°á»�ng há»£p khÃ´ng cÃ³ lá»—i.
        // LÆ°u thÃ´ng tin ngÆ°á»�i dÃ¹ng vÃ o Session.
        // VÃ  chuyá»ƒn hÆ°á»›ng sang trang userInfo.
        else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(1000);
            // Redirect (Chuyá»ƒn hÆ°á»›ng) sang trang /userInfo.
            response.sendRedirect(request.getContextPath() + "/index.jsp");
          // response.sendRedirect(request.getContextPath() + "/home1");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
