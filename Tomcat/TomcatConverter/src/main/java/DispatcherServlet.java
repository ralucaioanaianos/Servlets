

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
        String answerQ3 = request.getParameter("answerQ3");
        String answerQ4 = request.getParameter("answerQ4");

        
        System.out.println("Answer for Question 1: " + answerQ1);
        System.out.println("Answer for Question 2: " + answerQ2);
        
        // Calculate points for each answer (you can implement your own scoring logic)
        int pointsQ1 = calculatePointsForQuestion(answerQ1);
        int pointsQ2 = calculatePointsForQuestion(answerQ2);
        int pointsQ3 = calculatePointsForQuestion(answerQ3);
        int pointsQ4 = calculatePointsForQuestion(answerQ4);

        System.out.println(pointsQ1);
        System.out.println(pointsQ2);

        
        // Create a map to store points for each question
        Map<String, Integer> pointsMap = new HashMap<>();
        pointsMap.put("question1", pointsQ1);
        pointsMap.put("question2", pointsQ2);
        pointsMap.put("question3", pointsQ3);
        pointsMap.put("question4", pointsQ4);
        
        // Forward points to the Second Server
        request.setAttribute("pointsMap", pointsMap);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/SecondServlet");
        dispatcher.forward(request, response);
    }

    // Implement your own scoring logic based on the answers
    private int calculatePointsForQuestion(String answer) {
    	if (answer.equals("15000"))
    		return 1;
    	else if (answer.equals("Vitamina C"))
    		return 1;
    	else if (answer.equals("24"))
    		return 2;
    	else if (answer.equals("1939"))
    		return 3;
    	else
    		return 0;
    }
}
