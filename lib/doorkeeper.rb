require 'json'
require 'excon'
require 'signature'

module Doorkeeper
  extend self

  def fetch_data
    res = Excon.post(host, query: params)
    JSON.load(res.body)
  end

  private

  def params
    request = Signature::Request.new('POST', '/', {})
    token = Signature::Token.new(auth_key, auth_secret)

    request.sign(token)
  end

  def host
    ENV['DOORKEEPER_HOST'] or raise RuntimeError
  end

  def auth_key
    ENV['DOORKEEPER_AUTH_KEY'] or raise RuntimeError
  end

  def auth_secret
    ENV['DOORKEEPER_AUTH_SECRET'] or raise RuntimeError
  end
end
