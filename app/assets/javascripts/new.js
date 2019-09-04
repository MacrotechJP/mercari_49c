$(function(){

  $(".item_main_center-cell4-right_select2 select").val("");
  $(".item_main_center-cell4-right_select3 select").val("");
  //カテゴリーについてのセレクトボックスを増表示する
  $('.category1').change(function() {
    var cal = $('.category1').prop("selectedIndex");
    if(cal != 0){
      $(".item_main_center-cell4-right_select2."+cal).show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      if($(".item_main_center-cell4-right_select3").length){
        $(".item_main_center-cell4-right_select2 select").val("");
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4-right_select3 select").val("");
        $(".item_main_center-cell4-right_select3").hide();
        $(".item_main_center-cell4").css('height', '-=220');
        $(".item_main").css('height', '-=220');
      }else{
        $(".item_main_center-cell4-right_select2 select").val("");
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4").css('height', '-=110');
        $(".item_main").css('height', '-=110');
      }
    }
    
  });
  $('.category2').change(function() {
    var cal = $('.category1').prop("selectedIndex");
    var cal2 = $(this).prop("selectedIndex");
    if(cal2 != 0 ){
      $(".item_main_center-cell4-right_select3."+cal+"_"+cal2).show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      $(".item_main_center-cell4-right_select3 select").val("");
      $(".item_main_center-cell4-right_select3").hide();
      $(".item_main_center-cell4").css('height', '-=110');
      $(".item_main").css('height', '-=110');
    }
    
  });
  $('.category3').change(function() {
    
      $(".item_main_center-cell4-right_selectBrand").show();
      $(".item_main_center-cell4-right_selectSize").show();
      $(".item_main_center-cell4").css('height', '+=220');
      $(".item_main").css('height', '+=220');
    
  });

  //配送についてのセレクトボックスを増表示する
  $('#drive').change(function() {
    var val = $('#drive').prop("selectedIndex");
    if(val != 0 ){
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

$(document).ready(function () {

  var cnn = 0; 
  $(document).on('change',".file", function(){
    if($(this).val() != ""){
      var fileprop = $(this).prop('files')[0],
          filereader = new FileReader(),
          view_box = $(this).parent('.drag');
      
      var img = '<div class="upImage" id='+cnn+'>'+
                  '<img id="'+cnn+'">'+
                  '<div class="upImage_buton '+cnn+'">'+
                    '<li><a class="img_edi" id="img_edi'+cnn+'" >編集</a></li>'+
                    '<li><a href="#" class="img_del">削除</a></li>'+
                    '</div>'+
                '</div>';
      view_box.append(img);
      $(this).clone(true).insertAfter(this);
      $(this).attr('name','file[]');
      $(this).attr('class','change_file img_edi'+cnn);
      $(".img_edi"+cnn).prependTo(".upImage_buton."+cnn);
      
      filereader.onload = function() {
        view_box.find('#'+cnn+' img').attr('src', filereader.result);
        cnn += 1 ;
        img_del(view_box);
      }
      filereader.readAsDataURL(fileprop);
      classCnt()
    }
  });
  
  function img_del(target){
    target.find("a.img_del").on('click',function(){
      var self = $(this);
      var deleteNumber = self.attr('name')
      setTimeout(function(){
        var del_img = '<input type="hidden" class="image_delate'+deleteNumber+'" name="image_delate[]">';
        $("form").append(del_img);
        $(".image_delate"+deleteNumber+"").val(deleteNumber);
        $(".image_delate").val(deleteNumber);
        self.parent().parent().parent().remove();
        classCnt()
      } , 0);   
      
      return false;
    });
    target.find(".change_file").on('change',function(e){
      var filereader = new FileReader(),
          cnt = $(this).parent().parent().find('img').attr("id");
      filereader.onload = function (e) {
        $("#"+cnt+" img").attr('src', e.target.result);
      }
      filereader.readAsDataURL(e.target.files[0]);
      return false;
    });
  } 
  function classCnt(){
    var size = $('.upImage').length;
    if(size == 0){
      $(".drag_over").css({
        "margin-left": "0",
        "width": "620px"
      });
    }else if(size == 1){
      $(".drag_over").css({
        "margin-left": "126.5px",
        "width": "493.5px"
      });
    }else if(size == 2){
      $(".drag_over").css({
        "margin-left": "253px",
        "width": "367px"
      });
      $(".drag_center").css({
        "font-size": "14px"
      });
    }else if(size == 3){
      $(".drag_over").css({
        "margin-left": "379.5px",
        "width": "240.5px"
      });
      $(".drag_center").css({
        "font-size": "13px"
      });
    }else if(size == 4){
      $(".drag_over").css({
        "margin-left": "506px",
        "width": "114px",
        "display": "block"
      });
      $(".drag_center p").css({
        "font-size": "9px"
      });
      $(".drag_over2").css({
        "display": "none"
      });
      $(".file").css({
        "position": "absolute",
        "top": "0"
      });
    }else if(size == 5){
      $(".drag_over").css({
        "display": "none"
      });
      $(".drag_over2").css({
        "display": "block",
        "width": "620px",
        "margin-left": "0"
      });
      $(".file").css({
        "position": "absolute",
        "top": "180px"
      });
    }else if(size == 6){
      $(".drag_over2").css({
        "margin-left": "126.5px",
        "width": "493.5px"
      });
    }else if(size == 7){
      $(".drag_over2").css({
        "margin-left": "253px",
        "width": "367px"
      });
      $(".drag_center2").css({
        "font-size": "14px"
      });
    }else if(size == 8){
      $(".drag_over2").css({
        "margin-left": "379.5px",
        "width": "240.5px"
      });
      $(".drag_center2").css({
        "font-size": "13px"
      });
    }else if(size == 9){
      $(".drag_over2").css({
        "margin-left": "506px",
        "width": "114px",
        "display": "block"
      });
      $(".drag_center2 p").css({
        "font-size": "9px"
      });
    }else if(size == 10){
      $(".drag_over2").css({
        "display": "none"
      });
    }
    
    if ($(".drag_over").is(":hidden")) {
      //非表示のときの処理をする
      if($(".item_main_center-cell2").css('height') == "303px"){
        $(".item_main_center-cell2").css('height', '463');
        $(".item_main").css('height', '+=160');
      }
    } else {
      //表示しているときの処理をする
      if($(".item_main_center-cell2").css('height') == "463px"){
        $(".item_main_center-cell2").css('height', '303');
        $(".item_main").css('height', '-=160');
      }
    }
  }
  //モーダルウィンドウ非表示にする
  $("#modal-itemnew .item-new").on("click",function(){
    $("#modal-all").hide();
    $("#modal-itemnew").hide();
  })
  $("#modal-itemnew .item-root").on("click",function(){
    $("#modal-all").hide();
    $("#modal-itemnew").hide();
  })
});
function checkSubmit() {
  var conf = confirm("送信しても良いですか？");
  if(conf == false){
    return conf  
  }else{//モーダルウィンドウ表示
    document.activeElement.blur();
    $("#modal-all").show();
    $("#modal-itemnew").slideToggle("slow");
  }
}