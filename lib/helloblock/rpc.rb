module HelloBlock::RPC
  extend self

  def getrawtransaction(queries = {})
    res = HelloBlock::Request.get("getrawtransaction", query: queries)
    res["transactions"]
  end

end
