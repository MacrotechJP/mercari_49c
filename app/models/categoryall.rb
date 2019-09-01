class Categoryall < ActiveHash::Base
  self.data = [
      #親カテゴリー
      {id: 0, name: 'レディース',ancestors:"null"}, {id: 1, name: 'メンズ',ancestors:"null"}, {id: 2, name: 'ベビー・キッズ',ancestors:"null"},{id: 3, name: 'インテリア・住まい・小物',ancestors:"null"}, {id: 4, name: '本・音楽・ゲーム',ancestors:"null"},
      {id: 5, name: 'おもちゃ・ホビー・グッズ',ancestors:"null"},{id: 6, name: 'コスメ・香水・美容',ancestors:"null"},
      {id: 7, name: '家電・スマホ・カメラ',ancestors:"null"}, {id: 8, name: 'スポーツ・レジャー',ancestors:"null"},
      {id: 9, name: 'ハンドメイド',ancestors:"null"}, {id: 10, name: 'チケット',ancestors:"null"},
      {id: 11, name: '自転車・オートバイ',ancestors:"null"},{id: 12, name: 'その他',ancestors:"null"},
      
      #子カテゴリー
      #レディース
      {id: 13, name: 'トップス',ancestors:0},{id: 14, name: 'ジャケット/アウター',ancestors:0},{id: 15, name: 'パンツ',ancestors:0},
      {id: 16, name: 'スカート',ancestors:0},{id: 17, name: 'ワンピース',ancestors:0},{id: 18, name: '靴',ancestors:0},
      {id: 19, name: 'ルームウェア/パジャマ',ancestors:0},{id: 20, name: 'レッグウェア',ancestors:0},{id: 21, name: '帽子',ancestors:0},
      {id: 22, name: 'バッグ',ancestors:0},{id: 23, name: 'アクセサリー',ancestors:0},{id: 24, name: 'ヘアアクセサリー',ancestors:0},
      {id: 25, name: '小物',ancestors:0},{id: 26, name: '時計',ancestors:0},{id: 27, name: 'ウィッグ/エクステ',ancestors:0},
      {id: 28, name: '浴衣/水着',ancestors:0},{id: 29, name: 'スーツ/フォーマル/ドレス',ancestors:0},{id: 30, name: 'マタニティ',ancestors:0},
      {id: 31, name: 'その他',ancestors:0},
      #メンズ
      {id: 32, name: 'トップス',ancestors:1},{id: 33, name: 'ジャケット/アウター',ancestors:1},{id: 34, name: 'パンツ',ancestors:1},
      {id: 35, name: '靴',ancestors:1},{id: 36, name: 'バッグ',ancestors:1},{id: 37, name: 'スーツ',ancestors:1},
      {id: 38, name: '帽子',ancestors:1},{id: 39, name: 'アクセサリー',ancestors:1},{id: 40, name: '小物',ancestors:1},
      {id: 41, name: '時計',ancestors:1},{id: 42, name: '水着',ancestors:1},{id: 43, name: 'レッグウェア',ancestors:1},
      {id: 44, name: 'アンダーウェア',ancestors:1},{id: 45, name: 'その他',ancestors:1},
      #ベビー・キッズ
      {id: 46, name: 'ベビー服(女の子用)〜95cm',ancestors:2},{id: 47, name: 'ベビー服(男の子用)〜95cm',ancestors:2},
      {id: 48, name: 'ベビー服(男女兼用)〜95cm',ancestors:2},{id: 49, name: 'キッズ服(女の子用)100cm〜',ancestors:2},
      {id: 50, name: 'キッズ服(男の子用)100cm〜',ancestors:2},{id: 51, name: 'キッズ服(男女兼用)100cm〜',ancestors:2},
      {id: 52, name: 'キッズ靴',ancestors:2},{id: 53, name: '子ども用ファッション小物',ancestors:2},{id: 54, name: 'おむつ/トイレ/バス',ancestors:2},
      {id: 55, name: '外出/移動用品',ancestors:2},{id: 56, name: '授乳/食事',ancestors:2},{id: 57, name: 'ベビー家具/寝具/室内用品',ancestors:2},
      {id: 58, name: 'おもちゃ',ancestors:2},{id: 59, name: '行事/記念品',ancestors:2},{id: 60, name: 'その他',ancestors:2},
      #インテリア・住まい・小物
      {id: 61, name: 'キッチン/食器',ancestors:3},{id: 62, name: 'ベッド/マットレス',ancestors:3},{id: 63, name: 'ソファ/ソファベッド',ancestors:3},
      {id: 64, name: '椅子/チェア',ancestors:3},{id: 65, name: '机/テーブル',ancestors:3},{id: 66, name: '収納家具',ancestors:3},
      {id: 67, name: 'ラグ/カーペット/マット',ancestors:3},{id: 68, name: 'カーテン/ブラインド',ancestors:3},
      {id: 69, name: 'ライト/照明',ancestors:3},{id: 70, name: '寝具',ancestors:3},{id: 71, name: 'インテリア小物',ancestors:3},
      {id: 72, name: '季節/年中行事',ancestors:3},{id: 73, name: 'その他',ancestors:3},
      #本・音楽・ゲーム
      {id: 74, name: '本',ancestors:4},{id: 75, name: '漫画',ancestors:4},{id: 76, name: '雑誌',ancestors:4},
      {id: 77, name: 'CD',ancestors:4},{id: 78, name: 'DVD/ブルーレイ',ancestors:4},{id: 79, name: 'レコード',ancestors:4},
      {id: 80, name: 'テレビゲーム',ancestors:4},
      #おもちゃ・ホビー・グッズ
      {id: 81, name: 'おもちゃ',ancestors:5},{id: 82, name: 'タレントグッズ',ancestors:5},{id: 83, name: 'コミック/アニメグッズ',ancestors:5},
      {id: 84, name: 'トレーディングカード',ancestors:5},{id: 85, name: 'フィギュア',ancestors:5},{id: 86, name: '楽器/器材',ancestors:5},
      {id: 87, name: 'コレクション',ancestors:5},{id: 88, name: 'ミリタリー',ancestors:5},{id: 89, name: '美術品',ancestors:5},
      {id: 90, name: 'アート用品',ancestors:5},{id: 91, name: 'その他',ancestors:5},
      #コスメ・香水・美容
      {id: 92, name: 'ベースメイク',ancestors:6},{id: 93, name: 'メイクアップ',ancestors:6},{id: 94, name: 'ネイルケア',ancestors:6},
      {id: 95, name: '香水',ancestors:6},{id: 96, name: 'スキンケア/基礎化粧品',ancestors:6},{id: 97, name: 'ヘアケア',ancestors:6},
      {id: 98, name: 'ボディケア',ancestors:6},{id: 99, name: 'オーラルケア',ancestors:6},{id: 100, name: 'リラクゼーション',ancestors:6},
      {id: 101, name: 'ダイエット',ancestors:6},{id: 102, name: 'その他',ancestors:6},
      #家電・スマホ・カメラ
      {id: 103, name: 'スマートフォン/携帯電話',ancestors:7},{id: 104, name: 'スマホアクセサリー',ancestors:7},
      {id: 105, name: 'PC/タブレット',ancestors:7},{id: 106, name: 'カメラ',ancestors:7},{id: 107, name: 'テレビ/映像機器',ancestors:7},
      {id: 108, name: 'オーディオ機器',ancestors:7},{id: 109, name: '美容/健康',ancestors:7},{id: 110, name: '冷暖房/空調',ancestors:7},
      {id: 111, name: '生活家電',ancestors:7},{id: 112, name: 'その他',ancestors:7},
      #スポーツ・レジャー
      {id: 113, name: 'ゴルフ',ancestors:8},{id: 114, name: 'フィッシング',ancestors:8},{id: 115, name: '自転車',ancestors:8},
      {id: 116, name: 'トレーニング/エクササイズ',ancestors:8},{id: 117, name: '野球',ancestors:8},
      {id: 118, name: 'サッカー/フットサル',ancestors:8},{id: 119, name: 'テニス',ancestors:8},{id: 120, name: 'スノーボード',ancestors:8},
      {id: 121, name: 'スキー',ancestors:8},{id: 122, name: 'その他スポーツ',ancestors:8},{id: 123, name: 'アウトドア',ancestors:8},
      {id: 124, name: 'その他',ancestors:8},
      #ハンドメイド
      {id: 125, name: 'アクセサリー(女性用)',ancestors:9},{id: 126, name: 'ファッション/小物',ancestors:9},
      {id: 127, name: 'アクセサリー/時計',ancestors:9},{id: 128, name: '日用品/インテリア',ancestors:9},
      {id: 129, name: '趣味/おもちゃ',ancestors:9},{id: 130, name: 'キッズ/ベビー',ancestors:9},{id: 131, name: '素材/材料',ancestors:9},
      {id: 132, name: '二次創作物',ancestors:9},{id: 133, name: 'その他',ancestors:9},
      #チケット
      {id: 134, name: '音楽',ancestors:10},{id: 135, name: 'スポーツ',ancestors:10},{id: 136, name: '演劇/芸能',ancestors:10},
      {id: 137, name: 'イベント',ancestors:10},{id: 138, name: '映画',ancestors:10},{id: 139, name: '施設利用券',ancestors:10},
      {id: 140, name: '優待券/割引券',ancestors:10},{id: 141, name: 'その他',ancestors:10},
      #自転車・オートバイ
      {id: 142, name: '自動車本体',ancestors:11},{id: 143, name: '自動車タイヤ/ホイール',ancestors:11},{id: 144, name: '自動車パーツ',ancestors:11},
      {id: 145, name: '自動車アクセサリー',ancestors:11},{id: 146, name: 'オートバイ車体',ancestors:11},
      {id: 147, name: 'オートバイパーツ',ancestors:11},
      #その他
      {id: 148, name: 'まとめ売り',ancestors:12},{id: 149, name: 'ペット用品',ancestors:12},{id: 150, name: '食品',ancestors:12},
      {id: 151, name: '飲料/酒',ancestors:12},{id: 152, name: '日用品/生活雑貨/旅行',ancestors:12},
      {id: 153, name: 'アンティーク/コレクション',ancestors:12},{id: 154, name: '文房具/事務用品',ancestors:12},
      {id: 155, name: '事務/店舗用品',ancestors:12},{id: 156, name: 'その他',ancestors:12},

      #孫カテゴリー
      #レディースのトップス
      {id: 157, name: 'Tシャツ/カットソー（半袖/袖なし）',ancestors:13},{id: 158, name: 'Tシャツ/カットソー（七分/長袖）',ancestors:13},
      {id: 159, name: 'シャツ/ブラウス（半袖/袖なし）',ancestors:13},{id: 160, name: 'シャツ/ブラウス（七分/長袖）',ancestors:13},
      {id: 161, name: 'ポロシャツ',ancestors:13},{id: 162, name: 'キャミソール',ancestors:13},{id: 163, name: 'タンクトップ',ancestors:13},
      {id: 164, name: 'ホルターネック',ancestors:13},{id: 165, name: 'ニット/セーター',ancestors:13},{id: 166, name: 'チュニック',ancestors:13},{id: 167, name: 'カーディガン/ボレロ',ancestors:13},{id: 168, name: 'アンサンブル',ancestors:13},{id: 169, name: 'ベスト/ジレ',ancestors:13},{id: 170, name: 'パーカー',ancestors:13},{id: 171, name: 'トレーナー/スウェット',ancestors:13},
      {id: 172, name: 'ベアトップ/チューブトップ',ancestors:13},{id: 173, name: 'ジャージ',ancestors:13},{id: 174, name: 'その他',ancestors:13},
      #レディースのジャケット/アウター
      {id: 175, name: 'テーラードジャケット',ancestors:14},{id: 176, name: 'ノーカラージャケット',ancestors:14},
      {id: 177, name: 'Gジャン/デニムジャケット',ancestors:14},{id: 178, name: 'レザージャケット',ancestors:14},
      {id: 179, name: 'ダウンジャケット',ancestors:14},{id: 180, name: 'ライダースジャケット',ancestors:14},
      {id: 181, name: 'ミリタリージャケット',ancestors:14},{id: 182, name: 'ダウンベスト',ancestors:14},
      {id: 183, name: 'ジャンパー/ブルゾン',ancestors:14},{id: 184, name: 'ポンチョ',ancestors:14},{id: 185, name: 'ロングコート',ancestors:14},{id: 186, name: 'トレンチコート',ancestors:14},{id: 187, name: 'ダッフルコート',ancestors:14},{id: 188, name: 'ピーコート',ancestors:14},{id: 189, name: 'チェスターコート',ancestors:14},{id: 190, name: 'モッズコート',ancestors:14},{id: 191, name: 'スタジャン',ancestors:14},{id: 192, name: '毛皮/ファーコート',ancestors:14},{id: 193, name: 'スプリングコート',ancestors:14},{id: 194, name: 'スカジャン',ancestors:14},{id: 195, name: 'その他',ancestors:14},
      #レディースのパンツ
      {id: 196, name: 'デニム/ジーンズ',ancestors:15},
      
  ]
end