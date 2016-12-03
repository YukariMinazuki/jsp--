package com.lol;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowHeroesServlet
 */
@WebServlet("/ShowHeroesServlet")
public class ShowHeroesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowHeroesServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HeroManager manager = new HeroManager();
		List<Hero> heroes = manager.findAll();
		
		request.setAttribute("heroes", heroes);
		RequestDispatcher dis = request.getRequestDispatcher("/tain18/heroes.jsp");
		dis.forward(request, response);
	
	}

}
