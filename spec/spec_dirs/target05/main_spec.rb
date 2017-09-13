puts ("==============================")
puts ("Role test")
puts ("selinux: #{ ENV['CONN_NAME'] }")
puts ("==============================")

system("cd spec && rm -rf host_vars")
system("cd spec && cp -r host_vars_dirs/host_vars_01 host_vars")
system("cd spec && ansible-playbook -i inventory site.yml")
sleep 5

require 'spec_helper'
file_dir = File.dirname(__FILE__)

require "#{ file_dir }/selinux.rb"
