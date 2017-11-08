$(document).on('turbolinks:load', function() {
  $('#index-persistent').hide();
  $('#index-persistent-text').css('visibility','hidden');
  // $('#about').css('visibility','hidden');
  // $('#portfolio').hide();

  setTimeout(function () {
    $('#index-persistent').show().addClass('animated fadeIn');
  }, 250);
  setTimeout(function () {
    $('#index-persistent-text').css('visibility','visible').addClass('animated fadeInUp');
  }, 2000);
  $('#portfolio').show().addClass('animated fadeIn');
  $('#contact').show().addClass('animated fadeIn');
  if ($('#persistent-container').hasClass('animated')) {
    $('#persistent-container').removeClass('animated');
  }
});
