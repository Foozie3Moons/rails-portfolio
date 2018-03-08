
// show spinner on AJAX start
$(document).on("turbolinks:click", function(){
  console.log($('.spinner-container').css('display'));
  $(".spinner-container").show(function() {
    console.log($('.spinner-container').css('display'));
  });
});

$(document).on("turbolinks:load", function(){
  // console.log($('.spinner-container').css('display'));
  // $(".spinner-container").fadeOut(1000, function() {
  //   console.log($('.spinner-container').css('display'));
  // });
});
