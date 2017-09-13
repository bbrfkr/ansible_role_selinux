# ansible_role_selinux

This is an Ansible role. This role executes selinux setting.

## Processing
This role executes the following settings.

* selinux setting
  * change selinux state 

## Caution!!
* This role reboot target if selinux state of target is changed from Disabled to Enforcing, Permissive or from Enforcing, Permissive to Disabled.

## Support OS

| OS | version |
|----|---------|
|CentOS|7|

## Role variables
```
selinux:
  state: enforcing  # state of selinux (enforcing, permissive or disabled)
```

## Dependencies
None

## Build status
|branch|status|
|------|------|
|master|[![Build Status](http://jenkins.bbrfkr.mydns.jp:8088/job/ansible_role_selinux_master/badge/icon)](http://jenkins.bbrfkr.mydns.jp:8088/job/ansible_role_selinux_master/)|

## Retest
This role is tested by serverspec, then its test codes are included in repository. Users can retest this role by using the test codes. To retest this role, follow the steps described below.

1. Prepare 3 targets (Here, target ips are X.X.X.X, Y.Y.Y.Y, Z.Z.Z.Z)
2. Install serverspec in local machine
3. Modify spec/inventory.yml
```
---
- conn_name: target00  # never change!
  conn_host: X.X.X.X   # target ip
  conn_port: 22        # target's ssh port
  conn_user: vagrant   # user to connect
  conn_pass: vagrant   # password of user
  conn_idkey:          # path of identity key 
                       # (absolute path or relative path from the location of Rakefile)
  sudo_pass:           # sudo password of user

- conn_name: target01  # never change!
  conn_host: Y.Y.Y.Y   # target ip
  conn_port: 22        # target's ssh port
  conn_user: vagrant   # user to connect
  conn_pass: vagrant   # password of user
  conn_idkey:          # path of identity key 
                       # (absolute path or relative path from the location of Rakefile)
  sudo_pass:           # sudo password of user

- conn_name: target05  # never change!
  conn_host: Z.Z.Z.Z   # target ip
  conn_port: 22        # target's ssh port
  conn_user: vagrant   # user to connect
  conn_pass: vagrant   # password of user
  conn_idkey:          # path of identity key 
                       # (absolute path or relative path from the location of Rakefile)
  sudo_pass:           # sudo password of user
```

4. Run `rake`

## License
MIT

## Author
Name: bbrfkr  
MAIL: bbrfkr@gmail.com

