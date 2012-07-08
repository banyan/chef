name "vps_base"
description "VPS Base role applied to all nodes."
run_list(
  "role[base]",
  "recipe[openssh]",
  "recipe[ufw]"
)
