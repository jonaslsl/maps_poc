# Maps POC

Poc with Google Maps API

## Playbook
***It's dangerous to go alone! Read [this](https://github.com/matilhaestudio/dev-playbook)!***

## Staging on Heroku
url: TBD

### List routes
http://localhost:3000/rails/info/routes

### Heroku cheatsheet
	```heroku logs --tail```
	```heroku config:set RAILS_ENV=test```
	```heroku pg:reset -r heroku ```
	```heroku run rake db:schema:load -r heroku```
	```heroku run bash```
	```bundle install --without nothing```
	```heroku plugins:install https://github.com/naaman/heroku-vim```
	```rm .bundler/config```
	```heroku git:remote -a newname```
	```bundle install --with development test```
	```heroku ps```
	```heroku ps:stop <pid> ``

## Versions
	Ruby 2.3.3
	Rails 4.2.7.1

## Steps to build

1. Install ruby project version with rbenv or rmv

2. Install bundler for this version
```gem install bundler ```

3. Install postgres and add necessary local privileges

	```gem install pg```

	```sudo -u postgres psql```

	```ALTER USER root WITH SUPERUSER;```

	```\q```

4. Run postgres

	```postgres -D /usr/local/var/postgres```

5. Run rails app

	```bundle install```

	```rake db:create```

	```rake db:migrate```

	```rake db:seeds```

## Steps to run locally
	```bundle exec puma```

## Steps to run on staging
	TBD

## Steps to test

	```RAILS_ENV=test rake db:create```

	```bundle exec rspec spec```

	```export CODACY_PROJECT_TOKEN=<token>```

	```export CODACY_RUN_LOCAL=true```

## Steps to deploy
	1. Do a merge from your feature branch with dev
	2. Run tests
	3. Run seeds
	4. Check Codacy
	5. Check your build on our CI server

## Steps to commit
	1. Give a clear commit msg
	2. Send a PR to your feature branch

### Common issues and tricks

#### Rails console not working
```rm -r bin/*```
```bundle exec rake rails:update:bin```

#### To have launchd start postgresql at login:
```ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents```
#### Then to load postgresql now:
```launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist```
#### Set postgress to trust local connections
/etc/postgresql/9.5/main/pg_hba.conf
change from md5 to trust

http://stackoverflow.com/questions/18664074/getting-error-peer-authentication-failed-for-user-postgres-when-trying-to-ge

```sudo service postgresql restart```

#### Error while installing ruby with rbenv on MAc
```xcode-select --install```

#### Error about yml not found
spring stop


### Heroku manual deploy
```heroku git:remote -a <app-name>```
or
```heroku git:remote -a <app-name>```


### Any Doubts?
jonas@matilhaestud.io
