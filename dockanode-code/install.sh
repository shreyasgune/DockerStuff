# install pip for 2.7 
curl -o /tmp/ez_setup.py https://bootstrap.pypa.io/ez_setup.py

sudo /usr/bin/python27 /tmp/ez_setup.py 
sudo /usr/bin/easy_install-2.7 pip 
sudo pip install ansible
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose 

# should display current versions:
pip -V 
docker-compose --version

#Create a docker image with our stuff 
sudo docker build -t sgune/dockanode:1 .

#Spin it up
sudo docker-compose -f docker-compose.yml down || true
sudo docker-compose -f docker-compose.yml up -d
