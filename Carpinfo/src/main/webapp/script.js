//RECORRIDO DEL CATAMARÁN SANITARIO
const btnVerRecorridoCata = document
	.getElementById('verRecorridoCata');
const tablaCatamaranSanitario = document
	.getElementById('tablaCatamaranSanitario');

btnVerRecorridoCata
	.addEventListener(
		'click',
		function() {
			if (tablaCatamaranSanitario.style.display === 'none') {
				tablaCatamaranSanitario.style.display = 'block';
			} else {
				tablaCatamaranSanitario.style.display = 'none';
			}
		});

//		HORARIOS DE LANCHA DIAS DE SEMANA
const btnVerHorarios = document
	.getElementById('verHorariosSemana');
const tablaHorarios = document
	.getElementById('tablaHorariosSemana');

btnVerHorarios
	.addEventListener(
		'click',
		function() {
			if (tablaHorarios.style.display === 'none') {
				tablaHorarios.style.display = 'block';
			} else {
				tablaHorarios.style.display = 'none';
			}
		});

//		HORARIO DE LANCHA FINDE
const btnVerHorariosFinde = document
	.getElementById('verHorariosFinde');
const tablaHorariosFinde = document
	.getElementById('tablaHorariosFinde');

btnVerHorariosFinde
	.addEventListener(
		'click',
		function() {
			if (tablaHorariosFinde.style.display === 'none') {
				tablaHorariosFinde.style.display = 'block';
			} else {
				tablaHorariosFinde.style.display = 'none';
			}
		});