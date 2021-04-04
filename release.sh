docker-compose down
heroku container:push web -a $1
heroku container:release web -a $1
heroku run bundle exec rake db:migrate RAILS_ENV=production -a $1
heroku open -a $1
