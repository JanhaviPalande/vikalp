package "npm"

execute "npm install -g less" do
	not_if "ls /usr/bin/lessc"
end

package "zlib-devel"
package "libjpeg-devel"
package "freetype-devel"

execute "sudo ln -s /usr/lib64/libjpeg.so /usr/lib" do
	not_if do ::File.exists?('/usr/lib/libjpeg.so') end
end

execute "pip install -r requirements.txt" do
	cwd "/home/user/vikalp"
end

package "nginx"