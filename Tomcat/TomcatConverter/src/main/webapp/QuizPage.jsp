<!DOCTYPE html>
<html>
<head>
    <title>Online Quiz</title>
</head>
<body>
    <form action="DispatcherServlet" method="post">
        <label>(1p) Care este capitala Norvegiei?</label><br>
        <input type="radio" name="answerQ1" value="Budapesta">Budapesta<br>
        <input type="radio" name="answerQ1" value="Oslo">Oslo<br>
        <input type="radio" name="answerQ1" value="Berlin">Berlin<br>

        <br>

        <label>(2p) Care este cel mai lung fluviu din Europa?</label><br>
        <input type="radio" name="answerQ2" value="Dunarea">Dunarea<br>
        <input type="radio" name="answerQ2" value="Volga">Volga<br>
        <input type="radio" name="answerQ2" value="Rinul">Rinul<br>

        <br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
