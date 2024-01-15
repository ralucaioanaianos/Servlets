<!DOCTYPE html>
<html>
<head>
    <title>Online Quiz</title>
</head>
<body>
    <form action="DispatcherServlet" method="post">
        <label>(1p) Care este numarul aproximativ de tepi pe care ii are un arici?</label><br>
        <input type="radio" name="answerQ1" value="8000">8000<br>
        <input type="radio" name="answerQ1" value="12000">12000<br>
        <input type="radio" name="answerQ1" value="15000">15000<br>

        <br>

        <label>(1p) Ce fel de vitamina contine in cel mai mare procent patrunjelul?</label><br>
        <input type="radio" name="answerQ2" value="Vitamina C">Vitamina C<br>
        <input type="radio" name="answerQ2" value="Vitamina D">Vitamina D<br>
        <input type="radio" name="answerQ2" value="Vitamina E">Vitamina E<br>

        <br>
        
        
         <label>(2p) Cate coaste are un om?</label><br>
        <input type="radio" name="answerQ3" value="18">18<br>
        <input type="radio" name="answerQ3" value="24">24<br>
        <input type="radio" name="answerQ3" value="32">32<br>

        <br>
        
        <label>(3p) In ce an a izbucnit cel de-al Doilea Razboi Mondial?</label><br>
        <input type="radio" name="answerQ4" value="1918">1918<br>
        <input type="radio" name="answerQ4" value="1938">1938<br>
        <input type="radio" name="answerQ4" value="1939">1939<br>
        

        <input type="submit" value="Submit">
    </form>
</body>
</html>
