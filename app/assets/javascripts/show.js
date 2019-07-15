$(function(){

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
});

