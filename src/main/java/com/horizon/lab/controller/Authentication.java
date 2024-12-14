package com.horizon.lab.controller;

import com.horizon.lab.model.User;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Authentication", value = "/verif", initParams = {
		@WebInitParam(name = "username", value = "guest"),
		@WebInitParam(name = "password", value = "horizon2024")
})
public class Authentication extends HttpServlet {

	private String username;
	private String password;

	@Override
	public void init() {
		username = getServletConfig().getInitParameter("username");
		password = getServletConfig().getInitParameter("password");
	}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		var _username = request.getParameter("username");
		var _password = request.getParameter("password");

		if (_username.equals(username) && _password.equals(password)) {
			// TODO:
			var session = request.getSession();
			session.setAttribute("login", new User(_username, _password));
		}
		else {
			// TODO:
			request.setAttribute("error", "Invalid username or password.");
			response.sendRedirect("login.jsp");
		}

    }
}