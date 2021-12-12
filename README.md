# azure-az104-flashcards
Exam AZ-104: Microsoft Azure Administrator - flashcards

## Build a Linux VM
```bash
# connect to the linux vm
[local]$ ssh <vm-user>@2<ip-vm>
$ sudo apt-get update
# install & run nginx web server
$ sudo apt-get install nginx
```
## Connect to VM with SSH keys
When you create the new VM download and save the `private-key.cer` file.
```bash
$ chmod 400 private-key.cer
$ ssh -i private-key.cer enrico_azure@137.135.185.131
```
