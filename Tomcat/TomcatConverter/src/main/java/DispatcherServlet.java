

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve answers from the request parameters
        String answerQ1 = request.getParameter("answerQ1");
        String answerQ2 = request.getParameter("answerQ2");
        
        System.out.println("Answer for Question 1: " + answerQ1);
        System.out.println("Answer for Question 2: " + answerQ2);
        
        // Calculate points for each answer (you can implement your own scoring logic)
        int pointsQ1 = calculatePointsForQuestion(answerQ1);
        int pointsQ2 = calculatePointsForQuestion(answerQ2);
        
        // Create a map to store points for each question
        Map<String, Integer> pointsMap = new HashMap<>();
        pointsMap.put("question1", pointsQ1);
        pointsMap.put("question2", pointsQ2);
        
        // Forward points to the Second Server
        request.setAttribute("pointsMap", pointsMap);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/SecondServlet");
        dispatcher.forward(request, response);
    }

    // Implement your own scoring logic based on the answers
    private int calculatePointsForQuestion(String answer) {
    	if (answer.equals("Oslo"))
    		return 1;
    	else if (answer.equals("Volga"))
    		return 2;
    	else
    		return 0;
    }
}
