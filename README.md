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

Modificar el archivo hosts para usar la IP de la máquina y usuario objetivo:
# vi hosts

Modificar el playbook.yml para elegir las variables y tareas que se desean ejecutar:
# vi playbook.yml

# echo "export ANSIBLE_HOSTS=/path/to/ansible-lamp/hosts" >> ~/.bashrc

# . ~/.bashrc

Realizar despliegue:
# ansible-playbook -i hosts playbook.yml --ask-pass --ask-sudo-pass
```
