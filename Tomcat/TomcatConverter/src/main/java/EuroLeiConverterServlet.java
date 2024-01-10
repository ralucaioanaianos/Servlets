import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EuroLeiConverterServlet")
public class EuroLeiConverterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String leiAmountStr = request.getParameter("leiAmount");
        double leiAmount = Double.parseDouble(leiAmountStr);
        double convertedAmount = leiAmount * 4.97;
        response.getWriter().println("Echivalentul in euro: " + convertedAmount);
    }
}
