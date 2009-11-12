require 'test_helper'



class BipTest < ActiveSupport::TestCase
  context "a basic bip" do
    should_belong_to :clip
    should_belong_to :child
  end
end
