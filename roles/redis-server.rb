name "redis-server"
description "redis-server"
run_list(
  "recipe[redis-server]"
)
default_attributes(
  "ufw" => {
    "allow" => %w(80 6380 10022)
  }
)
