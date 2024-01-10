<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conversie Monede</title>
    <style>
    body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
}
        .button-13 {
            background-color: #fff;
            border: 1px solid #d5d9d9;
            border-radius: 8px;
            box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
            box-sizing: border-box;
            color: #0f1111;
            cursor: pointer;
            display: inline-block;
            font-family: "Amazon Ember", sans-serif;
            font-size: 13px;
            line-height: 29px;
            padding: 0 10px 0 11px;
            position: relative;
            text-align: center;
            text-decoration: none;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            vertical-align: middle;
            width: 150px;
        }

        .button-13:hover {
            background-color: #f7fafa;
        }

        .button-13:focus {
            border-color: #008296;
            box-shadow: rgba(213, 217, 217, .5) 0 2px 5px 0;
            outline: 0;
        }

        input {
            background: #EDF6FF;
            border: 0;
            outline: none;
            width: 80vw;
            max-width: 400px;
            font-size: 1.5em;
            transition: padding 0.3s 0.2s ease;
        }

        input:focus {
            background: #DCE7F1;
        }

        .field {
            position: relative;
        }

        
        img {
            height: 20px;
        }
        
    </style>
<script>
    function convertLeiToEuro(event) {
        event.preventDefault();
        var leiAmount = document.getElementById("leiAmount").value;
        var resultElement = document.getElementById("result2");
        var errorMessageElement = document.getElementById("error2");

        if (!leiAmount || isNaN(parseFloat(leiAmount))) {
            errorMessageElement.innerHTML = "Please enter a valid number.";
            resultElement.value = "";
            return;
        }

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Set the result in the Euro textbox
                resultElement.value = xhr.responseText;
                errorMessageElement.innerHTML = "";
            }
        };
        xhr.open("POST", "EuroLeiConverterServlet", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send("leiAmount=" + leiAmount);
    }

    function convertEuroToLei(event) {
        event.preventDefault();
        var euroAmount = document.getElementById("euroAmount").value;
        var resultElement = document.getElementById("result1");
        var errorMessageElement = document.getElementById("error1");

        if (!euroAmount || isNaN(parseFloat(euroAmount))) {
            errorMessageElement.innerHTML = "Please enter a valid number.";
            resultElement.value = "";
            return;
        }

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Set the result in the Lei textbox
                resultElement.value = xhr.responseText;
                errorMessageElement.innerHTML = "";
            }
        };
        xhr.open("POST", "LeiEuroConverterServlet", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send("euroAmount=" + euroAmount);
    }

    </script>
</head>
<body>
    <h1>Convertor Euro-Lei si Lei-Euro</h1>
    <h3>Lei - Euro</h3>
    <form>
        <img src="RO-flag.jpg">
        <label for="leiAmount">Lei:</label>
        <input type="text" id="leiAmount" name="leiAmount" required>
        <input type="submit" value="Converteste in Euro" class="button-13" onclick="convertLeiToEuro(event);">
        <br>
        <img src="EE-flag.jpg">
        <label for="euroAmount">Euro:</label>
		<input type="text" id="result2" readonly>    </form>
		<div id="error2" class="error-message"></div>
	<h3>Euro - Lei</h3>
    <form action="EuroLeiConverterServlet" method="post">
	    <img src="EE-flag.jpg">
	    <label for="euroAmount">Euro:</label>
	    <input type="text" id="euroAmount" name="euroAmount" required>
	    <input type="submit" value="Converteste in Lei" class="button-13" onclick="convertEuroToLei(event);">
	    <br>
	    <img src="RO-flag.jpg">
	    <label>Lei:</label>
	    <!-- Use an input element to display the result -->
	    <input type="text" id="result1" readonly>
	    <div id="error1" class="error-message"></div>
	</form>
</body>
</html>
