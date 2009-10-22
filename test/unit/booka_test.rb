require 'test_helper'

class BookaTest < ActiveSupport::TestCase
  context "Booka" do
    should "exist" do
      assert_not_nil Booka.get
    end
  end
end
