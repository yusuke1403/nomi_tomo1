# ポートフォリオ用作成アプリ  「nomi-tomo」

## 概要・背景
- 休日に近場で飲みに行きたい、飲み友達が欲しいなど、一人飲みが寂しいという人の為の飲み友達を作ることを目的としたアプリケーションです。
- 現在地から周辺の居酒屋を検索でき、行きつけとなるお店探しが可能です。お店専用のチャットルームがあり、同じ行きつけとなる者同士のコミュニティーツールとして使用できます。

## 機能のご紹介

### 主な機能
- 現在地から周辺の居酒屋をMAP上で探す事が出来ます！居酒屋アイコンをクリックするとお店情報が表示され、リンクから詳細ページへ遷移します。<br>
(Google Cloud Platformサービス maps javascriput API使用)



![](https://user-images.githubusercontent.com/69718302/97077462-e020ad80-161e-11eb-82d1-bb74d5abecd0.png)



- お気に入り機能の搭載で、行きつけのお店をお気に入り登録出来て、マイページより一覧で表示されます。お店探しを、より円滑にします！

![](https://user-images.githubusercontent.com/69718302/97078275-26c5d600-1626-11eb-84f4-c82c620cb1fb.png)

![](https://user-images.githubusercontent.com/69718302/97081742-64832880-163f-11eb-8116-3b564aa96ea7.png)


- 店舗ごとのチャット機能の実装により、行きつけの常連間の出会いの場としてのやりとりが可能です！<br>
(画像アップロード機能 carrierwave 使用)

![](https://user-images.githubusercontent.com/69718302/97077967-2a0b9280-1623-11eb-9532-a81c13f25752.png)

### その他機能

- ユーザー登録機能(devise)

### 今後の実装プラン

- CircleCIでCI/CDパイプラインを構築

- インフラ構築

- フォロー/フォロワー機能

- Action Cableを用いた、リアルタイム通信

## 環境選定

### 開発環境

- Docker (Dockerfile、Docker-composeにてイメージ、コンテナを管理)

### インフラ (実装予定)

- VPC ＋ EC2 ＋ S3 +  ECR + ECS + Route53

- 本番環境でもコンテナ基盤を使用予定(現在学習中)

### バックエンド

- Ruby2.6.5

- Ruby on Rails 6.0.3

### データベース

- MySQL8.0

### フロントエンド

- HTML

- SCSS

- JavaScript

## 備考

- 機能実装でき次第随時更新していきます。