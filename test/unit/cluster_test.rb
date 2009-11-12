require 'test_helper'

class ClusterTest < ActiveSupport::TestCase
  context "projects root" do
    should "create projects cluster" do
      projects = Cluster.root
      assert projects
      assert_equal 'projects', projects.subtype
    end
  end
end
