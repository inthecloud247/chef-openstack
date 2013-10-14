%w[apache2 libapache2-mod-wsgi openstack-dashboard memcached python-memcache node-less].each do |pkg|
	package pkg do
		action :install
	end
end

%w[apache2 memcached].each do |srv| 
	service srv do
		action :nothing
	end
end

package "openstack-dashboard-ubuntu-theme" do
	action :purge
end

template "/etc/openstack-dashboard/local_settings.py" do
	source "horizon/local_settings.py.erb"
	owner "root"
	group "root"
	mode 00644
	notifies :restart, resources(:service => "apache2"), :immediately
	notifies :restart, resources(:service => "memcached"), :immediately
end


