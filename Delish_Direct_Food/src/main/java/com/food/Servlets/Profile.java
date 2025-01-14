package com.food.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.food.model.User;

    @WebServlet("/ProfileServlet")
    public class Profile extends HttpServlet {
        private static final long serialVersionUID = 1L;

        protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            
            // Check user authentication
            if (session.getAttribute("user") == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            if (request.getMethod().equals("POST")) {
                handlePost(request, response);
            } else {
                displayProfile(request, response);
            }
        }

        private void handlePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");

            // Retrieve updated profile information
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");

            // Validate input
            if (username == null || username.isEmpty() ||
                email == null || email.isEmpty() ||
                password == null || password.isEmpty() ||
                confirmPassword == null || confirmPassword.isEmpty()) {
                request.setAttribute("error", "All fields are required.");
                displayProfile(request, response);
                return;
            }

            if (!password.equals(confirmPassword)) {
                request.setAttribute("error", "Passwords do not match.");
                displayProfile(request, response);
                return;
            }

            // Update user details
            user.setUserName(username);
            user.setEmail(email);
            user.setPassword(password);  // In real applications, ensure passwords are hashed before storing

            // Update user session
            session.setAttribute("user", user);

            // Redirect to profile page with success message
            request.setAttribute("success", "Profile updated successfully.");
            displayProfile(request, response);
        }

        private void displayProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
            dispatcher.forward(request, response);
        }
    }
