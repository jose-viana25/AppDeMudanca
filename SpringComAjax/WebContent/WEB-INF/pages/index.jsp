<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>

<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<h1>Index</h1>
	
	<form>
		
		Nome:
		<input type="text" id="inpNome"/>
		
		Tipo:
		<input type="text" id="inpTipo"/>
		
		Descricao:
		<input type="text" id="inpDescricao"/>
	
		<input type="button" id="btnEnviar" value="Enviar"/>
		<input type="button" id="btnPesquisar" value="Pesquisar" />
		
	</form>

	<script>
	
		$('document').ready(function(){
			
			console.log('ready')
			$('#btnEnviar').on('click',function(){
				console.log('enviar apertado');
				enviarJogo();
				
			});
			
			$('#btnPesquisar').on('click',function(){
				console.log('pesquisar apertado');
				pesquisarJogo();
				
			});
			
		});
		
		function enviarJogo(){
			
			let nome = $('#inpNome').val();
			let descricao = $('#inpDescricao').val();
			let tipo = $('#inpTipo').val();
			
			var jogo = {nome:nome,tipo:tipo,descricao:descricao};
			console.log(JSON.stringify(jogo));
			$.ajax({
				async:false,
			      type: 'POST',
			      dataType : 'json',
			      url: "jogo",
			      data: JSON.stringify(notificacao),
			      success:function(resultado){
			       console.log("Criar: Ticket enviado");
			      }
			 });		
			
			
		}
		
		function pesquisarJogo(){}
	
	
	</script>

</body>
</html>