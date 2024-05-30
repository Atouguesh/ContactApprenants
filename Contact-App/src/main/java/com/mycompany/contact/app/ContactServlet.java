package com.mycompany.contact.app;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contacts")
public class ContactServlet extends HttpServlet {

    private final List<Contact> contacts = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        super.init();
        // Ajouter un contact par défaut pour tester
        contacts.add(new Contact("Amidou", "123456789", "Bamako", "Développeur"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("/Contact.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String numberoftel = req.getParameter("numberoftel");
        String country = req.getParameter("country");
        String job = req.getParameter("job");
        contacts.add(new Contact(name, numberoftel, country, job));
        resp.sendRedirect("contacts");
    }
    
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String contactId = req.getParameter("contactId");
            if (contactId != null && !contactId.isEmpty()) {
                int id = Integer.parseInt(contactId);
                Contact contactToRemove = null;
                for (Contact contact : contacts) {
                    if (contact.getId() == id) {
                        contactToRemove = contact;
                        break;
                    }
                }
                if (contactToRemove != null) {
                    contacts.remove(contactToRemove);
                    resp.setStatus(HttpServletResponse.SC_OK);
                } else {
                    resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                } 
            }else {
                     resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);   
                }
            
     
    }
}
