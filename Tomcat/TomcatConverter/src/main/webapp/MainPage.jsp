<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conversie Monede</title>
    <style>
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
            background: #e3f2fd;
            border: 0;
            outline: none;
            width: 80vw;
            max-width: 400px;
            font-size: 1.5em;
            transition: padding 0.3s 0.2s ease;
        }

        input:focus {
            padding-bottom: 5px;
        }

        .field {
            position: relative;
        }

        .line {
            width: 100%;
            height: 3px;
            position: absolute;
            bottom: -8px;
            background: #bdc3c7;
        }

        .line:after {
            content: " ";
            position: absolute;
            float: right;
            width: 100%;
            height: 3px;
            transform: scaleX(0);
            transition: transform 0.3s ease;
            background: #1abc9c;
        }

        img {
            height: 20px;
        }
        
    </style>
    <script>
    function convertLeiToEuro(event) {
        event.preventDefault();
        var leiAmount = document.getElementById("leiAmount").value;

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Set the result in the Euro textbox
                document.getElementById("result2").value = xhr.responseText;
            }
        };
        xhr.open("POST", "EuroLeiConverterServlet", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send("leiAmount=" + leiAmount);
    }

    function convertEuroToLei(event) {
        event.preventDefault();
        var euroAmount = document.getElementById("euroAmount").value;

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Set the result in the Lei textbox
                document.getElementById("result1").value = xhr.responseText;
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
	</form>
</body>
</html>
