# AZ cli
## Basic commands
```shell
$ az login --tenant <tenant>
```
### Upgrade automatically version
```shell
$ az config set auto-upgrade.enable=yes
```
## Examples
### Groups
```shell
$ az group create --name "cli-grp" --location "North Europe"
$ az group list
```

### Create VM with initial script
```shwll
$ az vm create \
    --resource-group myResourceGroupAutomate \
    --name myAutomatedVM \
    --image UbuntuLTS \
    --admin-username azureuser \
    --generate-ssh-keys \
    --custom-data cloud-init.txt
```

## Scripts
Other az cli scripts can be found [here](scripts/cli)