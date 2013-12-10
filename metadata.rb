name             'rs-machine_tag'
maintainer       'RightScale, Inc.'
maintainer_email 'cookbooks@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rs-machine_tag'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'machine_tag'
depends 'marker'

recipe 'rs-machine_tag::default', 'Tags a server with the standard RightScale server tags'
recipe 'rs-machine_tag::monitoring', 'Tags a server with the RightScale monitoring server tag'
