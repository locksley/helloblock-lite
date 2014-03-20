module HelloBlock::Faucet
  extend self

  RESOURCE = "/faucet"

  def unspents(queries = {})
    res = HelloBlock::Request.get("#{RESOURCE}", query: queries)
    res
  end

  def withdrawal(queries = {})
    res = HelloBlock::Request.post("#{RESOURCE}", body: queries)
    res["transaction"]
  end

end
