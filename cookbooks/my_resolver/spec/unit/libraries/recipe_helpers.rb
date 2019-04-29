require 'spec_helper'

describe MyResolver::RecipeHelpers do
  subject do
    Object.new.extend(described_class)
  end

  before do
    subject.define_singleton_method(:node) do
      {
        'my_resolver' => {
          'nameservers' => {
            '1.1.1.1' => true,
            '0.0.0.0' => false,
            '8.8.8.8' => true,
            '9.9.9.9' => false,
          }
        }
      }
    end
  end

  describe "#map_resolvers" do
    it "activates the turbo boost" do
      expect(subject.map_nameservers).to match_array ['1.1.1.1', '8.8.8.8']
    end
  end
end
