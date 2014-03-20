module HelloBlock::Addresses
  extend self

  RESOURCE = "/addresses"

  def get(address)
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}")
    res["address"]
  end

  def get_transactions(address)
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}/transactions")
    res["transactions"]
  end

  def get_unspents(address)
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}/unspents")
    res["unspents"]
  end

  module Batch
    extend self

    def get(addresses: nil)
      res = HelloBlock::Request.get("#{RESOURCE}", query: {
        addresses: addresses
      })
      res["addresses"]
    end

    def get_transactions(addresses: nil)
      res = HelloBlock::Request.get("#{RESOURCE}/transactions", query: {
        addresses: addresses
      })
      res["transactions"]
    end

    def get_unspents(addresses: nil)
      res = HelloBlock::Request.get("#{RESOURCE}/unspents", query: {
        addresses: addresses
      })
      res["unspents"]
    end
  end

end
