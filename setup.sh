#!/usr/bin/env bash

HOSTNAME=$(hostname -s)
OS=$(uname)

package_list=(
  "aerospace"
  "aliases"
  "git"
  "jj"
  "shell"
  "ssh"
  "vim"
  "wezterm"
  "zsh"
)

for package_name in ${package_list[@]}; do
  printf "Installing %-15s files for OS: %-10s and HOST: %s\n" ${package_name} ${OS} ${HOSTNAME}

  if [[ -d "common/${package_name}" ]]; then
    stow -d common  -t ~/ -R ${package_name}
  fi

  if [[ -d "os/${OS}/${package_name}" ]]; then
    stow -d os/${OS} -t ~/ -R ${package_name}
  fi

  if [[ -d "host/${HOSTNAME}/${package_name}" ]]; then
    stow -d host/${HOSTNAME} -t ~/ -R ${package_name}
  fi
done
