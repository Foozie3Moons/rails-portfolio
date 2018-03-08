
// show spinner on AJAX start
$(document).on("turbolinks:before-visit", function(){
  $(".spinner-container").show();
});

$(document).on("turbolinks:load", function(){
  $(".spinner-container").fadeOut(1000);
});
