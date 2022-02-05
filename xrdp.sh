sudo adduser kuaysas --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "kuaysas:123456" | sudo chpasswd
sudo usermod -aG sudo,adm kuaysas
clear
echo "Install"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y xrdp
sudo apt-get install -y xfce4-terminal
echo xfce4-session >~/.xsession
sudo service xrdp start
clear
echo "===================================="
echo "Username : kuaysas"
echo "Password : 123456"
echo "ngrok : https://dashboard.ngrok.com/get-started/your-authtoken"
echo "SALAM NGAUR.COM DON'T CLOSE THIS TAB"
echo "===================================="
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3GvqNMK > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp 3389
sleep 9876543210
