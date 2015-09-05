// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Massive JS Hack

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

function is_ptv_open(){
  var current_time = new Date().getHours();

  if(current_time <= 24 && current_time >= 6){
    $(".is_ptv_open").html("<span class='label label-success'>PTV is open now</label>");
  }
  else{
    $(".is_ptv_open").html("<span class='label label-default'>PTV is asleep... ZZZ...</span>");
  }
}

function show_loading_screen(){
  $("body").addClass("loading");
}

// TODO: modularized tangled JS below
// DO NOT do this in real project
$(document).on("ready page:load", function() {

  is_ptv_open();

  $(document).on('click',".get-location", function(){
    show_loading_screen();
    if ($(this).data("type") == "found") {
      window.location.href = "/missings";
    }
    else {
      getlocation();
    }
  });

  $(document).on('click','.location-btn', function(){
    if ($(this).data("type") == "found") {
      window.location.href = "/missings";
    } else {
      window.location.href = "/stops?address=" + $('.location-address').val(); 
    }
  });

  $(document).on('click', '.tram-line', function() {
      // console.log('click');
      if ($(this).next().css('display') == 'none') {
        // console.log('none');
        $(this).next().show();
      } else {
        // console.log('hide');
        $(this).next().hide();
      }
  });
  
})
