
// show spinner on AJAX start
$(document).on("turbolinks:request-start", function() {
  $(".spinner-container").show();
});

$(document).on("turbolinks:load", function() {
  $(".spinner-container").fadeOut();
});
