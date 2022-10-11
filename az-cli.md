# AZ cli
## Basic commands
```shell
$ az login --tenant <tenant>
```
### Upgrade automatically version
```shell
$ az config set auto-upgrade.enable=yes
```

## Groups
```shell
$ az group create --name "cli-grp" --location "North Europe"
$ az group list
```
## Scripts
Other az cli scripts can be found [here](scripts/cli)