$(function(){
  $('.pc-header-box-lower__left-parent-wrap').hide();
 
 
  $('.pc-header-box-lower__left li').hover(function(){
    $('h2 a span',this).css('color','blue');
    $('ul',this).show();
    $('ul li ul',this).hide();
    },
    function(){
      $('h2 a span',this).css('color','black');
      $('ul',this).hide();
  })
 
 
  $('.pc-header-box-lower__left-parent').hover(function(){
    $('.pc-header-box-lower__left li h2 a span').css({"color": ""});
    $(this).css('background', 'red');
    $(this).children().css('color','white');
  },function(){
    $(this).css('background', '');
    $(this).children().css('color', '');
  })
 
 
  $('.pc-header-box-lower__left-children').hover(function(){
    $(this).css('background', 'lightgray');
    $('.pc-header-box-lower__left-grand-children').hover(function(){
      $(this).css('background', 'lightgray');
  },function(){
    $(this).css('background', '');
  })
  },function(){
    $(this).css('background', '');
  })
 
 
  $('.pc-header-box-lower__left-brand').hover(function(){
    $(this).css('color','blue');
    $(this).css('background', 'red');
    $(this).children().css('color','white');
  },function(){
    $(this).css('background', '');
    $(this).children().css('color', '');
  })
 
 
  $('.pc-header-box-lower__right .login-box').hover(function(){
    $(this).children().css('color','white');
    $(this).css('background','blue');
 
  },function(){
    $(this).css('background', '');
    $(this).children().css('color', '');
  })
 
 
 })
