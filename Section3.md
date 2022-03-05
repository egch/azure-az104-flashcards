# Section 3 - Deploy and Manage Azure compute resources
## Installing nginx

```bash
$ ssh user@ip
vm-ubuntu$ sudo apt-get update
vm-ubuntu$ sudo apt-get install nginx
```
Add the port 80 as Inbound port rules in the vm.

## Accessing VM with SSH keys
```bash
$ chmod 400 vm-ubuntu-ssh_key.cer
$ ssh -i vm-ubuntu-ssh_key.cer enrico@13.79.186.11

```
## Disks Snapshot

