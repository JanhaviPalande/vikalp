package "ntp"

service "ntpd" do
	action [:disable, :stop]
end