For now, clone this repo and
```sudo ansible-playbook local.yml --extra-vars "user=<username>" --tags <tag> --ask-vault-password```


There are still some kinks to work out before we can execute this completely remotely and just run:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dadeef/ansible/master/ansible_run.sh)"
```
so todo: replace the copy commands that copies the ssh keys to commands that can gather them from the raw github addresses and apply the correct permissions
