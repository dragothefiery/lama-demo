require 'test_helper'
require 'generators/shop/shop_generator'

class ShopGeneratorTest < Rails::Generators::TestCase
  tests ShopGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
