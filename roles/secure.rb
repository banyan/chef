name "secure"
description "Change openssh port and ufw"
run_list(
  "recipe[openssh]",
  "recipe[ufw]"
)
