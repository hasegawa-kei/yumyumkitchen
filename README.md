# YumYumKitchen
![yumyumkitchenトップページ](https://user-images.githubusercontent.com/55547500/77252259-056ac900-6c96-11ea-8222-36c9a67fb4d4.png)

### どんなアプリ？
クックパッドなどのようなレシピを投稿したり、共有したりするアプリです

### URL
http://54.168.136.255/54.

### テストアカウント
ログインページにて「簡単ログイン」をクリックするとログインできます。

## 使用技術

### フロントサイド
- HTML(slim)
- CSS(scss)
- JavaScript

### バックエンド
- Ruby(2.5.1)
- Rails(5.2.3)
- MySQL(5.7)

### インフラ、開発環境等
- Docker/docker-compose
- Rubocop
- RSpec
- Capistrano
- CircleCI
- AWS(EC2,RDS,VPC,S3,Route53,ALB)
#### アーキテクチャー図
![アーキテクチャー図](https://user-images.githubusercontent.com/55547500/77252055-457d7c00-6c95-11ea-9364-e9789d8cd288.png)

## 機能一覧
- ユーザー登録・ログイン機能
- 投稿機能
- 投稿一覧・投稿詳細表示機能
- 動的なフォームを用いた投稿機能
- 親子モデルを用いた投稿機能
- タグ機能
- タグのソート機能
- ページネーション機能（Kaminari）
- いいね機能
- レシピのタイトル名、材料名の検索機能(Ransack)
- コメント機能

## 工夫した点
### 投稿フォーム
動的フォームを用いることで、工程の多いレシピでも、手順ごとに画像を挿入できたり、文章を投稿できたりできるようにしたことです。

### 検索機能、一覧ページ
色々なケースでレシピを探すことを想定し、タイトル名での検索はもちろんのこと、「カテゴリでの検索」、「材料名での検索」、
「新着順」、「評価の高い順」と様々なパターンを用意しました。
![yumyumkitchenいいね](https://user-images.githubusercontent.com/55547500/77252256-01d74200-6c96-11ea-9e55-2d334a58279b.png)

