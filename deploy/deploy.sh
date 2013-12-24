cd ~/
rm -rf vikalp
git clone https://github.com/vikalpindia/vikalp.git
cd vikalp/chef/
if ! type -p chef-solo > /dev/null; then
	sudo bash install.sh
fi
sudo chef solo -j node.json -c solo.rb
cd ../
python manage.py syncdb --noinput
python manage.py migrate
python manage.py loaddata vikalp/fixture/initial_pages.json
bash runserver.sh