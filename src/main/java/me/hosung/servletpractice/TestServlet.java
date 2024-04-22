package me.hosung.servletpractice;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "testServlet", value = "/test-servlet")
public class TestServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>\n" +
                "<head>\n" +
                "    <title>JSP - Hello World</title>\n" +
                "</head>\n" +
                "<body>");
    }

    public void destroy() {
    }
}