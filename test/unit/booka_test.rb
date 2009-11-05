require 'test_helper'

class BookaTest < ActiveSupport::TestCase
  context "Booka" do
    setup { @booka = Booka.get }

    should "exist" do
      assert_not_nil Booka.get
    end

    should "have children" do
      assert @booka.children?
    end

    should "have projects as children" do
      assert @booka.children_types.include?('Project')
    end
  end
end


