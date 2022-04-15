#!/usr/bin/env bash
echo "lets get things started"

echo "What is the username on the machine you're setting up? "
read username

echo "What's the Ansible Vault password? "
read -s vault_password
echo $vault_password > vault-pass.txt #We need to temporarily store the password in a file because we cannot use the --ask-vault-password with the ansible-pull command

# Install Apple developer tools, Homebrew & Ansible
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible

sudo ansible-pull -U https://github.com/dadeef/ansible.git --extra-vars "user=$username" --vault-password-file vault-pass.txt

rm vault-pass.txt