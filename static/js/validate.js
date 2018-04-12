$(document).ready(function(){
	$('.not-null').up(function(){
	 let value = $(this).val();
	 if(value.lenght <= 0){
	 	alert('Todos os campos são obrigatorios!')
	 }
	});
});