require_relative 'helper'
require 'catalog'

class TestCatalog < Minitest::Test
  def test_returns_all
    refute_empty Catalog.all
    Catalog.all.each { |catalog| assert_kind_of Catalog, catalog }
  end
end
