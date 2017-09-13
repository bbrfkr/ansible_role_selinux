describe ("check selinux mode is disabled") do
  describe command("getenforce") do
    its(:stdout) { should match /Disabled/ }
  end
end
