#!/usr/bin/env bats

@test "rs_monitoring:state=active is present" {
  grep '"rs_monitoring:state=active"' /vagrant/cache_dir/machine_tag_cache/`hostname -s`/tags.json
}
