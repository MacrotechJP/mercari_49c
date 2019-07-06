$(function () {
  $(".list").on("mouseover" ,function(){
    $(this).css('text-decoration','underline'); 
  })
  $(".list").on("mouseout" ,function(){
    $(this).css('text-decoration','none'); 
  })
})


