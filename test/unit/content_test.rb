require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  context "content factories" do
    should "create tags" do
      tag = Content.build(:tag)
      assert tag
      assert_equal Content, tag.class
      assert_equal 'tag', tag.subtype
    end
  end
end
