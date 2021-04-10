# README


## 開発環境
ruby 2.6.3
Rails 6.0.3.6


## Docker 環境構築編
【Docker 環境作成中の自分用メモ】
・Yarn install関係うまくいかない時は、

Config / Webpacker .ymlの
  check_yarn_integrity: false

にしたらうまくいったでござる


・Pg 関係のインストールが」うまくいかない時はローカル環境に
Pgをインストールしてから
docker-compose build --no-cache
でうまくいった

参考にしたサイト
・作成済みのRails サービスをDockerにのっける
https://qiita.com/kenz-dev/items/b9e716204e0cd0cea447

・Docker Rails 6環境構築
https://qiita.com/me-654393/items/ac6f61f3eee66380ecd7


