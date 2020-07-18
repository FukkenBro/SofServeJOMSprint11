package com.pchen.servlets;

import com.pchen.model.AddressBook;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addressbook/updateEntry")
public class UpdateEntryServlet extends HttpServlet {

    private AddressBook addressBook;
    private String firstName;
    private String lastName;

    @Override
    public void init() throws ServletException {
        addressBook = AddressBook.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String address = request.getParameter("address");
        addressBook.update(firstName, lastName, address);
        response.sendRedirect("/addressbook");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        firstName = request.getParameter("firstname");
        request.setAttribute("firstname", firstName);
        lastName = request.getParameter("lastname");
        request.setAttribute("lastname", lastName);
        request.setAttribute("address", request.getParameter("address"));
        request.getRequestDispatcher("/WEB-INF/update-entry.jsp").forward(request, response);
    }
}
