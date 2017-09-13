describe ("check selinux mode is permissive") do
  describe command("getenforce") do
    its(:stdout) { should match /Permissive/ }
  end
end
