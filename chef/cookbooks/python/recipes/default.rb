remote_file "/tmp/epel-release-6-8.noarch.rpm" do
      action :create_if_missing
      source "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm"
      not_if "rpm -qa | grep -qx 'epel'"
end

rpm_package "/tmp/epel-release-6-8.noarch.rpm" do
	action :install
end

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