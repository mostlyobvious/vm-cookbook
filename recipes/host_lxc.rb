include_recipe 'vm::host'

packages = %w(lxc)
packages.each do |name|
  package name
end

directory node.vm.lxc.root do
  owner 'root'
  group 'root'
  mode  '755'
end
