#!/bin/bash

set -o nounset
set -o pipefail
set -o errexit
set -o xtrace

# Install prerequisites
apt-get update
apt-get install -y wget gnupg lsb-release


# Install script
apt-get install -y apt-transport-https
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E9D0A3616276FA6C
echo deb https://khulnasoft-lab.github.io/vul-repo/deb $(lsb_release -sc) main | tee -a /etc/apt/sources.list
apt-get update
apt-get install -y vul
