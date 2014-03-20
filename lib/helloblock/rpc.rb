module HelloBlock::RPC
  extend self

  def getrawtransaction(tx_hash)
    res = HelloBlock::Request.get("getrawtransaction", query: {
      tx_hashes: [tx_hash]
    })
    res["transactions"][0]
  end

  module Batch
    extend self

    def getrawtransaction(tx_hashes)
      res = HelloBlock::Request.get("getrawtransaction", query: {
        tx_hashes: tx_hashes
      })
      res["transactions"]
    end
  end

end
