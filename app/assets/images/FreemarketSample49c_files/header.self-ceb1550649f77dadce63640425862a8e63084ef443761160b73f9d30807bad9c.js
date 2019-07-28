$(function(){
  $('.pc-header-box-lower__left-parent-wrap').find('ul').hide();
  $('.pc-header-box-lower__left li').hover(function(){
  $(this).find('ul').show();
  },
  function(){  
  $(this).find('ul').hide();
  })

  $('.pc-header-box-lower__left li').find('ul').hide();
  $('.pc-header-box-lower__left li').hover(function(){
  $(this).find('ul').show();
  },
  function(){
  
  $(this).find('ul li').hide();
  })

})
