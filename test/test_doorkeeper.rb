require_relative 'helper'
require 'doorkeeper'

class TestDoorkeeper < Minitest::Test
  def test_fetches_data
    Excon.stub({}, { body: %q([{"foo":"bar"}]) })
    refute_empty Doorkeeper.fetch_data
    Excon.stubs.clear
  end
end
