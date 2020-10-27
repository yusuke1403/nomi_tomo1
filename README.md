# ポートフォリオ用作成アプリ  「nomi-tomo」

## 概要・背景
- 休日に近場で飲みに行きたい、飲み友達が欲しいなど、一人飲みが寂しいという人の為の飲み友達を作ることを目的としたアプリケーションです。
- 現在地から周辺の居酒屋を検索でき、行きつけとなるお店探しが可能です。お店専用のチャットルームがあり、同じ行きつけとなる者同士のコミュニティーツールとして使用できます。

## 工夫した点
**●ローカル環境にdockerコンテナを使用<br>**
&emsp;&emsp;今アプリに関しましては、Rails6環境の構築を行いました。Rails6からWebpackが導入され、Rails5とは少し手順が異なるのでそこも考慮しました。(nodejsとyarnのインストール)<br><br>
**●UIのこだわり<br>**
&emsp;&emsp;MAP上のアイコンや吹き出しといった何気ない箇所においても、コンセプトに沿ったUI設計を意識しております。<br>


## 機能のご紹介

### 主な機能
**1）デモデータの投入(起動時にdb:seef.fuコマンドでモデルに事前投入）<br>**
&emsp;&emsp;デモデータ:9件(今後追加予定)<br>

**2）MAP機能(Google Cloud Platformサービス maps javascriput API使用)<br>**
&emsp;&emsp;現在地から周辺の居酒屋をMAP上で探す事が出来ます！<br>
&emsp;&emsp;居酒屋アイコンをクリックするとお店情報が吹き出し表示され、リンクから詳細ページへ遷移します。<br>


![](https://user-images.githubusercontent.com/69718302/97077462-e020ad80-161e-11eb-82d1-bb74d5abecd0.png)<br>


**3）お気に入り機能(中間テーブル使用)<br>**
&emsp;&emsp;行きつけのお店をお気に入り登録出来て、マイページより一覧で表示されます。お店探しを、より円滑にします！<br>

![](https://user-images.githubusercontent.com/69718302/97078275-26c5d600-1626-11eb-84f4-c82c620cb1fb.png)

![](https://user-images.githubusercontent.com/69718302/97081742-64832880-163f-11eb-8116-3b564aa96ea7.png)<br>


**4）チャット機能(中間テーブル使用)<br>**
&emsp;&emsp;店舗ごとのチャット機能の実装により、行きつけの常連間の出会いの場としてのやりとりが可能です！<br>
**5）画像アップロード機能(carrierwave使用)<br>**
&emsp;&emsp;画像投稿時、ローカル環境はlocalファイルに、本番環境はAWS S3を使う様設定してます。<br>
**6）リアルタイム通信(Action Cable使用)<br>**
&emsp;&emsp;メッセージを送信したとき、即時に更新されます。(今後実装予定)<br>

![](https://user-images.githubusercontent.com/69718302/97256160-a4bbf400-1855-11eb-8fe5-cb0663030055.png)<br>

### その他機能

- ユーザー登録機能(devise)

### 今後の実装プラン

- CircleCIでCI/CDパイプラインを構築

- インフラ構築

- フォロー/フォロワー機能

- Action Cableを用いた、リアルタイム通信

- ナビ機能(googlemap URLスキーム)

- レスポンシブ化

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