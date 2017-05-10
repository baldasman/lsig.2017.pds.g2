function valida(){
	var nome = document.getElementById("nome").value;
	var email = document.getElementById("email").value;
	var mensagem = document.getElementById("mensagem").value;



	//Validar Nome
	if(nome == ""){
		alert("Campo 'Nome' vazio!");
		document.getElementById("nome").focus();
		return false;
	}
	else if(nome.length<3){
		alert("Campo 'Nome' deve ter mais de 3 caracteres");
		document.getElementById("nome").focus();
		return false;
	}
	else if(!isNaN(nome)){
		alert("Campo 'Nome' deve ter apenas letras" );
		document.getElementById("nome").focus();
		return false;
	}
	//Validar Email
	else if  (email.indexOf("@")==-1 ||email.indexOf(".")==-1 ||email.length==0){
	alert("Endereço de email inválido");
		document.getElementById("email").focus();
		return false;
	}
	//Validar Mensagem

	if(mensagem == ""){
		alert("Campo 'Mensagem' vazio!");
		document.getElementById("mensagem").focus();
		return false;
	}
	else if(mensagem.length<4){
		alert("Campo 'Mensagem' deve ter de 4 a 600 caracteres!");
		document.getElementById("mensagem").focus();
		return false;
	}
	else{
		return true;
	}

}
