# ansible-lamp
Create a LAMP Stack on Ubuntu with this Ansible Playbook

Instalar Ansible y sshpass:
# apt-get install ansible sshpass

Instalar módulo python-apt:
# apt-get install python-apt

Crear el archivo de hosts y variable de entorno:
# mkdir ansible
# cd ansible/
# echo "<dirección ip de la máquina>" > ~/ansible/hosts
# echo "export ANSIBLE_HOSTS=~/ansible/hosts" >> ~/.bashrc

# . ~/.bashrc

Probar la conexión con la máquina (no funciona hasta que no se ejecute el playbook del setup):
# ansible all -u <usuario> -m ping --ask-pass

Realizar despliegue:
# ansible-playbook -i hosts <playbook.yml> --ask-pass --ask-sudo-pass
