

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@WebServlet("/SecondServer")
public class SecondServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve points from the request attributes
        Map<String, Integer> pointsMap = (Map<String, Integer>) request.getAttribute("pointsMap");
        
        // Calculate total points
        int totalPoints = calculateTotalPoints(pointsMap);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Quiz Result</title>");
        out.println("<style>");
        out.println("body {");
        out.println("    font-family: 'Arial', sans-serif;");
        out.println("    display: flex;");
        out.println("    align-items: center;");
        out.println("    justify-content: center;");
        out.println("    height: 100vh;");
        out.println("    margin: 0;");
        out.println("}");
        out.println("img { width: 100px; height: 100px; }");
        out.println("h1 { text-align: center; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<img src='confetti.gif' alt='Confetti' />");
        out.println("<h1>Felicitari! Ai obtinut " + totalPoints + " puncte!</h1>");

        // Close PrintWriter
        out.close();
    }

    // Calculate total points based on points for each question
    private int calculateTotalPoints(Map<String, Integer> pointsMap) {
        int totalPoints = 0;
        for (int points : pointsMap.values()) {
            totalPoints += points;
        }
        return totalPoints;
    }
}

