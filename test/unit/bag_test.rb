require 'test_helper'

class BagTest < ActiveSupport::TestCase
  context "basic Bag" do
    setup { @bag = Factory(:bag)}

    should "have children" do
      @bag.children << Factory(:media)
      assert_equal 1, @bag.children.size
    end

    should "differenciate between children and tags or messages" do
      @bag.tags << Factory(:tag)
      @bag.comments << Factory(:comment)
      @bag.children << Factory(:media)

      assert_equal 1, @bag.tags.size
      assert_equal 1, @bag.comments.size
      assert_equal 1, @bag.children.size
    end
  end


end
