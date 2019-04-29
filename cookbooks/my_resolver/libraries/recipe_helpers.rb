#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

module MyResolver
  module RecipeHelpers
    def map_nameservers
      node['my_resolver']['nameservers'].select {|k,v| v}.map{|k,v| k}
    end
  end
end
