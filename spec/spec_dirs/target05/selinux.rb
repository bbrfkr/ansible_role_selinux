describe ("check selinux mode is enforcing") do
  describe command("getenforce") do
    its(:stdout) { should match /Enforcing/ }
  end
end
