$(document).on('turbolinks:load', function() {
  console.log('whatup')
  $('#index-persistent').hide()
  $('#index-persistent-text').hide()
  setTimeout(function () {
    $('#index-persistent').show().addClass('animated fadeIn');}, 500
  );
  setTimeout(function () {
    $('#index-persistent-text').show().addClass('animated fadeInUp');}, 2000
  );

  if $('#persistent-container').hasClass('animated') {
    console.log('hi');
    $('#persistent-container').removeClass('animated');
  }
});
