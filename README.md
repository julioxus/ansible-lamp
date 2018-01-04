# ansible-lamp
Create a LAMP Stack on Ubuntu with this Ansible Playbook

```
Instalar Ansible y sshpass:
# apt-get install ansible sshpass

Instalar módulo python-apt:
# apt-get install python-apt

Crear el archivo de hosts y variable de entorno:
# git clone https://github.com/julioxus/ansible-lamp
# cd ansible-lamp
# echo "<dirección ip de la máquina>" > ~/ansible-lamp/hosts
# echo "export ANSIBLE_HOSTS=~/ansible-lamp/hosts" >> ~/.bashrc

# . ~/.bashrc

Realizar despliegue:
# ansible-playbook -i hosts playbook.yml --ask-pass --ask-sudo-pass
```
