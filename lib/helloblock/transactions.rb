module HelloBlock::Transactions
  extend self

  RESOURCE = "/transactions"

  def get(tx_hash)
    res = HelloBlock::Request.get("#{RESOURCE}/#{tx_hash}")
    res["transaction"]
  end

  def propagate(raw_tx_hex)
    res = HelloBlock::Request.post("#{RESOURCE}", body: {
      rawTxHex: raw_tx_hex
    })
    res["transaction"]
  end

  module Batch
    extend self

    def get(tx_hashes: nil)
      res = HelloBlock::Request.get("#{RESOURCE}", query: {
        tx_hashes: tx_hashes
      })
      res["transactions"]
    end

end
