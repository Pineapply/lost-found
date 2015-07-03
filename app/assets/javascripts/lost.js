// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function getlocation() {
  navigator.geolocation.getCurrentPosition(
    function(p) {
      window.location.href = "/stops?lat="+ p.coords.latitude + "&lng=" +  p.coords.longitude;
    },
    function () {
      alert('Geo location is not enabled');
    }
)}

$(document).on("page:load, ready", function() {
  $(".get-location, .search-location button").click(function(){
    getlocation();
  });
})
