cd /vagrant/chef/
 if ! type -p chef-solo > /dev/null; then
          sudo bash install.sh
fi
sudo chef-solo -j node.json -c solo.rb
cd ../
sudo python manage.py syncdb --noinput
sudo python manage.py migrate
sudo python manage.py loaddata vikalp/fixture/initial_pages.json
