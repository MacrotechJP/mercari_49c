$(function(){

  //カテゴリーについてのセレクトボックスを増表示する
  $('.category1').change(function() {
    var cal = $('.category1').val();
    if(cal != ""){
      $(".item_main_center-cell4-right_select2."+cal).show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      if($(".item_main_center-cell4-right_select3").length){
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4-right_select3").hide();
        $(".item_main_center-cell4").css('height', '-=220');
        $(".item_main").css('height', '-=220');
      }else{
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4").css('height', '-=110');
        $(".item_main").css('height', '-=110');
      }
    }
    
  });
  $('.category2').change(function() {
    var cal = $('.category1').val();
    var cal2 = $(this).val();
    if(cal2 != ""){
      $(".item_main_center-cell4-right_select3."+cal+"_"+cal2).show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      $(".item_main_center-cell4-right_select3").hide();
      $(".item_main_center-cell4").css('height', '-=110');
      $(".item_main").css('height', '-=110');
    }
    
  });
  $('.category3').change(function() {
    
      $(".item_main_center-cell4-right_selectBrand").show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    
  });

  //配送についてのセレクトボックスを増表示する
  $('#drive').change(function() {
    var val = $('#drive').val();
    console.log(111);
    if(val != ""){
      $(".driveWay").show();
      $(".item_main_center-cell5").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      $(".driveWay").hide();
      $(".item_main_center-cell5").css('height', '-=110');
      $(".item_main").css('height', '-=110');
    }
    
  });

  //販売価格の計算を行う
  $("#price").on("keyup",function(){
    var price = $("#price").val();

    if(price < 300 || price > 9999999){
      $("#rightUp").text("-");
      $("#rightDown").text("-");
    }else{
      $("#rightUp").text("¥"+Math.round(price*0.1).toLocaleString());
      $("#rightDown").text("¥"+Math.round(price*0.9).toLocaleString());
    }
    
  })

});

