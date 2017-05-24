git add .
webpack && git commit -am "$1" && git push && git push heroku && heroku open
