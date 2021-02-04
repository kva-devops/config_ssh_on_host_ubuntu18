sudo sed -ren 's/^(PasswordAuthentication)([[:space:]]+)no/\1\2yes/' /etc/ssh/sshd_config
sudo sed -ren 's/^(\#)(PubkeyAuthentication)([[:space:]]+)(.*)/\2\3\4/' /etc/ssh/sshd_config
sudo sed -ren 's/^(\#)(PermitRootLogin)([[:space:]]+)prohibit-password/\2\3yes/' /etc/ssh/sshd_config
sudo echo 'RSAAuthentication yes' >> /etc/ssh/sshd_config
