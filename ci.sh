cd chef/
if ! type -p chef-solo > /dev/null; then
	sudo bash install.sh
fi
sudo chef-solo -j node.json -c solo.rb
cd ../
sudo pip install -r requirements.txt
sudo python manage.py  syncdb --noinput --settings=vikalp.local_settings
sudo python manage.py test vikalp --settings=vikal.local_settings
