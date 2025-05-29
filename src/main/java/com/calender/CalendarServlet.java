package com.calender;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;

@WebServlet("/CalendarServlet")
public class CalendarServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws jakarta.servlet.ServletException, IOException {

        try {
            int year = Integer.parseInt(request.getParameter("year"));
            int month = Integer.parseInt(request.getParameter("month"));
            int day = Integer.parseInt(request.getParameter("day"));

            if (year < 1800 || year > 2200) {
                request.setAttribute("error", "Year should be between 1800 and 2200.");
            } else {
                String dayOfWeek = DateUtils.getDayOfWeek(year, month, day);
                request.setAttribute("dayOfWeek", dayOfWeek);
            }

            request.setAttribute("year", year);
            request.setAttribute("month", month);
            request.setAttribute("day", day);

        } catch (Exception e) {
            request.setAttribute("error", "Not valid input.");
        }

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
