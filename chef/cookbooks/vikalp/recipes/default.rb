package "npm"

execute "npm install -g less" do
	not_if "ls /usr/bin/lessc"
end

execute "pip install -r requirements.txt" do
  cwd "/vagrant"
end

package "nginx"