node[:deploy].each do |application, deploy|
  next unless deploy[:application_type]

  directory "#{deploy[:deploy_to]}/shared/data" do
    group deploy[:group]
    owner deploy[:user]
    mode 0775
    action :create
    recursive true
  end

  remote_file "#{deploy[:deploy_to]}/shared/data/#{node[:geoip_db][:name]}.gz" do
    source node[:geoip_db][:url]
    action :create_if_missing
    group deploy[:group]
    owner deploy[:user]
    mode 0775
  end

  execute "unzip #{node[:geoip_db][:name]}.gz" do
    command "gzip -d #{deploy[:deploy_to]}/shared/data/#{node[:geoip_db][:name]}.gz"
    creates "#{deploy[:deploy_to]}/shared/data/#{node[:geoip_db][:name]}"
    action :run
    user deploy[:user]
    group deploy[:group]
  end
end

