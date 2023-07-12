#bin/data/bash
q="-e"
e="echo"
s="sleep 1"
ss="sleep 2"
sss="sleep 3"
#color
m="\033[1;31m"
h="\033[1;32m"
k="\033[1;33m"
b="\033[1;34m"
bl="\033[1;36m"
p="\033[1;37m"
#code
clear
echo $q $k"INSTALLING"
sleep 3
echo $q $h
apt install bash -y
sleep 2 
clear
figlet "ngrok" | lolcat
echo $q $b "               by.$m Subur M"
echo
echo $q $k "Tekan$bl y$k untuk install$m Ngrok$k tekan$bl n$k Jika sudah pernah install ngrok"
echo $q $bl
read -p "Anonymouse [y/n]> " ini
        if [ "$ini" = "y" ]
then
echo $q $k "Menginstall NGROK"
sleep 2
apt install wget -y
apt install unzip -y
apt install zip -y
cd
rm -rf ngrok-stable-linux-arm.zip
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
cd
unzip ngrok-stable-linux-arm.zip
chmod 777 ngrok
xdg-open "https://ngrok.com"
echo $q $bl
read -p  "ENTER untuk melanjutkan" ini
clear
figlet "ngrok" | lolcat
echo $q $b "               by.$m Subur_M"
echo
echo $q $k "SILAHKAN DAFTAR AKUN$m NGROK$k DAN MASUKKAN TOKEN DI BAWAH"
echo $q $bl
read -p "TOKEN > " isi
sleep 1
cd
 ./ngrok authtoken $isi
sleep 1
echo $q $bl
read -p "http/tcp > " isii
read -p "MASUKKAN PORT > " isiii
sleep 1
cd
 ./ngrok $isii $isiii
echo $q $bl
read -p "ENTER UNTUK KEMBALI KE TOOLSV3" enter

        elif [ "$ini" = "n" ]
then
clear
figlet "ngrok" | lolcat
echo $q $b "                by.$m Subur_M"
echo
echo $q $bl

read -p "http/tcp > " isii
read -p "Masukkan PORT > " isiii
sleep 1
cd
 ./ngrok $isii $isiii
echo $q $bl
read -p "ENTER UNTUK KEMBALI KE TOOLSV3" enter
        else
echo $q $k "INPUT SALAH ULANG I"
fi
