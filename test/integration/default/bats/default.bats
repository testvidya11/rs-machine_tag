#!/usr/bin/env bats

@test "server:uuid tag is present" {
  grep '"server:uuid=01-ABCDEFG123456"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}

@test "server:public_ip_0 tag is present and set correctly" {
  grep '"server:public_ip_0=33\.33\.33\.10"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}

@test "no other server:public_ip_X tags are present" {
  ! grep '"server:public_ip_[1-9]=[^"]*"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}

@test "server:private_ip_0 tag is present and set correctly" {
  grep '"server:private_ip_0=10\.0\.2\.15"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}

@test "no other server:private_ip_X tags are present" {
  ! grep '"server:private_ip_[1-9]=[^"]*"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}
