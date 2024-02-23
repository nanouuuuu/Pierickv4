// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
$(".flip").click(function(){
    $(this).parents(".card").toggleClass("flipped");
  });
  $(".clickcard").click(function(){
    $(this).toggleClass("flipped");
  });