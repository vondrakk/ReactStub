#!/usr/bin/sh
# Pass new project name as argument
curl -XPOST -H 'Authorization: token `cat gittoken`' -d'{"name":"$1"}' https://api.github.com/user/repos
npm install
git init
git add .
git commit -m "initial check-in"
perl -pi -e 's/ReactStub/$1/' .git/config
git push
# heroku init tasks
heroku create
git push heroku
