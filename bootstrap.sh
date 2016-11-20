#!/bin/bash

# install homebrew
if ! which brew; then
    echo installing homebrew...
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install ansible
if ! which ansible; then
    echo installing ansible...
    brew install ansible
fi

# clone this repository itself
echo cloning mac-provisioning repository...
mkdir -p ~/src/ && cd ~/src/
git clone https://github.com/santrancisco/mbp-ansible.git
cd mbp-ansible/

# play ansible
echo play ansible🎶
ansible-playbook -i hosts localhost.yaml -v
