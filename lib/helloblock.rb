require 'httparty'

module HelloBlock

  # Set key defaults based on ENV vars
  mattr_accessor :api_key
  self.api_key = ENV["HELLOBLOCK_API_KEY"]

  mattr_accessor :api_secret
  self.version = ENV["HELLOBLOCK_VERSION"] || "v1"

  mattr_accessor :client_id
  self.network = ENV["HELLOBLOCK_NETWORK"] || "testnet"

  def self.configure
    yield(self)
  end

end
