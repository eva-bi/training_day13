#execute "Update timezone" do
#  command "cp -a /usr/share/zoneinfo/#{node[:timezone][:tz]} /etc/localtime"
#end

template "/etc/sysconfig/i18n" do
  source "i18n.erb"
end
