require 'test_helper'

class FactoriesTest < Test::Unit::TestCase
  context "cluster registry" do
    setup { @registry = Factories::Registry.new}

    should "register and use factories" do
      @registry.register(:clip, :simple) do |clip|
        clip.subtype = "simple"
      end

      assert @registry.knows?(:simple)
      model = @registry.build(:simple)
      assert model
      assert_equal Clip, model.class
      assert_equal 'simple', model.subtype
    end

  end

end