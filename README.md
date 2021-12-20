# gsb-eth0_infra
gsb-eth0 Infra repository

> bastion_IP = 51.250.11.234 someinternalhost_IP = 10.128.0.25

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
