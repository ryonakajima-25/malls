$(function() {
  $('.slider').slick({
      autoplay: true,
      autoplaySpeed: 4000,
      speed: 1600
  });

  $('.slick-dots li').on('mouseover', function() {
    $('.slider').slick('goTo', $(this).index());
  });
});