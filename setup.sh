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

package_locations=(
  "common"
  "os/${OS}"
  "host/${HOSTNAME}"
)

for package_name in ${package_list[@]}; do
  printf "Installing %-15s files for OS: %-10s and HOST: %s\n" ${package_name} ${OS} ${HOSTNAME}

  for package_location in ${package_locations[@]}; do
    if [[ -d "${package_location}/${package_name}" ]]; then
      stow -d "${package_location}"  -t ~/ -R "${package_name}"
      if [[ -f "${package_location}/${package_name}/setup.sh" ]]; then
        "${package_location}/${package_name}/setup.sh"
      fi
    fi
  done
done
