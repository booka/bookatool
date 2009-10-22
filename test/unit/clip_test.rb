require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  should_validate_presence_of :title

  context "Basic clip" do
    setup do
      @clip = Factory(:clip, :title => 'title')
    end

    should "have title" do
      assert_equal "title", @clip.title
    end

    should "add a tag" do
    end
  end
  
end
