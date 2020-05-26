#!/bin/bash
echo "CiAvJCQgICAgICAvJCQgIC8kJCQkJCQgIC8kJCQkJCQkICAvJCQkJCQkICAvJCQkJCQkIAp8ICQkJCAgICAvJCQkIC8kJF9fICAkJHwgJCRfXyAgJCR8XyAgJCRfLyAvJCRfXyAgJCQKfCAkJCQkICAvJCQkJHwgJCQgIFwgJCR8ICQkICBcICQkICB8ICQkICB8ICQkICBcX18vCnwgJCQgJCQvJCQgJCR8ICQkICB8ICQkfCAkJCAgfCAkJCAgfCAkJCAgfCAgJCQkJCQkIAp8ICQkICAkJCR8ICQkfCAkJCAgfCAkJHwgJCQgIHwgJCQgIHwgJCQgICBcX19fXyAgJCQKfCAkJFwgICQgfCAkJHwgJCQgIHwgJCR8ICQkICB8ICQkICB8ICQkICAgLyQkICBcICQkCnwgJCQgXC8gIHwgJCR8ICAkJCQkJCQvfCAkJCQkJCQkLyAvJCQkJCQkfCAgJCQkJCQkLwp8X18vICAgICB8X18vIFxfX19fX18vIHxfX19fX19fLyB8X19fX19fLyBcX19fX19fLyAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK" | base64 -d
echo "Modis installer for Raspberry Pi"
echo
echo "Updating system..."
apt-get install sudo
sudo apt-get update -y
sudo apt-get upgrade -y
echo "Done!"
sleep 2
clear
echo "Geting Python and dependencies..."
sudo apt-get install python3 ffmpeg unzip -y
sudo pip install discord.py spotipy google-api-python-client youtube-dl pynacl PyGithub tkinter soundcloud requests lxml praw -y
echo "Done!"
sleep 2
clear
echo "Downloading & installing Modis..."
mkdir $HOME/ModisTemp
cd $HOME/ModisTemp
wget https://github.com/ModisWorks/modis/archive/master.zip
unzip master.zip
mkdir $HOME/Modis
mv $HOME/ModisTemp/modis-master $HOME/Modis
cd $HOME/Modis
rm -r $HOME/ModisTemp
clear
echo "Please enter your bot token (not client ID) and press [ENTER]:"
read token
echo '{
  "log_level": "INFO",
  "keys": {
    "discord_token": "' > data.json
echo $token > data.json
echo '"
  },
  "guilds": {}
}'
