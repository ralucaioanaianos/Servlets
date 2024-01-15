

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/SecondServer")
public class SecondServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve points from the request attributes
        Map<String, Integer> pointsMap = (Map<String, Integer>) request.getAttribute("pointsMap");
        
        // Calculate total points
        int totalPoints = calculateTotalPoints(pointsMap);
        
        // Send total points to the client
        response.getWriter().write("Total Points: " + totalPoints);
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

