n=0;
exit=1;

	echo "Masukkan Nama Anda"
	read nama

	while [[ $exit=1 ]]; 
	do
	#statements
	invoice = "BAJUI"1;
	let invoice=$invoice+3

	increment = 0;
	let increment=$increment+1

	clear
	echo "Hallo $nama. Selamat Datang"
	echo "1. Create User."
	echo "2. Login User."
	read login
	if [[ $login -eq 1 ]];
	then
		echo "Buat ID Username Anda"
		echo -n "Username = "
		read username;
		echo "Username Telah Dibuat"
		echo "=========================="
		echo "Buat Password Anda"
		echo -n "Password = "
		read password;
		echo "Password Telah Dibuat"
		echo "=========================="
		let n=$n+1;
	elif [[ $login -eq 2 ]]; then 
		echo "Silahkan Login"
		echo -n "Username = "
		read usr;
		echo "=========================="
		echo "Masukkan Password Anda"
		echo -n "Password = "
		read pwd;
		echo "=========================="
		if [[ $usr == $username && $pwd == $password ]];
			then
			echo "Berhasil Login"
			break;
		else
			echo "Password Salah"
			echo "Tolong ulangi lagi."
			exit=1;
		fi
		#statements
	fi
	done

exit=1;
while [[ $exit = 1 ]];
do
echo "Selamat Datang !!!"
echo "Menu"
   echo "1. Daftar Harga";
   echo "2. Pembayaran ";
   echo "3. Cetak Nota";
   echo "4. KELUAR       ";
read -p "Silahkan Pilih Menu : " pilihan

if [ $pilihan -eq 1 ];
then
clear;
       echo "=====================================";
       echo "          MENU HARGA BARANG ";
       echo "=====================================";
       echo "1. KAYU      RP 25.000";
       echo "2. BESI      RP 50.000";
       echo "3. PLASTIK   RP 15.000";
       echo "=====================================";
       echo -n "Masukan Nama anda                 :";
       read nama 
       echo -n "Masukan Alamat anda               :";
       read alamat
       echo -n "E-mail        : "
       read email
       echo -n "No HP         : "
       read hp
       echo -n "Masukan jenis barang anda (1-3)    :";
       read jenis
       echo -n "Masukan jumlah barang yang di beli : "
       read jum
       echo "=====================================";
       if [ $jenis -eq 1 ];
       then
	       kelas="KAYU";
	       barang=25000;
	       let total=jum*barang;
       elif [ $jenis -eq 2 ];
       then
	       kelas="BESI";
	       barang=50000;
	       let total=jum*barang; 
       elif [ $jenis -eq 3 ];
       then
	       kelas="PLASTIK";
	       barang=15000;
	       let total=jum*barang;
       else
	       echo "MOHON MAAF,barang tidak tersedia"
	       exit=0;
       fi
elif [ $pilihan -eq 2 ];
then
       echo "Pembayaran pada pembelian barang"
       echo "1. Online.";
       echo "2. Offline.";
       read -p "Masukkin Pilihan : " pembayaran
       echo ""
       if [ $pembayaran -eq 1 ];
       then
	       echo "1. Kartu Kredit."
	       echo "2. Transfer Bank"
	       read -p "Masukkin Pilihan : " bayar
	       if [ $bayar -eq 1 ];
	       then
		       echo -n "Masukkan nomor kartu kredit anda : "
		       read cc
		       if [ $cc -eq 17111996 ];
		       then
			       echo "No Invoice : "$invoice
			       echo "Pembayaran anda sudah diterima, terima kasih telah memesan barang di aplikasi kami."
	       else
	       echo "Inputan Salah."
	   fi
	       fi
       elif [[ $bayar -eq 2 ]];
       then
	       echo "Masukkan nomor Kartu atm anda : "
	       read atm
	       echo "Masukkan kode yang telah dikirimkan ke nomor telepon anda."
	       read otp
	       if [ $otp -eq 123456 ];
	       then
		       echo "No Invoice : "$invoice
		       echo "Pembayaran anda telah terverifikasi."
		       echo "Pembayaran anda sudah diterima, terima kasih telah memesan barang di aplikasi kami."
	       else
		       echo "Inputan salah !!"
		       echo "Masukkan nomor atm yang benar"
	       fi
       echo ""
       elif [[ $pembayaran -eq 2 ]]; 
       then
       echo "Pembayaran di toko."
       else
       echo "Inputan anda salah."
       fi
       echo ""

elif [ $pilihan -eq 3 ];
then
       clear;
       echo "DATA PEMBELI";
       echo "====================================";
       echo "No invoice  : $invoice"
       echo "NAMA        : $nama";
       echo "ALAMAT      : $alamat";
       echo "KELAS       : $kelas";
       echo "JUMLAH      : $jum";
       echo "Nomor Hp    : $hp"
       echo "E-mail      : $email"
       echo "====================================";
       echo "TOTAL BAYAR : $total";
       echo "====================================";
       echo
else
	exit=0;
	echo "Terima Kasih, sampai ketemu lagi."
fi
done
