#!/bin/bash

# Search through ansible-vault protected files. Useful for finding odd variable
# settings and such.

# Usage:   vault-grep.sh SEARCHTERM
# Example: vault-grep.sh redis_sekrit_password

# Trevor Oke <trevor@trevoroke.com> 

VAULT_PASSFILE=password.txt

grep -ril ANSIBLE_VAULT group_vars/ | while read N ; do echo $N: ; ansible-vault --vault-pass $VAULT_PASSFILE view $N | grep $1; done
