require_relative 'helper'
require 'catalog'

class TestCatalog < Minitest::Test
  def test_returns_all
    catalogs = Catalog.all
    refute_empty catalogs
    catalogs.each { |catalog| assert_kind_of Catalog, catalog }
  end
end
