$(document).ready(function(){
	$('.not-null').keyup(function(){
	 if($(this).val().lenght <= 0){
	 	alert('Todos os campos são obrigatorios!')
	 }
	});
});