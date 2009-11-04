require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  context "Creating projects" do
    should "become a Booka project after save" do
      assert_equal 0, Booka.get.projects.size
      project = Factory :project
      project.save
      assert_equal 1, Booka.get.projects.size
    end
  end

  context "Project" do
    setup do
      @project = Factory :project
    end


    should "be a project" do
      assert_equal 'Project', @project.type
    end

    should "have tags" do
      assert_not_nil @project.tags
    end

#    should "create tags" do
#      tag = @project.tags.create(:title => 'my tag')
#      assert_equal @project.id, tag.scope_id
#    end
  end
end
