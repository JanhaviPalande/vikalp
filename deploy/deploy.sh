cd /vagrant/chef/
if ! type -p chef-solo > /dev/null; then
	sudo bash install.sh
fi
sudo chef-solo -j node.json -c solo.rb
cd ../
sudo python manage.py syncdb --noinput
sudo python manage.py migrate
sudo python manage.py loaddata /vagrant/vikalp/fixture/initial_pages.json
sudo python manage.py laoddata /vagrant/initial_user.json
