require 'test_helper'

class ClipTest < ActiveSupport::TestCase

  context "clip relations" do
    setup { @clip = Clip.new}

    should "have relations" do
      child = Content.build(:tag)
      @clip.clips << child
      assert_equal 1, @clip.clips.size
      assert_equal child, @clip.clips.first
      @clip.save
      copy = Clip.find @clip.id
      assert_equal 1, copy.clips.size
      assert_equal child, copy.clips.first
    end

    should "have different relations list" do
      @clip.clips << Content.build(:tag)
      @clip.clips << Content.build(:comment)
      #assert_equal 1, @clip.clips.grouped_by(:tag).size
      #assert_equal 1, @clip.clips.grouped_by(:comment).size
      @clip.save
      assert_equal 1, @clip.clips.grouped_by(:tag).size
      assert_equal 1, @clip.clips.grouped_by(:comment).size
    end

  end

end
