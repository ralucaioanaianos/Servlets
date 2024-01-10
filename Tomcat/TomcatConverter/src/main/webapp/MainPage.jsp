<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conversie Monede</title>
</head>
<body>
    <form action="LeiEuroConverterServlet" method="post">
        <label for="euroAmount">Euro:</label>
        <input type="text" id="euroAmount" name="euroAmount" required>
        <input type="submit" value="Converteste in lei">
    </form>

    <form action="EuroLeiConverterServlet" method="post">
        <label for="leiAmount">Lei:</label>
        <input type="text" id="leiAmount" name="leiAmount" required>
        <input type="submit" value="Converteste in euro">
    </form>
</body>
</html>
