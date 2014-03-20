module HelloBlock::Addresses
  extend self

  RESOURCE = "/addresses"

  def get(address)
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}")
    res["address"]
  end

  def get_transactions(address, queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}/transactions", query: queries)
    res["transactions"]
  end

  def get_unspents(address, queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}/#{address}/unspents", query: queries)
    res["unspents"]
  end

  module Batch
    extend self

    def get(queries = {})
      res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
      res["addresses"]
    end

    def get_transactions(queries = {})
      res = HelloBlock::Request.get("#{RESOURCE}/transactions", query: queries)
      res["transactions"]
    end

    def get_unspents(queries = {})
      res = HelloBlock::Request.get("#{RESOURCE}/unspents", query: queries)
      res["unspents"]
    end
  end

end
