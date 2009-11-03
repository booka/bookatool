require 'test_helper'

class BagTest < ActiveSupport::TestCase
  context "basic Bag" do
    setup { @bag = Factory(:bag)}


    should "have childrens" do
      @bag.children = Factory(:media)
      test_equal 1, @bag.children.size
    end
  end


end
