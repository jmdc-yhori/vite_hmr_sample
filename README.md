# RailsにViteを導入して、HMRを使って開発を行うための設定のサンプル

## 環境

### Version

* Ruby  3.3

* Gemモジュール
  * Rails 7.2
  * vite_rails 3.9.2

* Node 22.2

* Nodeモジュール
  * vite 6.3.5
  * vite-plugin-ruby 5.1
  * @vitejs/plugin-react 4.5

### Docker

* container
  * rails
    * port: 3000
  * vite_dev
    * port: 3036

## 使い方

リポジトリをCLONEしたらビルドしてコンテナを立ち上げてください

```
$ docker compose build

$ docker compose up -d

```
