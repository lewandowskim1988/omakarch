#!/bin/bash

# Function to check if running on Arch base distro
check_distro() {
  if [ -f /etc/os-release ]; then
  . /etc/os-release
  case $ID in
    !arch | !endeavouros)
      echo "Error: This script must be run on Arch linux base distro. Current OS: $ID" >&2
      return 1
      ;;
  esac
  else
    echo "Error: Unable to determine OS. /etc/os-release file not found." >&2
    return 1
  fi
}

if ! check_distro; then
  echo "Script execution failed due to system requirements not being met." >&2
  exit 1
fi

