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
# bundle exec chef-solo -c config/solo.rb -j json/chef.json
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
$ vi .chef/chef.json

{
  "run_list" : [
    "recipe[NEW_COOKBOOK_NAME]", # add cookbook name
    "recipe[git]",
    "recipe[utility]",
    ...
```

## Note

* default ssh port will be changed from 22 to 10022 (22 will be shutdown)

## License

* The MIT License (MIT)
* Copyright (c) 2012- Kohei Hasegawa
