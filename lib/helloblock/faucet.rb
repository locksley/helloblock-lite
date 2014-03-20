module HelloBlock::Faucet
  extend self

  RESOURCE = "/faucet"

  def unspents(queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
    res["address"]
  end

  def withdrawal(queries = {})
    res = HelloBlock::Request.post("#{RESOURCE}", body: queries)
    res["transaction"]
  end

end
