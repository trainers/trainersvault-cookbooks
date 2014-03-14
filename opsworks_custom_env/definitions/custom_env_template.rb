# Accepts:
#   application (application name)
#   deploy (hash of deploy attributes)
#   env (hash of custom environment settings)
# 
# Notifies a "restart Rails app <name>" resource.

define :custom_env_template do
  Chef::Log.debug("Creating custom_env template definition with: #{params.inspect}")

  application = params[:application]
  deploy = params[:deploy]

  template "#{deploy['deploy_to']}/shared/config/.env" do
    source "dot_env.erb"
    owner deploy['user']
    group deploy['group']
    mode "0660"
    variables :env => params[:env] || {}
    notifies :run, resources(:execute => "restart Rails app #{params[:application]}")

    only_if { File.exists?("#{deploy['deploy_to']}/shared/config") }
  end

end
