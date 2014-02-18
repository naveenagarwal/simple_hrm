$(document).on('page:load', function() {
  $('a[href="' + this.location.pathname + this.location.search + '"]').parent().addClass('active');
});