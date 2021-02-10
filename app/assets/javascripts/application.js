// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets

$(function() {
  $('#slider').slick({
      dots: true, //スライドの下にドットのナビゲーションを表示
      autoplay: true, //自動再生
      autoplaySpeed: 1500, //再生スピード
  });
});

window.onload = function() {
 $('#gallery-animation').hover(
 function(){$(this).addClass('gallery-image');},
 function(){$(this).removeClass('gallery-image');}
 );
};

// function initMap() {
//     var mapPosition = new google.maps.LatLng( 35.6882495,139.6856557 );//緯度経度
//     var map = new google.maps.Map(document.getElementById("gmap"), {
//     zoom: 17,//ズーム
//     center: mapPosition
//   });
//     var marker = new google.maps.Marker({
//     position: mapPosition,
//     map: map
//     });
  