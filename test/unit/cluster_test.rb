require 'test_helper'

class ClusterTest < ActiveSupport::TestCase
  context "projects root" do
    should "create projects cluster" do
      projects = Cluster.root
      assert projects
      assert_equal Cluster, projects.class
      assert_equal 'projects', projects.subtype
    end
  end

  context "basic cluster" do
    should "have children types" do
      cluster = Cluster.new
      cluster.children_types = [:children]
      assert_equal [:children], cluster.children_types
      assert cluster.save
      other = Cluster.find(cluster.id)
      assert_equal [:children], other.children_types
    end
  end
end
