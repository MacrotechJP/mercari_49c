$(function(){
  $(window).on('load',function(){
    var editImgId = $('.js-update-img').data('img')
    var editImgIdId = $('.js-update-img').data('imgid')
    $.each(editImgId, function(i, value) {
      var cnn = i+10;
      var view_box = $(".file").parent('.drag');
      var img = '<div class="upImage" id=${cnn}>'+
                    '<img id="'+cnn+'" src="'+editImgId[i]+'">'+
                    '<div class="upImage_buton '+cnn+'">'+
                    '<input accept=".jpg,.gif,.png,image/jpeg,image/png" class="change_file img_edi'+cnn+'" type="file"></input>'+
                      '<li><a class="img_edi" id="img_edi'+cnn+'" >編集</a></li>'+
                      '<li><a href="#" class="img_del" name="'+editImgIdId[i]+'">削除</a></li>'+
                      '</div>'+
                  '</div>';
      view_box.append(img);
      
      switch( i ) {

        case 0:
          $(".drag_over").css({
            "margin-left": "126.5px",
            "width": "493.5px"
          });
          break;
        case 1:
          $(".drag_over").css({
            "margin-left": "253px",
            "width": "367px"
          });
          $(".drag_center").css({
            "font-size": "14px"
          });
          break;
        case 2:
          $(".drag_over").css({
            "margin-left": "379.5px",
            "width": "240.5px"
          });
          $(".drag_center").css({
            "font-size": "13px"
          });
          break;
        case 3:
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
          break;
        case 4:
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
          $(".item_main_center-cell2").css('height', '463');
          $(".item_main").css('height', '+=160');
          break;
        case 5:
          $(".drag_over2").css({
            "margin-left": "126.5px",
            "width": "493.5px"
          });
          break;
        case 6:
          $(".drag_over2").css({
            "margin-left": "253px",
            "width": "367px"
          });
          $(".drag_center2").css({
            "font-size": "14px"
          });
          break;
        case 7:
          $(".drag_over2").css({
            "margin-left": "379.5px",
            "width": "240.5px"
          });
          $(".drag_center2").css({
            "font-size": "13px"
          });
          break;
        case 8:
          $(".drag_over2").css({
            "margin-left": "506px",
            "width": "114px",
            "display": "block"
          });
          $(".drag_center2 p").css({
            "font-size": "9px"
          });
          break;
        case 9:
          $(".drag_over2").css({
            "display": "none"
          });
          break;
        }
    });
    
  });
  
// 選択されている親要素のカテゴリの値を表示
  var categoryParentName = $('.js-parent-category').data('category')
  var targetParentOption = $(`option[value="${categoryParentName}"]`)
  targetParentOption.prop('selected', true);
  var calEditParent = targetParentOption.parent().prop("selectedIndex");
  if(calEditParent != 0){
    $(".item_main_center-cell4-right_select2."+calEditParent).show();
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

  // 選択されている子要素のカテゴリの値を表示
  var categoryChildrenName = $('.js-children-category').data('category')
  var targetChildrenOption = $(`option[value="${categoryChildrenName}"]`)
  targetChildrenOption.prop('selected', true).val("");
  var calEditChildren = targetChildrenOption.parent().prop("selectedIndex");
    if(calEditChildren != 0 ){
      $(".item_main_center-cell4-right_select3."+calEditParent+"_"+calEditChildren).show();
      $(".item_main_center-cell4").css('height', '+=110');
      $(".item_main").css('height', '+=110');
    }else{
      $(".item_main_center-cell4-right_select3 select").val("");
      $(".item_main_center-cell4-right_select3").hide();
      $(".item_main_center-cell4").css('height', '-=110');
      $(".item_main").css('height', '-=110');
    }
    
  // 選択されている孫要素のカテゴリの値を表示
  var categoryGrandChildrenName = $('.js-grand-children-category').data('category')
  var targetGrandChildrenOption = $(`option[value="${categoryGrandChildrenName}"]`)
  targetGrandChildrenOption.prop('selected', true).val("");
  var calEditGrandChildren = targetGrandChildrenOption.parent().prop("selectedIndex");
    $(".item_main_center-cell4-right_selectBrand").show();
    $(".item_main_center-cell4-right_selectSize").show();
    $(".item_main_center-cell4").css('height', '+=220');
    $(".item_main").css('height', '+=220');

  // 選択されているサイズを表示
  var sizeName = $('.js-item-size').data('size')
  var targetSizeOption = $(`option[value="${sizeName}"]`).val("");
  targetSizeOption.prop('selected', true).val("");
  var calEditSize = targetSizeOption.parent().prop("selectedIndex");
  
  // 選択されている商品の状態を表示
  var conditionName = $('.js-item-condition').data('condition')
  // console.log(conditionName)
  var targetConditionOption = $(`option[value="${conditionName}"]`)
  targetConditionOption.prop('selected', true).val("");
  var calEditCondition = targetConditionOption.parent().prop("selectedIndex");
  
  // 選択されている商品の配送料の負担を表示
  var deliveryfeeName = $('.js-item-deliveryfee').data('deliveryfee')
  var targetDeliveryfeeOption = $(`option[value="${deliveryfeeName}"]`)
  targetDeliveryfeeOption.prop('selected', true).val("");
  var calEditdeliveryfee = targetDeliveryfeeOption.parent().prop("selectedIndex");
  if(calEditdeliveryway != 0 ){
    $(".driveWay").show();
    $(".item_main_center-cell5").css('height', '+=110');
    $(".item_main").css('height', '+=110');
  }else{
    $(".driveWay").hide();
    $(".item_main_center-cell5").css('height', '-=110');
    $(".item_main").css('height', '-=110');
  }

  // 選択されている商品の配送方法を表示
  var deliverywayName = $('.js-item-deliveryway').data('deliveryway')
  var targetDeliverywayOption = $(`option[value="${deliverywayName}"]`)
  targetDeliverywayOption.prop('selected', true).val("");
  var calEditdeliveryway = targetDeliverywayOption.parent().prop("selectedIndex");

  // 選択されている都道府県を表示
  var areaName = $('.js-item-area').data('area')
  var targetAreaOption = $(`option[value="${areaName}"]`)
  targetAreaOption.prop('selected', true).val("");
  var calEditArea = targetAreaOption.parent().prop("selectedIndex");
  
  // 選択されている発送までの日数を表示
  var shipName = $('.js-item-ship').data('days_to_ship')
  var targetShipOption = $(`option[value="${shipName}"]`)
  targetShipOption.prop('selected', true).val("");
  var calEditShip = targetShipOption.parent().prop("selectedIndex");


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

  // //販売価格の計算を行う
  // $("#price").on("keyup",function(){
  //   var price = $("#price").val();
  //   let price_fee = $("#rightup").val(price*0.1);
  //   if(price < 300 || price > 9999999){
  //     $("#rightUp").text("-");
  //     $("#rightDown").text("-");
  //   }else{
  //     $("#rightUp").text("¥"+Math.round(price*0.1).toLocaleString());
  //     $("#rightDown").text("¥"+Math.round(price*0.9).toLocaleString());
  //   }
  // })
});
