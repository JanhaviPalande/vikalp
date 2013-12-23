package "npm"

execute "npm install -g less"

execute "pip install -r requirements.txt" do
  cwd "/vagrant"
end