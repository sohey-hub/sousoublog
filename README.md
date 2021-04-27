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
![画像](https://user-images.githubusercontent.com/75017019/116223835-e7ba3e00-a78a-11eb-916c-7ba429ba6f1c.png">)

## 記事の詳細表示ページ
![画像]（https://user-images.githubusercontent.com/75017019/116224166-47184e00-a78b-11eb-8a3d-b1c8430ff7c0.jpeg)

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
