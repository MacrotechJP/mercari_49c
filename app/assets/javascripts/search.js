$(function() {
  //価格の表示を変化する
  $('#select_price').change(function() {
    var num = $('#select_price').val();
    switch (num) {
      case "1":
        $("input[name='priceMin']").val("");
        $("input[name='priceMax']").val("");
        break;
      case "2":
        $("input[name='priceMin']").val("300");
        $("input[name='priceMax']").val("1000");
        break;
      case "3":
        $("input[name='priceMin']").val("1000");
        $("input[name='priceMax']").val("5000");
        break;
      case "4":
        $("input[name='priceMin']").val("5000");
        $("input[name='priceMax']").val("10000");
        break;
      case "5":
        $("input[name='priceMin']").val("10000");
        $("input[name='priceMax']").val("30000");
        break;
      case "6":
        $("input[name='priceMin']").val("30000");
        $("input[name='priceMax']").val("50000");
        break;
      case "7":
        $("input[name='priceMin']").val("50000");
        $("input[name='priceMax']").val("");
        break;
    }
  })

  // 商品の状態「全選択」する
  $('.conditionAll').on('click', function() {
    $("input[name='condition[]']").prop('checked', this.checked);
  });
  // 商品の状態「全選択」以外のチェックボックスがクリックされたら、
  $("input[name='condition[]']").on('click', function() {
    if ($('#conditionCheck :checked').length == $('#conditionCheck :input').length) {
      // 全てのチェックボックスにチェックが入っていたら、「全選択」 = checked
      $('.conditionAll').prop('checked', true);
    } else {
      // 1つでもチェックが入っていたら、「全選択」 = checked
      $('.conditionAll').prop('checked', false);
    }
  });

  // 配送料の負担「全選択」する
  $('.deriveryfeeAll').on('click', function() {
    $("input[name='deriveryfee[]']").prop('checked', this.checked);
  });
  // 配送料の負担「全選択」以外のチェックボックスがクリックされたら、
  $("input[name='deriveryfee[]']").on('click', function() {
    if ($('#deriveryfeeCheck :checked').length == $('#deriveryfeeCheck :input').length) {
      // 全てのチェックボックスにチェックが入っていたら、「全選択」 = checked
      $('.deriveryfeeAll').prop('checked', true);
    } else {
      // 1つでもチェックが入っていたら、「全選択」 = checked
      $('.deriveryfeeAll').prop('checked', false);
    }
  });

  // 販売状況「全選択」する
  $('.situationAll').on('click', function() {
    $("input[name='situation[]']").prop('checked', this.checked);
  });
  // 販売状況「全選択」以外のチェックボックスがクリックされたら、
  $("input[name='situation[]']").on('click', function() {
    if ($('#situationCheck :checked').length == $('#situationCheck :input').length) {
      // 全てのチェックボックスにチェックが入っていたら、「全選択」 = checked
      $('.situationAll').prop('checked', true);
    } else {
      // 1つでもチェックが入っていたら、「全選択」 = checked
      $('.situationAll').prop('checked', false);
    }
  });
});