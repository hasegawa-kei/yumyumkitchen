# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create([
  { name: '主食（肉）' },
  { name: '主食（魚）' },
  { name: '主食（野菜）' },
  { name: '副菜' },
  { name: '汁もの' },
  { name: '洋食' },
  { name: '和食' },
  { name: '中華' },
  { name: 'おつまみ' },
  { name: 'その他' }
])

user = User.new(
  name: 'テストユーザー',
  email: 'testuser@12345.com',
  password: 'test12345'
)
user.save!

20.times do |_n|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    avatar: Faker::Avatar.image
  )
end

Recipe.create!({
  title: '鯖の塩焼き',
  user_id: 1,
  body: "まさにコツいらず。
            焼き過ぎると固くなるので、この時間でいけば今のところハズレ無く焼けてます。",
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/鯖の塩焼き/1.jpg"),
  materials_attributes: [
    {
      name: 'サバ',
      quantity: '２切れ'
    },
    {
      name: '塩',
      quantity: '適量'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/鯖の塩焼き/手順/1.jpg"),
      content: 'クックパーをフライパンに乗せて、中火で温める。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/鯖の塩焼き/手順/2.jpg"),
      content: "熱くなったらサバを乗せる。
                  塩を適当にかける。
                  【片面３分３０秒】"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/鯖の塩焼き/手順/3.jpg"),
      content: "ひっくり返して、もう片面も焼く。
                【片面３分３０秒】"
    }
  ]
})

Recipe.create!({
  title: '白菜とエノキのそぼろ餡かけ',
  user_id: 1,
  body: "白菜がトロトロになるまでしっかり煮込み、
            水溶き片栗粉をくわえる事。",
  serving: 4,
  picture: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/1.jpg"),
  materials_attributes: [
    {
      name: '豚ひき肉',
      quantity: '１５０ｇ'
    },
    {
      name: '白菜',
      quantity: '１／４カット'
    },
    {
      name: 'えのき',
      quantity: '小１株'
    },
    {
      name: '長ネギ',
      quantity: '１／３'
    },
    {
      name: 'ごま油',
      quantity: '小さじ１／２'
    },
    {
      name: '万能ネギ',
      quantity: '少々'
    },
    {
      name: '◎水',
      quantity: '１カップ(２００ml)'
    },
    {
      name: '◎和風だしの素',
      quantity: '大さじ１'
    },
    {
      name: '◎酒',
      quantity: '大さじ２'
    },
    {
      name: '◎みりん',
      quantity: '大さじ２'
    },
    {
      name: '◎砂糖',
      quantity: '大さじ２'
    },
    {
      name: '◎醤油',
      quantity: '大さじ３'
    },
    {
      name: '★水溶き片栗粉',
      quantity: '片栗粉大さじ１、水大さじ３'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/1.jpg"),
      content: "白菜は芯と葉を切り分けてそれぞれざく切りに、長ネギは小口切りにし、
                  えのきは石づきを切って半分に切りわけほぐします。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/2.jpg"),
      content: 'フライパンにごま油・豚ひき肉・おろし生姜を入れて色が変わるまで炒めます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/3.jpg"),
      content: 'ひき肉の色が変わったら白菜の芯・長ネギを加えて暫く炒めます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/4.jpg"),
      content: '全体に油が馴染み長ネギがしなっとしたら◎印の材料を加えてよーく混ぜ合わせ、一煮立ちさせます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/5.jpg"),
      content: '一煮立ちしたらえのきを加えてざっと混ぜます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/6.jpg"),
      content: 'えのきがしなっとしたら白菜の葉を加え、かき混ぜます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/7.jpg"),
      content: "蓋をして弱めの中火で５〜６分程煮込みます。
                  途中沸騰したら弱火にして下さい。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/8.jpg"),
      content: "５〜６分煮込んで白菜がクタクタになったら蓋を外し、
                  ★印を混ぜ合わせた水溶き片栗粉を加えます。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/9.jpg"),
      content: 'トロミがつくまで木べらでかき混ぜます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/白菜とえのき/手順/10.jpg"),
      content: "トロミが付いたらお皿に盛って刻んだ万能ネギを散らしたら完成です。
                  ご飯の上にかけて丼にしても◎"
    }
  ]
})

Recipe.create!({
  title: 'レンジ蒸し鶏とキャベツの梅ごま和え',
  user_id: 1,
  body: 'しょうゆはお好みで加減をしてください（^人^）',
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/レンジ蒸し鶏とキャベツの梅ごま和え/1.jpg"),
  materials_attributes: [
    {
      name: '鶏むね肉(皮なし)',
      quantity: '２切れ'
    },
    {
      name: '塩・こしょう',
      quantity: '少々'
    },
    {
      name: '酒',
      quantity: '大さじ１'
    },
    {
      name: 'キャベツ',
      quantity: '１００g'
    },
    {
      name: '梅干し',
      quantity: '1個'
    },
    {
      name: '醤油',
      quantity: '大さじ１/２〜１'
    },
    {
      name: 'すりごま',
      quantity: '大さじ１/２'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レンジ蒸し鶏とキャベツの梅ごま和え/手順/1.jpg"),
      content: "【蒸し鶏を作ります】
                  鶏肉は厚みを均一にし塩、こしょうをふって酒を揉み込み、ラップをしてレンジ600Wに3分、
                  ひっくり返して3分かけそのまま冷まし(時間外)食べやすい大きさにほぐす"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レンジ蒸し鶏とキャベツの梅ごま和え/手順/2.jpg"),
      content: "キャベツは千切りにする
                  梅干しは種をとって包丁で叩いてペースト状にする"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レンジ蒸し鶏とキャベツの梅ごま和え/手順/3.jpg"),
      content: "ボウルに蒸し鶏、キャベツ、梅干し、ごまを入れて混ぜ、
                  しょうゆで味をととのえれば出来上がりです"
    }
  ]
})

Recipe.create!({
  title: 'フライパンで！アジの塩焼き',
  user_id: 1,
  body: '火加減に注意！！',
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/フライパンで！アジの塩焼き/1.jpg"),
  materials_attributes: [
    {
      name: 'アジ(下処理済)',
      quantity: '２尾'
    },
    {
      name: '塩',
      quantity: '小さじ１'
    },
    {
      name: 'オリーブオイル',
      quantity: '小さじ１〜２'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/フライパンで！アジの塩焼き/手順/1.jpg"),
      content: "アジはよく洗って水気をペーパーで拭き取り、
                  表面に塩をふって15分ほどおき、出た水分をペーパーで拭き取り塩(分量外、1尾につき2~3つまみ)をふる"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/フライパンで！アジの塩焼き/手順/2.jpg"),
      content: 'フライパンにフライパン用ホイルをしき、オリーブ油をしいたらアジをのせて中火くらいで焼く'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/フライパンで！アジの塩焼き/手順/3.jpg"),
      content: "焼き色がついたらひっくり返して裏面も焼く
                  (フライパンの縁を利用して満遍なく焼いていきます)"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/フライパンで！アジの塩焼き/手順/4.jpg"),
      content: '※写真は1人分、大根おろしを添えています'
    }
  ]
})

Recipe.create!({
  title: '失敗しない牛ステーキの焼き方。慌てないでじっくりと',
  user_id: 1,
  body: "火の通し方の調整は、肉の表面に肉汁が染み出てから、どれくらい焼くで調整してください。
          焼き始めからの時間よりも調整しやすいです。",
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/1.jpg"),
  materials_attributes: [
    {
      name: 'ステーキ用牛肉250g',
      quantity: '２枚'
    },
    {
      name: 'ニンニク',
      quantity: '2個'
    },
    {
      name: '塩こしょう',
      quantity: '少々'
    },
    {
      name: 'オリーブオイル',
      quantity: '大さじ１'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/手順/1.jpg"),
      content: "肉を2時間前には冷蔵庫から出して常温にします。
                  スジ切りと余分な油身を落とします。
                  ニンニクチップを作ります。フライパンのへりに油を溜めて焦げないように、弱火で揚げるように！"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/手順/2.jpg"),
      content: "ニンニクチップを作った油を強火で熱します。
                  焼く直前に肉に強めの塩コショウを降ります。
                  油から煙が出てきたら肉を入れます。
                  そのあと5秒後に中火にします。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/手順/3.jpg"),
      content: "2分から2分半焼きます。この間フライパンにも肉にも触りません。
                  時間は目安です。肉の厚さによって変わります。表面に肉汁が染み出てきたら合図です。
                  裏返し、同じく2分から2分半焼きます"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/手順/4.jpg"),
      content: "フライパンから取り出し皿に移したら、アルミホイルなどで蓋をして10分待ちます。
                  この間は肉に触りません。
                  こうすることで肉汁を落ち着かせてステーキ内に閉じ込めます。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/牛ステーキの焼き方/手順/5.jpg"),
      content: "ニンニクチップを添えて完成です。ソースはお好みで。
                  気をつけてほしいのは市販のステーキソースの場合は常温に戻す事を忘れずに。"
    }
  ]
})

Recipe.create!({
  title: 'いくらでも食べれる！豚肉のさっぱり大根おろしかけ',
  user_id: 1,
  body: "豚肉の油はしっかり洗い流すとサッパリするので沢山食べれちゃいます。
          青ネギは出来るだけ細い幅で切った方がネギが主張してこないのでおすすめです☆＾＾",
  serving: 3,
  picture: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/1.jpg"),
  materials_attributes: [
    {
      name: '大根',
      quantity: '２８０g'
    },
    {
      name: '豚バラ',
      quantity: '３００g'
    },
    {
      name: '☆しょう油',
      quantity: '大さじ２'
    },
    {
      name: '☆みりん',
      quantity: '大さじ１'
    },
    {
      name: '☆めんつゆ',
      quantity: '大さじ３'
    },
    {
      name: '☆酢',
      quantity: '大さじ２'
    },
    {
      name: '青ネギ',
      quantity: '２本'
    },
    {
      name: '白ごま',
      quantity: '適量'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/手順/1.jpg"),
      content: "沸騰した鍋で豚肉をゆでる。
                  この間に青ネギは小口切りにしておく。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/手順/2.jpeg"),
      content: "大根をおろし、きゅっと水気をしぼって（ギューッと力を入れる必要はない）ボウルに入れる。
                  ☆の材料もすべてボウルに入れて大根おろしと混ぜ合わせる。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/手順/3.jpg"),
      content: "豚肉に火が通ったらザルにあげ、流水でしっかり油をとるように洗う。
                  洗い終えたらしっかり水気を切る。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/手順/4.jpg"),
      content: '２に水気を切っておいた豚肉を入れて混ぜ合わせる。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚肉の大根おろし/手順/5.jpg"),
      content: '切っておいた青ネギと白ごまを加えて混ぜ合わせたら完成。'
    }
  ]
})

Recipe.create!({
  title: 'お子様向けのお味♫ウチのジャージャー麺',
  user_id: 2,
  body: "大人の方向けに作るなら、
          豆板醤を小さじ２位に増やし、砂糖を大さじ１減らすと、美味しく召し上がれるかと思います。",
  serving: 4,
  picture: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/1.jpg"),
  materials_attributes: [
    {
      name: '中華麺',
      quantity: '４玉'
    },
    {
      name: '豚ひき肉',
      quantity: '３００g'
    },
    {
      name: '長ネギ',
      quantity: '１本と半分'
    },
    {
      name: 'きゅうり',
      quantity: '１本'
    },
    {
      name: 'おろしにんにく',
      quantity: '小さじ１'
    },
    {
      name: 'おろし生姜',
      quantity: '小さじ２'
    },
    {
      name: '◎豆板醤',
      quantity: '小さじ１／２'
    },
    {
      name: '◎甜麺醤',
      quantity: '大さじ３'
    },
    {
      name: '◎酒',
      quantity: '大さじ３'
    },
    {
      name: '◎醤油',
      quantity: '大さじ３'
    },
    {
      name: '◎砂糖',
      quantity: '大さじ４'
    },
    {
      name: '◎鶏がらスープの元',
      quantity: '大さじ１'
    },
    {
      name: '水',
      quantity: '１カップ'
    },
    {
      name: 'ごま油',
      quantity: '大さじ１'
    },
    {
      name: '水溶き片栗粉',
      quantity: '片栗粉小さじ２、水大さじ２'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/1.jpg"),
      content: "油をひかずフライパンを熱し、挽肉・おろしニンニク・おろし生姜を入れて炒め、
                  挽肉の色が変わったら みじん切りにした長ネギを加えて炒めます。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/2.jpg"),
      content: '長ネギに火が通ったら、◎印の材料を加えて炒めます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/3.jpg"),
      content: '挽肉と長ネギに調味料がしっかり絡んだら、水を加えて１０分程煮込みます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/4.jpg"),
      content: "１０分煮込んだら、☆印の片栗粉と水をよく混ぜ合わせて フライパンに少しずつ加え、その都度よくかき混ぜます。
                  トロミがついたらごま油を加えて軽くかき混ぜ、火を止めます。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/5.jpg"),
      content: '中華麺を沸騰したお湯に入れて３分程茹でます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/6.jpg"),
      content: 'きゅうりは細切りにし、長ネギはピーラーで削いで白髪ねぎを作ります。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/ジャージャー麺/手順/7.jpg"),
      content: "茹で上がった中華麺をお皿に盛って、たっぷり肉味噌をかけ、
                  きゅうりの千切りにと白髪ねぎをトッピングしたら完成です。"
    }
  ]
})

Recipe.create!({
  title: 'レタスチャーハン',
  user_id: 2,
  body: "温かいご飯の方が炒めやすいと思います。
            レタスには火を通し過ぎないようにするのがおすすめです。",
  serving: 1,
  picture: open("#{Rails.root}/app/assets/images/recipes/レタスチャーハン/1.jpg"),
  materials_attributes: [
    {
      name: 'ごはん（温かいもの）',
      quantity: '茶碗１杯半'
    },
    {
      name: '卵',
      quantity: '１個'
    },
    {
      name: 'ベーコン',
      quantity: '便宜'
    },
    {
      name: 'レタス',
      quantity: '１枚くらい'
    },
    {
      name: '長ネギ',
      quantity: '１０cmくらい'
    },
    {
      name: '中華あじの元',
      quantity: '小さじ１強'
    },
    {
      name: '塩・コショウ・しょうゆ',
      quantity: '少々'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レタスチャーハン/手順/1.jpeg"),
      content: "ベーコンは１cm幅に、長ねぎはみじん切り、レタスは食べやすい大きさにちぎる。
                  卵は溶いておく。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レタスチャーハン/手順/2.jpeg"),
      content: "フライパンでサラダ油を強火で熱し、ベーコンを炒める。
                  溶いた卵を加え、すぐにご飯も加えて手早く炒める。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/レタスチャーハン/手順/3.jpg"),
      content: "パラパラになったら、レタス・長ねぎを加え手早く混ぜ、中華あじの素・塩コショウで調味し、
                  最後に香り付けでしょうゆを回し入れ炒め混ぜたらできあがり。"
    }
  ]
})

Recipe.create!({
  title: 'ツナマヨとゆで卵のおつまみ餃子★トースターで簡単',
  user_id: 3,
  body: "イタリアンハーブソルトがなければ、塩・こしょうで下味をつけてもOKです。
            この場合は胡椒を多めに振るのがオススメです。",
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/おつまみ餃子/1.jpg"),
  materials_attributes: [
    {
      name: '餃子の皮',
      quantity: '１２枚'
    },
    {
      name: 'ゆで卵',
      quantity: '１個'
    },
    {
      name: 'ツナ缶',
      quantity: '１個'
    },
    {
      name: 'イタリアンハーブソルト',
      quantity: '少々'
    },
    {
      name: 'マヨネーズ',
      quantity: '大さじ1弱'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/おつまみ餃子/手順/1.jpeg"),
      content: 'ゆで卵をフォークでつぶし、油を切ったツナと混ぜ、イタリアンハーブソルトとマヨネーズで和える。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/おつまみ餃子/手順/2.jpg"),
      content: "餃子の皮に【1】の具を包み、アルミホイルに並べ、
                  トースター1000wで5～7分ほど、焼き目がつくまで焼いて完成♪"
    }
  ]
})

Recipe.create!({
  title: 'トースターでおつまみ！ちょい辛厚揚げのマヨチーズ',
  user_id: 3,
  body: "温かいご飯の方が炒めやすいと思います。
            レタスには火を通し過ぎないようにするのがおすすめです。",
  serving: 2,
  picture: open("#{Rails.root}/app/assets/images/recipes/厚揚げのマヨチーズ/1.jpg"),
  materials_attributes: [
    {
      name: '厚揚げ',
      quantity: '３枚'
    },
    {
      name: 'スライスチーズ',
      quantity: '３枚'
    },
    {
      name: 'マヨネーズ',
      quantity: '適量'
    },
    {
      name: '豆板醤',
      quantity: '少々'
    },
    {
      name: 'ねぎ',
      quantity: '小さじ１強'
    },
    {
      name: 'ポン酢',
      quantity: '大さじ１くらい'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/厚揚げのマヨチーズ/手順/1.jpeg"),
      content: '厚揚げを厚さ２cmくらいに揃え、トースターに並べて焦げないように様子を見ながら約１０分焼く。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/厚揚げのマヨチーズ/手順/2.jpg"),
      content: 'トウバンジャン、マヨネーズをお好みの量のせる。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/厚揚げのマヨチーズ/手順/3.jpeg"),
      content: 'その上にチーズをのせ、さらに５分トースターで焼く。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/厚揚げのマヨチーズ/手順/4.jpg"),
      content: "チーズに焼き色が付き溶けたら盛り付けて小口切りにしたネギをたっぷりのせる。
                  食べる直前にポン酢を回しかけたら完成。"
    }
  ]
})

Recipe.create!({
  title: '油を使わない　”豚汁” ',
  user_id: 4,
  body: "●味噌を2度にわけて入れるのが、おいしさのポイントです。煮込む時に味噌を入れるのは材料に下味をつけ、仕上げにもう一度入れるのは味噌の風味を補うためです。
          ●野菜は残り野菜で何でもOKです。かぼちゃやさつま芋を入れてもおいしいですよ♫",
  serving: 6,
  picture: open("#{Rails.root}/app/assets/images/recipes/豚汁/1.jpg"),
  materials_attributes: [
    {
      name: '豚肉（切り落とし）',
      quantity: '12～15'
    },
    {
      name: '☆大根（イチョウ切り）',
      quantity: '1個'
    },
    {
      name: '☆にんじん（イチョウ切り）',
      quantity: '3～5本'
    },
    {
      name: '☆里芋（一口大に切る）',
      quantity: '適量'
    },
    {
      name: 'こんにゃく（細切り）',
      quantity: '少々'
    },
    {
      name: '油揚げ（細切り）',
      quantity: '5ｇ'
    },
    {
      name: '長ネギ（みじん切り）',
      quantity: '３０ｇ'
    },
    {
      name: 'だし汁',
      quantity: '１０ｇ'
    },
    {
      name: '酒',
      quantity: '適量'
    },
    {
      name: '味噌',
      quantity: '少々'
    },
    {
      name: 'しょうゆ',
      quantity: '5ｇ'
    },
    {
      name: '青ねぎ',
      quantity: '３０ｇ'
    },
    {
      name: 'みりん',
      quantity: '１０ｇ'
    }
  ],
  procedures_attributes: [
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚汁/手順/1.jpg"),
      content: "野菜はそれぞれ食べやすいように切っておきます。こんにゃく、里芋は下ゆでします。
                  油揚げも熱湯をかけ油抜きをします。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚汁/手順/2.jpeg"),
      content: "鍋にだし汁、長ネギ以外の☆の野菜を入れ火にかけます。
                  沸騰したら、豚肉、こんにゃく、油揚げを入れます。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚汁/手順/3.jpg"),
      content: '2の鍋に、酒、しょうゆ、みりん、味噌（大さじ3）を加え、アクをとりながら煮ます。'
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚汁/手順/4.jpg"),
      content: "野菜が柔らかくなったら、長ネギ・味噌（大さじ2～）を入れ、沸騰直前で火を止めます。
                  ※味噌の量は味をみて好みで調整してください。"
    },
    {
      image: open("#{Rails.root}/app/assets/images/recipes/豚汁/手順/5.jpg"),
      content: "器に豚汁を盛り、青ねぎを上から散らして完成です。
                  ※お好みですりごま、七味などをかけてお召し上がりください。"
    }
  ]
})

20.times do |i|
  Like.create!(
    recipe_id: 2,
    user_id: i + 1
  )
end

16.times do |i|
  Like.create!(
    recipe_id: 1,
    user_id: i + 1
  )
end

13.times do |i|
  Like.create!(
    recipe_id: 3,
    user_id: i + 1
  )
end

11.times do |i|
  Like.create!(
    recipe_id: 4,
    user_id: i + 1
  )
end

10.times do |i|
  Like.create!(
    recipe_id: 5,
    user_id: i + 1
  )
end

8.times do |i|
  Like.create!(
    recipe_id: 6,
    user_id: i + 1
  )
end
