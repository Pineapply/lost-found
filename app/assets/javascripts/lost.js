// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function getlocation() {
	navigator.geolocation.getCurrentPosition(
		function(p) {
			alert(p.coords.latitude);

		},
		function () {
			alert('Error locating your location :(');
		}
	)}
