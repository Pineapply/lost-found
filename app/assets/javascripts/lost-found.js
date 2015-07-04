// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Geolocation
function getlocation() {
  navigator.geolocation.getCurrentPosition(
    function(p) {
      window.location.href = "/stops?lat="+ p.coords.latitude + "&lng=" +  p.coords.longitude;
    },
    function () {
      alert('Geo location is not enabled');
    }
)}


// TODO: modularized tangled JS below
$(document).on("ready page:load", function() {
  $(".get-location, .search-location button").click(function(){
    getlocation();
  });

  $(".tram-line").click(function() {
    $(this).next().toggle();
  });
})
