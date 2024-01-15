<!DOCTYPE html>
<html>
<head>
    <title>Online Quiz</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }
        
        h1 {
        	text-align: center;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="radio"] {
            margin-bottom: 10px;
        }
        
        .button-36 {
  margin: 0 auto;
  display: block;
  background-image: linear-gradient(92.88deg, #455EB5 9.16%, #5643CC 43.89%, #673FD7 64.72%);
  border-radius: 8px;
  border-style: none;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  flex-shrink: 0;
  font-family: "Inter UI","SF Pro Display",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,"Open Sans","Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 500;
  height: 4rem;
  padding: 0 1.6rem;
  text-align: center;
  text-shadow: rgba(0, 0, 0, 0.25) 0 3px 8px;
  transition: all .5s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-36:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}

@media (min-width: 768px) {
  .button-36 {
    padding: 0 2.6rem;
  }
 }
    </style>
</head>
<body>
    <h1>Quiz de cultura generala</h1>
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
        
		<input type="submit" class="button-36" role="button"></input>
    </form>
</body>
</html>
