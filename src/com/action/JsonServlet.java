package com.action;


import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

public class JsonServlet extends HttpServlet {

        private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException {

                String sportsName = request.getParameter("sportsName");
                List<String> list = new ArrayList<String>();
                String json = null;
                if (sportsName.equals("Chess")) {
                   /* list.add("Lionel Messi");
                    list.add("Cristiano Ronaldo");
                    list.add("David Beckham");
                    list.add("Diego Maradona");*/
            }

                else if (sportsName.equals("Football")) {
                        list.add("Lionel Messi");
                        list.add("Cristiano Ronaldo");
                        list.add("David Beckham");
                        list.add("Diego Maradona");
                } else if (sportsName.equals("Cricket")) {
                        list.add("Sourav Ganguly");
                        list.add("Sachin Tendulkar");
                        list.add("Lance Klusener");
                        list.add("Michael Bevan");
                        list.add("WilliamSon Kanes");
                        list.add("Ishant Sharma");
                        list.add("James Anderson");
                        list.add("Vhubaneswar Kumar");
                        list.add("Jasprit Bumrah");
                        list.add("Mahammad Shami");
                        list.add("Rohit Sharma");
                        list.add("Virat kohli");
                        list.add("Mathew hayden");
                        list.add("Adam Gilchrist");
                        list.add("Jhonty Rhodes");
                        
                } else if (sportsName.equals("Select Sports")) {
                        list.add("Select Player");
                }

                json = new Gson().toJson(list);
                response.setContentType("application/json");
                response.getWriter().write(json);
        }
}