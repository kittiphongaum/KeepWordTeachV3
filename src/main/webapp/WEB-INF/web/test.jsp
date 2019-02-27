 <!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spring Boot + Jasper Reports</title>
<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/custom.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<body>

	
	<div class="container">
		<div class="row">
			<div class="eleven column">
				<form action="/report" method="POST" target="_blank">
					<input class="button-primary" type="submit" value="Imprimir">
				</form>
			</div>
		</div>
	</div>

	<button onclick="fn()">sssss</button>
	<button  onclick="window.open('http://localhost:8080/jasperserver/flow.html?j_username=jasperadmin&j_password=jasperadmin&_flowId=viewReportFlow&reportUnit=/reports/keepReport/testReport&decorate=no&output=pdf');">testttt</button>
</body>

<script>
function fn(){
	

	window.open('https://www.youtube.com','_blank');

}
</script>
</html> 