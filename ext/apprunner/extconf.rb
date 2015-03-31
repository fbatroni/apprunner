require 'mkmf'

# install chef because it's a dependency
curl -L https://www.opscode.com/chef/install.sh | bash



# This is normally set by calling create_makefile() but we don't need that
# method since we'll provide a dummy Makefile. Without setting this value
# RubyGems will abort the installation.
$makefile_created = true
