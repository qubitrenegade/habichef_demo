# # encoding: utf-8

# Inspec test for habichef_demo

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file '/etc/resolv.conf' do
  its('content') { should match %r{This file is generated by Chef}}
  its('content') { should match %r{nameserver 1\.1\.1\.1}}
end
