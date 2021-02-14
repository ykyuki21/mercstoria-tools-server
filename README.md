# README

## Setup
```
# Dockerイメージをビルド
$ docker-compose build

# Volumeを作成
$ docker volume create --name=postgresql-volume

# コンテナを起動
$ docker-compose up -d

# Railsのセットアップを実行
$ docker-compose run --rm web bin/setup
```
