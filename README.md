# My Chef recipes, cookbooks, etc.

## Setup

```
$ git clone git@github.com:banyan/chef.git
$ cd ~/chef
$ bundle install --path .bundle/gems
$ sudo bundle exec chef-solo --config .chef/solo.rb --json .chef/chef.json
```
## Create Cookbooks

### Generate Cookbook Template
```
$ cd ~/chef
$ bundle exec knife cookbook create <NEW_COOKBOOK_NAME> --cookbook-path cookbooks 
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
### Run Chef
```
# pwd
/root/chef
# bundle exec chef-solo -c config/solo.rb -j json/chef.json
```
