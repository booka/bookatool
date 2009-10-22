
class ClusterTest < ActiveSupport::TestCase
  context "Empty cluster" do
    setup do
      @cluster = Factory(:cluster, :title => 'title')
    end

    should "be a Cluster" do
      assert_equal 'Cluster', @cluster.type
    end


    should "add children" do
      child = Factory(:clip, :title => 'children')
      @cluster.children << child
      assert_equal child, @cluster.children.first
      @cluster.save
      copy = Cluster.find @cluster.id
      assert_equal child, copy.children.first
    end

  end

  context "Cluster with childrens" do
    setup do
      @parent = Factory(:cluster, :title => 'parent')
      1.upto(5) { @parent.children << Factory(:clip)}
    end

    should "retrieve childrens" do
      assert_equal 5, @parent.children.size
    end

    should "add new children" do
      @parent.children << Factory(:clip) << Factory(:clip)
      assert_equal 7, @parent.children.size
    end
  end
end