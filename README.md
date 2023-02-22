# Rails5・MySQL・NginxをDockerで構築

　こちらのテンプレートリポジトリはRails5をMySQLが利用できるし、Nginxでも動作できるような環境をDockerにて構築できるテンプレートとなっています。

## How to install

　こちらのリポジトリの右上にあるUse this templateを押してお好きなリポジトリ名をつけてリポジトリを作成してください。その後、各コマンドを順次打ち込んでください。

```bash
cd docker
docker-compose build
docker-compose up -d
docker-compose run app bash
bundle install
bundle update 
bundle exec rails new .
rm -rf .git/
exit
docker-compose down
docker-compose up -d
```

　その後、`localhost`もしくは`localhost:3000`にアクセスしていただくと利用できます。

