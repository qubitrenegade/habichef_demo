# habichef_demo/policyfiles/us-east-1.rb
name 'us-east-1'

default_source :chef_repo, "../"
include_policy 'base', path: './base.lock.json'

default['resolver']['domain'] = 'us-east-1.qubitrenegade.com'

run_list [
  'resolver::default',
]
