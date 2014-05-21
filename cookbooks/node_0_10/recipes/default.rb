if app_server?

  # create new nodejs_available_versions_json
  template "/opt/nodejs/nodejs_available_versions.json" do
    source 'nodejs_available_versions.json'
    owner node[:owner_name]
    group node[:owner_name]
    backup false
    mode 0644
    variables({
      :version  => node[:nodejs][:version]
    })
  end

  link "/opt/nodejs/current" do
    to "/opt/nodejs/#{node[:nodejs][:version]}"
  end

  link "/usr/bin/node" do
    to "/opt/nodejs/current/bin/node"
  end

  link "/usr/bin/npm" do
    to "/opt/nodejs/current/bin/npm"
  end
end
