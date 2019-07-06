$(function() {
  $('.slick').slick({
      prevArrow:'<div class="slider-arrow slider-prev fa fa-angle-left"></div>',
      nextArrow:'<div class="slider-arrow slider-next fa fa-angle-right"></div>',
      dots: true,
      autoplay: true,
      autoplaySpeed: 4000,
      speed: 800
  });

  $('.slick-dots li').on('mouseover', function() {
    $('.slick').slick('goTo', $(this).index());
  });
});
