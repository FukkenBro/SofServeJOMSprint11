package com.pchen.servlets;

import com.pchen.model.AddressBook;
import com.pchen.model.SortOrder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addressbook")
public class AddressBookServlet extends HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() throws ServletException {
        addressBook = AddressBook.getInstance();
        addressBook.create("John", "Brown", "Address #1");
        addressBook.create("Susan", "Brown", "Address #4");
        addressBook.create("Karen", "Davis", "Address #2");
        addressBook.create("John", "Taylor", "Address #1");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String order = request.getParameter("order");
        if (order != null) {
            addressBook.sortedBy(SortOrder.valueOf(order));
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/addressbook.jsp");
        request.setAttribute("addressbook", addressBook);
        requestDispatcher.forward(request, response);
    }
}
