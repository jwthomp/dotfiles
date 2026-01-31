#!/usr/bin/env bash

HOSTNAME=$(hostname -s)
OS=$(uname)

package_list=(
  "zsh"
)

for package_name in "$package_list"; do
  echo "Installing zsh files for OS: ${OS} and HOST: ${HOSTNAME}"

  if [[ -d "common/${package_name}" ]]; then
    stow -d common  -t ~/ ${package_name}
  fi

  if [[ -d "os/${OS}/${package_name}" ]]; then
    stow -d os/${OS} -t ~/ ${package_name}
  fi

  if [[ -d "host/${HOSTNAME}/${package_name}" ]]; then
    stow -d host/${HOSTNAME} -t ~/ ${package_name}
  fi
done
