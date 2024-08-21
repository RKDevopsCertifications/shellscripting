echo "--------------------------"
echo "System update is started"
sudo apt-get update && sudo apt-get -y upgrade 
#cleanup
sudo apt-get -y  autoremove
sudo apt-get -y clean

echo "system update complted"
