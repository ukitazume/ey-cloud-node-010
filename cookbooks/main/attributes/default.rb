default[:owner_name] = node[:users].first[:username]
default[:owner_pass] = node[:users].first[:password]
default[:nodejs] = {:version => "0.10.28"}
