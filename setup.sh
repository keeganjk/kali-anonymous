# This script sets up "anonymous" for Kali Linux.
# Made with <3 by Keegan Kuhn
# keeganjk@protonmail.com

tor_install()
	echo ""
	echo "ANONYMOUS SETUP FOR KALI LINUX ROLLING"
	echo ""
	read -p "Is Tor installed on this computer? [Y/n] (N if unsure) " tor
	case $tor in
		[Nn]* ) apt install tor -y; break;;
		[Yy]* ) break;;
        	* ) echo "You didn't type Y or n, aborting!"; break;;
	esac;
	read -p "Is macchanger installed on this computer? [Y/n] (N if unsure) " tor
	case $tor in
		[Nn]* ) apt install macchanger -y; break;;
		[Yy]* ) break;;
        	* ) echo "You didn't type Y or n, aborting!"; break;;
	esac;

# Adding needed code to a Tor file
echo "[.] Copying code to Tor configuration ..."
echo 'VirtualAddrNetwork 10.192.0.0/10' >> /etc/tor/torrc
echo 'TransPort 9040' >> /etc/tor/torrc
echo 'DNSPort 53' >> /etc/tor/torrc
echo 'AutomapHostsOnResolve 1\n' >> /etc/tor/torrc
echo "[*] Done !"

# Copying files to needed locations
echo "[.] Copying files to designated locations ..."
cp anonymous /usr/sbin/anonymous
cp backbox-anonymous /etc/default/backbox-anonymous
echo "[*] Done !"
echo
echo "[.] chmod-ing files ..."
chmod +x /usr/sbin/anonymous
chmod +x /etc/default/backbox-anonymous
echo "[*] Done !"

# Finish
echo "Install should be successful!"
echo "You can delete these install files;"
echo "they're useless now..."
echo "You can use anonymous by typing anonymous into the terminal"
echo "------------------------------"
echo "START: anonymous start "
echo "STOP : anonymous stop  "
echo "STAT : anonymous status"
echo "------------------------------"
echo "Install complete!"
echo "Read the info above for help to run the script ..."
echo "Report bugs to https://github.com/keeganjk/kali-anonymous/issues"
