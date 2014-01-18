include_recipe 'vm::host'

packages = %w(qemu-kvm libvirt-bin)
packages.each do |name|
  package name
end

directory node.vm.kvm.root do
  owner 'root'
  group 'root'
  mode  '755'
end
