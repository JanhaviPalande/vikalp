cd ~/
rm -rf vikalp
git clone git@github.com:vikalpindia/vikalp.git
cd vikalp/chef/
sudo bash install.sh
sudo chef solo -j node.json -c solo.rb
cd ../
python manage.py syncdb --noinput
python manage.py migrate
