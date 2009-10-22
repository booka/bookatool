require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  should_validate_presence_of :title

  context "Clip with no childrens" do
    setup do
      @clip = Factory(:clip, :title => 'title')
    end

    should "be on the database with factory girl" do
      assert_equal 1, Clip.all.size
    end


    should "have title" do
      assert_equal "title", @clip.title
    end
  end
  
  context "Empty cluster" do
    setup do
      @cluster = Factory(:clip, :title => 'title', :content_type => 'cluster')
    end

    should "be able to add childrens to itself" do
      child = Factory(:clip, :title => 'children')
      @cluster.children << child
      assert_equal child, @cluster.children.first
      @cluster.save
      assert_equal "#{child.id}", @cluster.content
    end

    should "assign content" do
      child = Factory(:clip)
      @cluster.content = "#{child.id}"
      assert_equal child, @cluster.children.first
    end
  end

  context "Cluster with childrens" do
    setup do
      @children = Array.new(5).map { Factory(:clip) }
      ids = @children.map(&:id).join(',')
      @parent = Factory(:clip, :title => 'parent', :content => ids)
    end

    should "have two childrens" do
      assert_equal 5, @parent.children.size
    end

    should "be able to retrieve childrens" do
      @children.each_index do |index|
        assert_equal @children[index], @parent.children[index]
      end
    end

    should "add new children" do
      @parent.children << Factory(:clip) << Factory(:clip)
      assert_equal 7, @parent.children.size
    end
  end
end
