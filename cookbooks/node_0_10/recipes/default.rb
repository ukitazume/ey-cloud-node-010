if app_server?

  enable_package "net-libs/nodejs" do
    version "0.10.28"
  end

  package "net-libs/nodejs" do
    version "0.10.28"
    action :install
  end

  execute "select nodejs version" do
    command "eselect nodejs set 0.10.28"
    action :nothing
  end 

end
