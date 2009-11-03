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
  end

  context "Tagging clips" do
    setup { @clip = Factory(:clip)}

    should "add a tag" do
      assert_equal 0, @clip.tags.size
      @clip.tags << Factory(:tag)
      assert_equal 1, @clip.tags.size
    end
  end

  context "Commenting clips" do
    setup { @clip = Factory(:clip)}

    should "add a comment" do
      assert_equal 0, @clip.comments.size
      @clip.comments << Factory(:comment)
      assert_equal 1, @clip.comments.size
    end
  end
  
end
