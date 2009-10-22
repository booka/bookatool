require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  should_validate_presence_of :title

  context "Basic clip" do
    setup do
      @clip = Factory(:clip, :title => 'title')
      @clip.save
    end

    should "be on the database with factory girl" do
      assert_equal 1, Clip.all.size
    end

    should "have title" do
      assert_equal "title", @clip.title
    end
  end
  
end
