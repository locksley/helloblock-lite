module HelloBlock::Transaction
  extend self

  RESOURCE = "/transactions"

  def get(tx_hash)
    res = HelloBlock::Request.get("#{RESOURCE}/#{tx_hash}")
    res["transaction"]
  end

  def propagate(body = {})
    res = HelloBlock::Request.post("#{RESOURCE}", body: body)
    res["transaction"]
  end

  module Batch
    extend self

    def get(queries = {})
      res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
      res["transactions"]
    end

  end
end
