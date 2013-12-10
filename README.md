# rs-machine_tag cookbook

[![Build Status](https://travis-ci.org/rightscale-cookbooks/rs-machine_tag.png?branch=master)](https://travis-ci.org/rightscale-cookbooks/rs-machine_tag)

This cookbook provides recipes and library methods for dealing with machine tags
in RightScale. It builds on the resources and library methods in the
[machine_tag] cookbook and provides a higher level set of functionality dealing
specifically with RightScale. In the future it will include support for defining
a 3-tier web application architecture on RightScale with machine tags.

# Requirements

* Chef 11 or above
* [machine_tag] cookbook
* [marker] cookbook

[machine_tag]: https://github.com/rightscale-cookbooks/machine_tag
[marker]: https://github.com/rightscale-cookbooks/marker

# Usage

# Attributes

# Recipes

## default

Sets the standard machine tags for a RightScale server which are `server:uuid`, `server:public_ip_X`, `server:private_ip_X` (where `X` is `0`, `1`, etc.).

## monitoring

Sets the standard machine tag to enable RightScale monitoring which is `rs_monitoring:state=active`. This should only be set when `collectd` or equivalent is sending data to RightScale (for more information see [rs-base]).

[rs-base]: https://github.com/rightscale-cookbooks/rs-base

# Author

Author:: RightScale, Inc. (<cookbooks@rightscale.com>)
