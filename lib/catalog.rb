require 'virtus'
require 'doorkeeper'
require 'marketplace'

class Catalog
  include Virtus.model

  attribute :aws_access_key_id, String
  attribute :aws_secret_key, String
  attribute :merchant_id, String
  attribute :marketplace, Marketplace

  class << self
    extend Forwardable
    include Enumerable

    def_delegator :@data, :each
    alias :all :to_a
  end

  @data = Doorkeeper.fetch_data.map { |hsh| new(hsh) }
end
