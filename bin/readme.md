# Run the game

Windows: start.bat
Linux: start.sh

# Dependencies

+ To run the game:
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;
sudo apt-get -y install apt-transport-https;
sudo add-apt-repository universe;
sudo apt-get update;
sudo apt-get -y install p7zip-full p7zip-rar;
sudo apt-get -y install aspnetcore-runtime-3.1;
sudo apt-get -y install dotnet-sdk-3.1;


+ To train the game:
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo apt-get -y install python3-distutils
sudo apt-get -y install python3-apt
python3 get-pip.py
python3 -m pip install tensorflow
python3 -m pip install IPython
python3 -m pip install scikit-learn
sudo apt-get -y install python3-pandas


+ Aws free tier
sudo fallocate -l 1G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# Train the game

The tr.py is the config file to generate new versions of neural network
Linux: python3 tr.py