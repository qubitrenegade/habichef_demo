# habichef_demo/policyfiles/base.rb
name 'base'
# Where to find external cookbooks:
default_source :supermarket

# Environment Attributes
default['resolver'] = {
  'domain' => 'qubitrenegade.com',
  'nameservers' => ['1.1.1.1'],
}

# Your Run List
run_list [
  'resolver::default',
]
