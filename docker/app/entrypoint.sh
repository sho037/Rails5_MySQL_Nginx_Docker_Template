bundle install --path vendor/bundle
bundle update
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
rm -f tmp/pids/server.pid
bundle exec rails s -p 3000 -b '0.0.0.0'