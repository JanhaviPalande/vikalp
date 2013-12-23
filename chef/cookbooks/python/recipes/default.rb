package "python" do
	version	"2.6.6-51.el6"
	action	:install
end

package "python-pip" do
	action	:install
end

package "python-psycopg2" do
	action	:install
end

package "python-devel" do
	action	:install
end