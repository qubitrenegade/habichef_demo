# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

Dir['libraries/*.rb'].each { |f| require File.expand_path(f) }
at_exit { ChefSpec::Coverage.report! }
