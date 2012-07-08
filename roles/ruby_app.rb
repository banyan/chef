name "ruby_app"
description "Ruby app role."
run_list(
  "recipe[ruby_build]",
  "recipe[rbenv::system]"
)
default_attributes(
  "rbenv" => {
    "rubies" => [
      "1.9.3-p125"
    ]
  }
)
