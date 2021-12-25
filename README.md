# gsb-eth0_infra
gsb-eth0 Infra repository

```
testapp_IP = 51.250.1.68
testapp_port = 9292
```
# ***Создаем новый инстанс:***

```
$ yc compute instance create \
 --name reddit-app \
 --hostname reddit-app \
 --memory=4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-
lts,size=10GB \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --metadata-from-file key=~/startup-script.sh
 --ssh-key ~/.ssh/appuser.pub
```
