class Categoryall < ActiveHash::Base
  self.data = [
      #親カテゴリー
      {id: 0, name: 'レディース',ancestors:"null"}, {id: 1, name: 'メンズ',ancestors:"null"}, {id: 2, name: 'ベビー・キッズ',ancestors:"null"},{id: 3, name: 'インテリア・住まい・小物',ancestors:"null"}, {id: 4, name: '本・音楽・ゲーム',ancestors:"null"},
      {id: 7, name: 'おもちゃ・ホビー・グッズ',ancestors:"null"},{id: 8, name: 'コスメ・香水・美容',ancestors:"null"},
      {id: 9, name: '家電・スマホ・カメラ',ancestors:"null"}, {id: 10, name: 'スポーツ・レジャー',ancestors:"null"},
      {id: 11, name: 'ハンドメイド',ancestors:"null"}, {id: 12, name: 'チケット',ancestors:"null"},
      {id: 13, name: '自転車・オートバイ',ancestors:"null"},{id: 14, name: 'その他',ancestors:"null"},
      
      #子カテゴリー
      #レディース
      {id: 15, name: 'トップス',ancestors:0},{id: 16, name: 'ジャケット/アウター',ancestors:0},{id: 17, name: 'パンツ',ancestors:0},
      {id: 18, name: 'スカート',ancestors:0},{id: 19, name: 'ワンピース',ancestors:0},{id: 20, name: '靴',ancestors:0},
      {id: 21, name: 'ルームウェア/パジャマ',ancestors:0},{id: 22, name: 'レッグウェア',ancestors:0},{id: 23, name: '帽子',ancestors:0},
      {id: 24, name: 'バッグ',ancestors:0},{id: 25, name: 'アクセサリー',ancestors:0},{id: 26, name: 'ヘアアクセサリー',ancestors:0},
      {id: 27, name: '小物',ancestors:0},{id: 28, name: '時計',ancestors:0},{id: 29, name: 'ウィッグ/エクステ',ancestors:0},
      {id: 30, name: '浴衣/水着',ancestors:0},{id: 31, name: 'スーツ/フォーマル/ドレス',ancestors:0},{id: 32, name: 'マタニティ',ancestors:0},
      {id: 33, name: 'その他',ancestors:0},
      #メンズ
      {id: 34, name: 'トップス',ancestors:1},{id: 35, name: 'ジャケット/アウター',ancestors:1}
  ]
end
