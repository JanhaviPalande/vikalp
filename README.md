[![Build Status](https://snap-ci.com/mpNEDESxQoc5jaG9GpmBiMun2sJ7xPtc4QIQXikLVqg/build_image)](https://snap-ci.com/projects/vikalpindia/vikalp/build_history)

[![Build Status](https://travis-ci.org/vikalpindia/vikalp.png?branch=master)](https://travis-ci.org/vikalpindia/vikalp)

#Vikalp Sangam

Download the vagrant box chef and Setup the vagrant 
```shell
vagrant init chef/debian-7.4
vagrant up
```
ssh to the vagrant - 
```shell
vagrant ssh
```

### Vagrant Setup and Installing Pip Requirements
Go to /vagrant [synced folder](https://docs.vagrantup.com/v2/synced-folders/) , and Clone the Repository
Before running deploy/deploy.sh in the Repository, update the path locations in the setup files.

* change location in deploy/deploy.sh 
* cd location to chef directory /vagrant/vikalp/chef
* update cwd in chef/cookbooks/vikalp/default.rb  to /vagrant/vikalp for installing required pip packages.


### Nginx Setup
Setup Nginx to serve static files :

* conf.d/vikalp.conf alias - change static location /vagrant/vikalp/vikalp/static
* create a file vikalp.conf in etc/nginx/conf.d with the following configuration
```shell
server {
        listen 8080 default;
        server_name _;
        location /static/ {
             # location of vikalp static folder
             alias /vagrant/vikalp/vikalp/static/;
        }
        location / {
                 proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                  proxy_set_header Host $http_host;
                  proxy_pass http://127.0.0.1:8001;
        }
}
 ```
* Include /etc/nginx/conf.d/vikalp.conf;  to take the our config file 

### Running Vikalp

To Run The application:
cd /vagrant/vikalp

* Start the gunicorn server 
```Shell 
gunicorn_django -D -c deploy/gunicorn.conf.py 
```
* Restart the nginx or start the nginx (restart required when there’s a change in the configuration file) 
```Shell
sudo nginx -s stop
sudo nginx```
* Run the django server 
```python 
python manage.py runserver 8001 ```
or run server portNumber (same as proxy pass port if you have configured some other ports)

* From browser hit vagrant-box-ip:8080 to view the vikalp site running.
* To view application in localhost:8080 add port forwarding to config.vm.box in vagrant file
```ruby
config.vm.network "forwarded_port", guest: 8080, host: 8080
```
* Use pep8 and pyflakes to do code style check and conform the guidelines. 