sudo yum install -y nano

mkdir /var/folder1
mkdir /var/folder2

cat /home/vagrant/move.service > /etc/systemd/system/move.service

echo "Run daemon"
systemctl daemon-reload
systemctl start move.service
systemctl enable move.service

cd /etc/cron.d
echo '* * * * 1-5 root w>>/var/log/logged-in.log' >mycron

