name "base"
description "Base role applied to all nodes."
run_list(
  "recipe[build-essential]",
  "recipe[xmllibs]",
  "recipe[git]",
  "recipe[tmux]",
  "recipe[zsh]",
  "recipe[vim]",
  "recipe[tree]",
  "recipe[trash-cli]",
  "recipe[sysv-rc-conf]",
  "recipe[language-pack-ja]",
  "recipe[ntp]",
  "recipe[nmap]",
  "recipe[wget]",
  "recipe[tig]",
  "recipe[git-flow]",
  "recipe[ack-grep]"
)
