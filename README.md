# My Chef recipes, cookbooks, etc.
![image](http://banyan.github.com/images/han_solo.jpg)

## Install Ruby & Git for chef-solo

### Ubuntu
```
$ sudo apt-get update
$ sudo aptitude install ruby1.9.1-dev git build-essential
$ sudo gem install bundler
```

## Setup
```
$ git clone --recurse-submodules git@github.com:banyan/chef.git
$ cd ~/chef
$ bundle install --path .bundle/gems
```

### Run Chef
```
$ sudo ln -s /path/to/chef /root/chef # execute as root
# pwd
/root/chef
# bundle exec chef-solo -c config/solo.rb -j json/secure_ruby_app.json # choose proper json
```

### Run Chef as normal user

* Using [rbenv-sudo](https://github.com/dcarley/rbenv-sudo)

```
$ pwd
/home/banyan/chef
$ rbenv sudo bundle exec chef-solo -c config/solo.rb -j json/secure_ruby_app.json # choose proper json
```

## Create Cookbooks

### Generate Cookbook Template
```
$ cd ~/chef
$ bundle exec knife cookbook create NEW_COOKBOOK_NAME --cookbook-path cookbooks
```

or Use my tiny wrapper - [chef-cooker](https://github.com/banyan/chef-cooker)
```
$ sudo gem install chef-cooker
$ chef-cooker NEW_COOKBOOK_NAME
```

### Add Recipe
```
$ vi role/PROPER_ROLE.rb

run_list(
  "recipe[NEW_COOKBOOK_NAME]", # add cookbook name
  "recipe[xmllibs]",
  "recipe[git]",
    ...
```

## Note

* When use secure role,
  * default ssh port will be changed from 22 to 10022 (22 will be shutdown)
  * Don't forget to change Security Group when using EC2.

## License

* The MIT License (MIT)
* Copyright (c) 2012- Kohei Hasegawa
