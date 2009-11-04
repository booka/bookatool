require 'test_helper'

class BookaTest < ActiveSupport::TestCase
  context "Booka" do
    should "exist" do
      assert_not_nil Booka.get
    end

    should "have children" do
      assert Booka.get.children?
    end

    should "have projects as children" do
      assert Booka.get.children_types.include('Project')
    end

    should "create projects" do
      p = Booka.projects.create!(:title => 'My project')
      assert_equal Booka.get, p.scope
    end
  end
end


