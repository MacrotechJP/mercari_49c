$(function(){
  $(window).on('load',function(){
    var editImgId = $('.js-update-img').data('img')
    var editImgIdId = $('.js-update-img').data('imgid')
    $.each(editImgId, function(i, value) {
      var cnn = i+10;
      var view_box = $(".file").parent('.drag');
      var img = `<div class="upImage" id=${cnn}>
                    <img id="$(cnn}" src="${editImgId[i]}">
                    <div class="upImage_buton ${cnn}">
                    <input accept=".jpg,.gif,.png,image/jpeg,image/png" class="change_file img_edi${cnn}" type="file"></input>
                      <li><a class="img_edi" id="img_edi${cnn}" >編集</a></li>
                      <li><a href="#" class="img_del" name="${editImgIdId[i]}">削除</a></li>
                      </div>
                  </div>`;
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
  const categoryParentName = $('.js-parent-category').data('category')
  const targetParentOption = $(`option[value="${categoryParentName}"]`)
  targetParentOption.prop('selected', true);
  const calEditParent = targetParentOption.parent().prop("selectedIndex");
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
  const categoryChildrenName = $('.js-children-category').data('category')
  const targetChildrenOption = $(`option[value="${categoryChildrenName}"]`)
  targetChildrenOption.prop('selected', true).val("");
  const calEditChildren = targetChildrenOption.parent().prop("selectedIndex");

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
  const categoryGrandChildrenName = $('.js-grand-children-category').data('category')
  const targetGrandChildrenOption = $(`option[value="${categoryGrandChildrenName}"]`)
  targetGrandChildrenOption.prop('selected', true).val("");
  const calEditGrandChildren = targetGrandChildrenOption.parent().prop("selectedIndex");
    
    $(".item_main_center-cell4-right_selectBrand").show();
    $(".item_main_center-cell4-right_selectSize").show();
    $(".item_main_center-cell4").css('height', '+=220');
    $(".item_main").css('height', '+=220');

  // 選択されているサイズを表示
  const sizeName = $('.js-item-size').data('size')
  const targetSizeOption = $(`option[value="${sizeName}"]`);
  targetSizeOption.prop('selected', true);
  const calEditSize = targetSizeOption.parent().prop("selectedIndex");
  
  // 選択されている商品の状態を表示
  const conditionName = $('.js-item-condition').data('condition')
  const targetConditionOption = $(`option[value="${conditionName}"]`)
  targetConditionOption.prop('selected', true);
  const calEditCondition = targetConditionOption.parent().prop("selectedIndex");
  
  // 選択されている商品の配送料の負担を表示
  const deliveryfeeName = $('.js-item-deliveryfee').data('deliveryfee')
  const targetDeliveryfeeOption = $(`option[value="${deliveryfeeName}"]`)
  targetDeliveryfeeOption.prop('selected', true);
  const calEditdeliveryfee = targetDeliveryfeeOption.parent().prop("selectedIndex");
  
  
  
  // 選択されている商品の配送方法を表示
  const deliverywayName = $('.js-item-deliveryway').data('deliveryway')
  const targetDeliverywayOption = $(`option[value="${deliverywayName}"]`)
  targetDeliverywayOption.prop('selected', true);
  const calEditdeliveryway = targetDeliverywayOption.parent().prop("selectedIndex");
                if(calEditdeliveryway != 0 ){
                  $(".driveWay").show();
                  $(".item_main_center-cell5").css('height', '+=110');
                  $(".item_main").css('height', '+=110');
                }else{
                  $(".driveWay").hide();
                  $(".item_main_center-cell5").css('height', '-=110');
                  $(".item_main").css('height', '-=110');
                }


  // 選択されている都道府県を表示
  const areaName = $('.js-item-area').data('area')
  const targetAreaOption = $(`option[value="${areaName}"]`)
  targetAreaOption.prop('selected', true);
  const calEditArea = targetAreaOption.parent().prop("selectedIndex");
  
  // 選択されている発送までの日数を表示
  const shipName = $('.js-item-ship').data('days_to_ship')
  const targetShipOption = $(`option[value="${shipName}"]`)
  targetShipOption.prop('selected', true);
  const calEditShip = targetShipOption.parent().prop("selectedIndex");







  //カテゴリーについてのセレクトボックスを増表示する
  $('.category1').change(function() {
    var cal = $('.category1').prop("selectedIndex");
    if(cal != 0){
      $(".item_main_center-cell4-right_select2."+cal).show();
      // $(".item_main_center-cell4").css('height', '+=110');
      // $(".item_main").css('height', '+=110');

      $(".item_main_center-cell4-right_select2 select").val("");
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4-right_select3 select").val("");
        $(".item_main_center-cell4-right_select3").hide();
        // $(".item_main_center-cell4").css('height', '-=220');
        // $(".item_main").css('height', '-=220');
    }else{
      if($(".item_main_center-cell4-right_select3").length){
        $(".item_main_center-cell4-right_select2 select").val("");
        $(".item_main_center-cell4-right_select2").hide();
        $(".item_main_center-cell4-right_select3 select").val("");
        $(".item_main_center-cell4-right_select3").hide();
        // $(".item_main_center-cell4").css('height', '-=220');
        // $(".item_main").css('height', '-=220');
      }else{
        $(".item_main_center-cell4-right_select2 select").val("");
        $(".item_main_center-cell4-right_select2").hide();
        // $(".item_main_center-cell4").css('height', '-=110');
        // $(".item_main").css('height', '-=110');
      }
    }
  });

  $('.category2').change(function() {
    var cal = $('.category1').prop("selectedIndex");
    var cal2 = $(this).prop("selectedIndex");
    if(cal2 != 0 ){
      $(".item_main_center-cell4-right_select3."+cal+"_"+cal2).show();
      // $(".item_main_center-cell4").css('height', '+=110');
      // $(".item_main").css('height', '+=110');
    }else{
      $(".item_main_center-cell4-right_select3 select").val("");
      $(".item_main_center-cell4-right_select3").hide();
      // $(".item_main_center-cell4").css('height', '-=110');
      // $(".item_main").css('height', '-=110');
    }
  });

  $('.category3').change(function() {
      $(".item_main_center-cell4-right_selectBrand").show();
      $(".item_main_center-cell4-right_selectSize").show();
      // $(".item_main_center-cell4").css('height', '+=220');
      // $(".item_main").css('height', '+=220');
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
});
