# psql-on-docker

Docker 上で **PostgreSQL** と **PgAdmin** を試す。

## 利用したイメージ

- [postgres - Docker Hub](https://hub.docker.com/_/postgres/)
- [dpage/pgadmin4 - Docker Hub](https://hub.docker.com/r/dpage/pgadmin4/)

## 使い方

```sh
# 必要に応じてイメージを生成して、コンテナーをバックグラウンド起動
$ docker-compose up -d --build

# イメージを確認
$ docker-compose images

# コンテナーを確認
$ docker-compose ps

# コンテナーのログ確認
$ docker logs -f <container_name>

# コンテナー内のシェルに接続
$ docker exec -it <container_name> bash

# ホスト側からコンテナ内の PostgreSQL への疎通確認
$ psql -h localhost -p 15432 -d your_project_name_db -U postgres -c '\c'
```

- ホスト側から pgAdmin へアクセス
  - <http://localhost:8080/login>

```sh
# コンテナーを停止
$ docker-compose stop
```
