import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LeiEuroConverterServlet")
public class LeiEuroConverterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String euroAmountStr = request.getParameter("euroAmount");
        double euroAmount = Double.parseDouble(euroAmountStr);
        double convertedAmount = euroAmount * 4.75;
        response.setContentType("text/plain");

        response.getWriter().write(String.valueOf(convertedAmount));
    }
}
