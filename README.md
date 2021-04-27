# アプリ名
Sousoublog

# 概要
自分が興味のあるテーマごとにブログを書くことができる。
ジャンルごとに分けられた記事投稿ページに飛ぶことで、自分がそのジャンルのどんなことを学んできたのか、を思い出すことができる。

# 制作背景（意図）
ブログを書くことで、自分自身のことを知ってもらおう、と思い、制作しました。
自分の興味があることしか書いてないため、同じような興味を持った人との繋がりも持ちたい、と思ったことも大きな要因です。

# DEMO
![トップページ](https://user-images.githubusercontent.com/75017019/116223665-b8a3cc80-a78a-11eb-8d8f-539994359df2.jpeg)
)

## 各ジャンルごとの記事ページ
![画像](<img width="1440" alt="9d497d9570e763251b806ff1e56e8f27" src="https://user-images.githubusercontent.com/75017019/116225180-79767b00-a78c-11eb-9fad-a1665eaff8dd.png">））

## 記事の詳細表示ページ
![画像]（![aca430aea2cb9a705a9c7f1af8ebc462](https://user-images.githubusercontent.com/75017019/116225299-a32fa200-a78c-11eb-98b9-97360b95f97f.jpeg)


# 工夫したポイント

* 各ページの左上にいつでもHomeに戻れるボタンを設置しました。

# 使用技術（開発環境）

## バックエンド
Ruby,Ruby on Rails

## フロントエンド
HTML CSS JavaScript JQuery booStrap

## データベース
MySQL

## ソース管理
Github, GithubDesctop

## エディタ
VSCode

# DB設計

## users テーブル

| Column                     | Type     | Options                   |
| -------------------------- | -------- | ------------------------- |
| nickname                   | string   | null: false               |
| email                      | string   | null: false, unique: true |
| encrypted_password         | string   | null: false               |


## articles テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| text             | text       | null: false                     |
| genre_id         | integer    | null: false                     |


### Association

- has_one_attached :image
- belongs_to :genre

## messages テーブル

| Column | Type       | Options                       |
| ------ | ---------- | ----------------------------- |
| text   | text       | null: false                   |
