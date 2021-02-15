#!/bin/bash

# tampilan di terminal
echo -n "Masukkan nama folder yang ingin diproses: "

# menyimpan input keyboard
read folder

# menyalin folder ke alamat tujuan
scp -r $folder root@172.20.10.1:/var/mobile/Documents

# membuat .deb file
ssh root@172.20.10.1 dpkg -b /var/mobile/Documents/$folder

# menyalin .deb file dari iDevices ke komputer (pakai dot untuk menyalin ke current directory)
scp root@172.20.10.1:/var/mobile/Documents/$folder.deb ~/Apps/cydia/debs

# hapus folder yang telah diproses dadn sudah tidak diperlukan
ssh root@172.20.10.1 rm -r /var/mobile/Documents/$folder
ssh root@172.20.10.1 rm /var/mobile/Documents/$folder.deb

# verifikasi
# Ada .deb di ~/Apps/cydia/debs
# Folder tema di root@172.20.10.1:/var/mobile/Documents/ hilang
