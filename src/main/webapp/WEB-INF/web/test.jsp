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
		<section class="header">
			<h1>Spring Boot + Jasper Reports</h1>
		</section>
	</div>

	<div class="container">
		<div class="row">
			<div class="one-half column" style="margin-top: 5%; margin-bottom: 2%">
				<h5>Impressão por método POST</h5>
				<p>
					Enviei parâmetros para o relatório<br />Parâmetros não
					obrigatórios.
				</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="eleven column">
				<form action="/report" method="POST" target="_blank">

					
					<div class="row">
						<div class="six columns">
							<label for="nome">Seu Nome</label>
							
							<input class="u-full-width" type="text" placeholder="João da Silva" id="nome" name="nome">
						</div>
						
						<div class="six columns">
							<label for="assinatura">Assinatura do relatório</label>
							
							<select class="u-full-width" id="assinatura" name="assinatura">
								<option value="SIM">Sim</option>
								<option value="NAO">Não</option>
							</select>
						</div>
					</div>
					
					<label for="cabecalho">Cabeçalho do relatório</label>
					<textarea class="u-full-width" placeholder="Relatório impresso para conferência de estoque" id="cabecalho" name="cabecalho"></textarea>
					
					<input class="button-primary" type="submit" value="Imprimir">
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<section class="footer">
			
				<svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32">
				<path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path></svg>
			</a>
		</section>
	</div>
<a href=""> report</a>
</body>
</html> 