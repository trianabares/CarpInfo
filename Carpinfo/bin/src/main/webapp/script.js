const btnVerHorarios = document.getElementById('verHorarios');
const tablaHorarios = document.getElementById('tablaHorarios');

btnVerHorarios.addEventListener('click', function() {
	if (tablaHorarios.style.display === 'none') {
		tablaHorarios.style.display = 'block';
	} else {
		tablaHorarios.style.display = 'none';
	}
});