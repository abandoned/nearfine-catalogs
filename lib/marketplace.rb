require 'virtus'

class Marketplace
  include Virtus.model

  attribute :id, String
  attribute :country_code, String
  attribute :currency_code, String
  attribute :language_code, String
  attribute :hostname, String
end
