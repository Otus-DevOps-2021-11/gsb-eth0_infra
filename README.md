# gsb-eth0_infra
gsb-eth0 Infra repository

# ***ДЗ №7:***
В процессе сделано:
```
1. Всё по методичке:
2. Перенесены скрипты из прошлого дз в папку config-scripts
3. Создан конфиг Packer для развертывания ubuntu в YC
4. Использованы скрипты из прошлого дз для автоматического конфигурирования ВМ
```
# *Как запустить проект:*
```
packer build ./ubuntu16.json
```
# *Как проверить работоспособность:*
```
http://VM_IP:9292
```
-----------------------------------------------------------------------------------
# ***ДЗ №6:***

```
testapp_IP = 51.250.1.68 
testapp_port = 9292
```
# ***Создаем новый инстанс:***

```
yc compute instance create \
 --name reddit-app \
 --hostname reddit-app \
 --memory=4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --metadata serial-port-enable=1 \
 --metadata-from-file key=~/startup-script.sh
 --ssh-key ~/.ssh/appuser.pub
```

-----------------------------------------------------------------------------------
# ***ДЗ №5:***

# ***ssh подключение к серверу через bastion одной командой:***

> $: ssh -i ~/.ssh/appuser -A -J appuser@51.250.11.234 appuser@10.128.0.25 -p 22

# ***Опцию ProxyJump в SSH config:***

~/.ssh/config

```
Host bastion
  HostName 51.250.19.223
  Port 22
  User appuser
  IdentityFile ~/.ssh/appuser

Host someinternalhost
  HostName 10.129.0.26
  Port 22
  User appuser
  ProxyJump bastion
```
